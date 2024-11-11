// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to specify criteria for event notifications.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  THelperMethods10 = class
    class function ObjectTypeIds_BaseEventType: _UANodeId; static;
    class function UABaseEventObject_Operands_EventId: _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_EventType: _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_NodeId: _UASimpleAttributeOperand; static;
    class function UAFilterElements_SimpleAttribute(TypeId: _UANodeId; simpleRelativeBrowsePathString: string): _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_SourceName: _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_Time: _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_ReceiveTime: _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_LocalTime: _UASimpleAttributeOperand;
    class function UABaseEventObject_Operands_SourceNode: _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_Message: _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_Severity: _UASimpleAttributeOperand; static;
    class function UABaseEventObject_AllFields: _UAAttributeFieldCollection; static;
  end;

type
  TClientEventHandlers10 = class
    procedure Client_EventNotification(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyUAEventNotificationEventArgs);
  end;

procedure TClientEventHandlers10.Client_EventNotification(
  ASender: TObject;
  sender: OleVariant;
  const eventArgs: _EasyUAEventNotificationEventArgs);
begin
  // Display the event
  WriteLn(eventArgs.ToString);
end;

class procedure WhereClause.Main;
const
  UAObjectIds_Server = 'nsu=http://opcfoundation.org/UA/;i=2253';
var
  Arguments: OleVariant;
  Client: TEasyUAClient;
  ClientEventHandlers: TClientEventHandlers10;
  Element1, Element2: _UAContentFilterElement;
  EndpointDescriptor: string;
  EventFilter: _UAEventFilter;
  MonitoredItemArguments: _EasyUAMonitoredItemArguments;
  MonitoringParameters: _UAMonitoringParameters;
  Operand1, Operand3: _UASimpleAttributeOperand;
  Operand2, Operand4: _UALiteralOperand;
  SourceNodeId: _UANodeId;
  WhereClause: _UAContentFilterElement;
begin
  EndpointDescriptor := 'opc.tcp://opcua.demo-this.com:62544/Quickstarts/AlarmConditionServer';

  // Instantiate the client object and hook events
  Client := TEasyUAClient.Create(nil);
  ClientEventHandlers := TClientEventHandlers10.Create;
  Client.OnEventNotification := ClientEventHandlers.Client_EventNotification;

  WriteLn('Subscribing...');

  WhereClause := CoUAContentFilterElement.Create;

  // Either the severity is >= 500, or the event comes from a specified source node
  Operand1 := THelperMethods10.UABaseEventObject_Operands_Severity;
  Operand2 := CoUALiteralOperand.Create;
  Operand2.Value := 500;
  Element1 := CoUAContentFilterElement.Create;
  Element1.FilterOperator := UAFilterOperator_GreaterThanOrEqual;
  Element1.FilterOperands.Add(Operand1);
  Element1.FilterOperands.Add(Operand2);
  Operand3 := THelperMethods10.UABaseEventObject_Operands_SourceNode;
  SourceNodeId := CoUANodeId.Create;
  SourceNodeId.ExpandedText := 'nsu=http://opcfoundation.org/Quickstarts/AlarmCondition;ns=2;s=1:Metals/SouthMotor';
  Operand4 := CoUALiteralOperand.Create;
  Operand4.Value := SourceNodeId;
  Element2 := CoUAContentFilterElement.Create;
  Element2.FilterOperator := UAFilterOperator_Equals;
  Element2.FilterOperands.Add(Operand3);
  Element2.FilterOperands.Add(Operand4);
  WhereClause.FilterOperator := UAFilterOperator_Or;
  WhereClause.FilterOperands.Add(Element1);
  WhereClause.FilterOperands.Add(Element2);

  EventFilter := CoUAEventFilter.Create;
  EventFilter.SelectClauses := THelperMethods10.UABaseEventObject_AllFields;
  EventFilter.WhereClause := WhereClause;

  MonitoringParameters := CoUAMonitoringParameters.Create;
  MonitoringParameters.SamplingInterval := 1000;
  MonitoringParameters.EventFilter := EventFilter;
  MonitoringParameters.QueueSize := 1000;

  MonitoredItemArguments := CoEasyUAMonitoredItemArguments.Create;
  MonitoredItemArguments.EndpointDescriptor.UrlString := 'opc.tcp://opcua.demo-this.com:62544/Quickstarts/AlarmConditionServer';
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


class function THelperMethods10.ObjectTypeIds_BaseEventType: _UANodeId;
  var NodeId: _UANodeId;
  begin
    NodeId := CoUANodeId.Create;
    NodeId.StandardName := 'BaseEventType';
    Result := NodeId;
  end;

class function THelperMethods10.UAFilterElements_SimpleAttribute(TypeId: _UANodeId; simpleRelativeBrowsePathString: string): _UASimpleAttributeOperand;
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

class function THelperMethods10.UABaseEventObject_Operands_EventId: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/EventId');
end;

class function THelperMethods10.UABaseEventObject_Operands_EventType: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/EventType');
end;

class function THelperMethods10.UABaseEventObject_Operands_NodeId: _UASimpleAttributeOperand;
var
  Operand: _UASimpleAttributeOperand;
begin
  Operand := CoUASimpleAttributeOperand.Create;
  Operand.TypeId.NodeId.StandardName := 'BaseEventType';
  Operand.AttributeId := UAAttributeId_NodeId;
  Result := Operand;
end;

class function THelperMethods10.UABaseEventObject_Operands_SourceNode: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/SourceNode');
end;

class function THelperMethods10.UABaseEventObject_Operands_SourceName: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/SourceName');
end;

class function THelperMethods10.UABaseEventObject_Operands_Time: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/Time');
end;

class function THelperMethods10.UABaseEventObject_Operands_ReceiveTime: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/ReceiveTime');
end;

class function THelperMethods10.UABaseEventObject_Operands_LocalTime: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/LocalTime');
end;

class function THelperMethods10.UABaseEventObject_Operands_Message: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/Message');
end;

class function THelperMethods10.UABaseEventObject_Operands_Severity: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/Severity');
end;

class function THelperMethods10.UABaseEventObject_AllFields: _UAAttributeFieldCollection;
var
  Fields: _UAAttributeFieldCollection;
begin
  Fields := CoUAAttributeFieldCollection.Create;
  Fields.Add(UABaseEventObject_Operands_NodeId.ToUAAttributeField);
  Fields.Add(UABaseEventObject_Operands_EventId.ToUAAttributeField);
  Fields.Add(UABaseEventObject_Operands_EventType.ToUAAttributeField);
  Fields.Add(UABaseEventObject_Operands_SourceNode.ToUAAttributeField);
  Fields.Add(UABaseEventObject_Operands_SourceName.ToUAAttributeField);
  Fields.Add(UABaseEventObject_Operands_Time.ToUAAttributeField);
  Fields.Add(UABaseEventObject_Operands_ReceiveTime.ToUAAttributeField);
  Fields.Add(UABaseEventObject_Operands_LocalTime.ToUAAttributeField);
  Fields.Add(UABaseEventObject_Operands_Message.ToUAAttributeField);
  Fields.Add(UABaseEventObject_Operands_Severity.ToUAAttributeField);

  Result := Fields;
end;

//#endregion Example
