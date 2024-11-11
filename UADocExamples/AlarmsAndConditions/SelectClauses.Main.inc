// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to select fields for event notifications.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  THelperMethods17 = class
    class function ObjectTypeIds_BaseEventType: _UANodeId; static;
    class function UABaseEventObject_Operands_NodeId: _UASimpleAttributeOperand;
    class function UAFilterElements_SimpleAttribute(TypeId: _UANodeId; simpleRelativeBrowsePathString: string): _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_SourceName: _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_Time: _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_SourceNode: _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_Message: _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_Severity: _UASimpleAttributeOperand; static;
  end;

type
  TClientEventHandlers17 = class
    procedure Client_EventNotification(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyUAEventNotificationEventArgs);
  end;

procedure TClientEventHandlers17.Client_EventNotification(
  ASender: TObject;
  sender: OleVariant;
  const eventArgs: _EasyUAEventNotificationEventArgs);
var
  AttributeField: OleVariant;
  Count: Cardinal;
  Element: OleVariant;
  EntryEnumerator: IEnumVARIANT;
  ValueResult: OleVariant;
begin
  WriteLn;

  // Display the event
  if eventArgs.EventData = nil then
  begin
    WriteLn(eventArgs.ToString);
    Exit;
  end;

  WriteLn('All fields:');

  EntryEnumerator := eventArgs.EventData.FieldResults.GetEnumerator;
  while (EntryEnumerator.Next(1, Element, Count) = S_OK) do
  begin
    AttributeField := IUnknown(Element.Key) as _UAAttributeField;
    ValueResult := IUnknown(Element.Value) as _ValueResult;
    WriteLn(' ', AttributeField.ToString, ' -> ', ValueResult.ToString);
  end;

  // Extracting specific fields using an event type ID and a simple relative path
  WriteLn('Source name: ', eventArgs.EventData.FieldResults.Item[THelperMethods17.UABaseEventObject_Operands_SourceName.ToUAAttributeField].ToString);
  WriteLn('Message: ', eventArgs.EventData.FieldResults.Item[THelperMethods17.UABaseEventObject_Operands_Message.ToUAAttributeField].ToString);
end;

class procedure SelectClauses.Main;
const
  UAObjectIds_Server = 'nsu=http://opcfoundation.org/UA/;i=2253';
var
  Arguments: OleVariant;
  Client: TEasyUAClient;
  ClientEventHandlers: TClientEventHandlers17;
  EndpointDescriptor: string;
  EventFilter: _UAEventFilter;
  MonitoredItemArguments: _EasyUAMonitoredItemArguments;
  MonitoringParameters: _UAMonitoringParameters;
  SelectClauses: UAAttributeFieldCollection;
begin
  EndpointDescriptor := 'opc.tcp://opcua.demo-this.com:62544/Quickstarts/AlarmConditionServer';

  // Instantiate the client object and hook events
  Client := TEasyUAClient.Create(nil);
  ClientEventHandlers := TClientEventHandlers17.Create;
  Client.OnEventNotification := ClientEventHandlers.Client_EventNotification;

  WriteLn('Subscribing...');

  SelectClauses := CoUAAttributeFieldCollection.Create;
  // Select specific fields using an event type ID and a simple relative path
  SelectClauses.Add(THelperMethods17.UABaseEventObject_Operands_NodeId.ToUAAttributeField);
  SelectClauses.Add(THelperMethods17.UABaseEventObject_Operands_SourceNode.ToUAAttributeField);
  SelectClauses.Add(THelperMethods17.UABaseEventObject_Operands_SourceName.ToUAAttributeField);
  SelectClauses.Add(THelperMethods17.UABaseEventObject_Operands_Time.ToUAAttributeField);
  SelectClauses.Add(THelperMethods17.UABaseEventObject_Operands_Message.ToUAAttributeField);
  SelectClauses.Add(THelperMethods17.UABaseEventObject_Operands_Severity.ToUAAttributeField);

  EventFilter := CoUAEventFilter.Create;
  EventFilter.SelectClauses := SelectClauses;

  MonitoringParameters := CoUAMonitoringParameters.Create;
  MonitoringParameters.SamplingInterval := 1000;
  MonitoringParameters.EventFilter := EventFilter;
  MonitoringParameters.QueueSize := 1000;

  MonitoredItemArguments := CoEasyUAMonitoredItemArguments.Create;
  MonitoredItemArguments.EndpointDescriptor.UrlString := EndpointDescriptor;
  MonitoredItemArguments.NodeDescriptor.NodeId.StandardName := 'Server';
  MonitoredItemArguments.MonitoringParameters := MonitoringParameters;
  //MonitoredItemArguments.SubscriptionParameters.PublishingInterval := 0;
  MonitoredItemArguments.AttributeId := UAAttributeId_EventNotifier;

  Arguments := VarArrayCreate([0, 0], varVariant);
  Arguments[0] := MonitoredItemArguments;

  Client.SubscribeMultipleMonitoredItems(Arguments);

  WriteLn('Processing event notifications for 30 seconds...');
  PumpSleep(30*1000);

  WriteLn('Unsubscribing...');
  Client.UnsubscribeAllMonitoredItems;

  WriteLn('Waiting for 5 seconds...');
  Sleep(5*1000);

  WriteLn('Finished.');
  VarClear(Arguments);
  FreeAndNil(Client);
  FreeAndNil(ClientEventHandlers);
end;


class function THelperMethods17.ObjectTypeIds_BaseEventType: _UANodeId;
  var NodeId: _UANodeId;
  begin
    NodeId := CoUANodeId.Create;
    NodeId.StandardName := 'BaseEventType';
    Result := NodeId;
  end;

class function THelperMethods17.UAFilterElements_SimpleAttribute(TypeId: _UANodeId; simpleRelativeBrowsePathString: string): _UASimpleAttributeOperand;
var
  BrowsePathParser: _UABrowsePathParser;
  Operand: _UASimpleAttributeOperand;
begin
  BrowsePathParser := CoUABrowsePathParser.Create;
  Operand := CoUASimpleAttributeOperand.Create;
  Operand.TypeId.NodeId := TypeId;
  Operand.QualifiedNames := BrowsePathParser.ParseRelative(simpleRelativeBrowsePathString).ToUAQualifiedNameCollection;
  Result := Operand;
end;

class function THelperMethods17.UABaseEventObject_Operands_NodeId: _UASimpleAttributeOperand;
var
  Operand: _UASimpleAttributeOperand;
begin
  Operand := CoUASimpleAttributeOperand.Create;
  Operand.TypeId.NodeId.StandardName := 'BaseEventType';
  Operand.AttributeId := UAAttributeId_NodeId;
  Result := Operand;
end;

class function THelperMethods17.UABaseEventObject_Operands_SourceNode: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/SourceNode');
end;

class function THelperMethods17.UABaseEventObject_Operands_SourceName: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/SourceName');
end;

class function THelperMethods17.UABaseEventObject_Operands_Time: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/Time');
end;

class function THelperMethods17.UABaseEventObject_Operands_Message: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/Message');
end;

class function THelperMethods17.UABaseEventObject_Operands_Severity: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/Severity');
end;

//#endregion Example
