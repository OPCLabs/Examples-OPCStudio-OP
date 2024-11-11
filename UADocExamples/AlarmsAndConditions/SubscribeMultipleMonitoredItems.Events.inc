// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to subscribe to multiple events.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  THelperMethods19 = class
    class function ObjectTypeIds_BaseEventType: _UANodeId; static;
    class function UAFilterElements_SimpleAttribute(TypeId: _UANodeId; simpleRelativeBrowsePathString: string): _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_NodeId: _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_EventId: _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_EventType: _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_SourceNode: _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_SourceName: _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_Time: _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_ReceiveTime: _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_LocalTime: _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_Message: _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_Severity: _UASimpleAttributeOperand; static;
    class function UABaseEventObject_AllFields: _UAAttributeFieldCollection; static;
  end;

type
  TClientEventHandlers19 = class
    procedure Client_EventNotification(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyUAEventNotificationEventArgs);
  end;

procedure TClientEventHandlers19.Client_EventNotification(
  ASender: TObject;
  sender: OleVariant;
  const eventArgs: _EasyUAEventNotificationEventArgs);
begin
  // Display the event
	WriteLn(eventArgs.ToString);
end;


class procedure SubscribeMultipleMonitoredItems.Events;
var
  Arguments: OleVariant;
  Client: TEasyUAClient;
  ClientEventHandlers: TClientEventHandlers19;
  EndpointDescriptor: string;
  EventFilter1, EventFilter2: _UAEventFilter;
  MonitoredItemArguments1, MonitoredItemArguments2: _EasyUAMonitoredItemArguments;
  MonitoringParameters1, MonitoringParameters2: _UAMonitoringParameters;
  Operand11, Operand21: _UASimpleAttributeOperand;
  Operand12, Operand22: _UALiteralOperand;
  ServerNodeId1, ServerNodeId2: _UANodeId;
  SourceNodeId: _UANodeId;
  WhereClause1, WhereClause2: _UAContentFilterElement;
begin
  EndpointDescriptor := 'opc.tcp://opcua.demo-this.com:62544/Quickstarts/AlarmConditionServer';

  // set MonitoredItemArguments1
  // Event filter: The severity is >= 500.
  Operand11 := THelperMethods19.UABaseEventObject_Operands_Severity;
  Operand12 := CoUALiteralOperand.Create;
  Operand12.Value := 500;
  WhereClause1 := CoUAContentFilterElement.Create;
  WhereClause1.FilterOperator := UAFilterOperator_GreaterThanOrEqual;
  WhereClause1.FilterOperands.Add(Operand11);
  WhereClause1.FilterOperands.Add(Operand12);

  EventFilter1 := CoUAEventFilter.Create;
  EventFilter1.SelectClauses := THelperMethods19.UABaseEventObject_AllFields;
  EventFilter1.WhereClause := WhereClause1;

  ServerNodeId1 := CoUANodeId.Create;
  ServerNodeId1.StandardName := 'Server';

  MonitoringParameters1 := CoUAMonitoringParameters.Create;
  MonitoringParameters1.EventFilter := EventFilter1;
  MonitoringParameters1.QueueSize := 1000;
  MonitoringParameters1.SamplingInterval := 1000;

  MonitoredItemArguments1 := CoEasyUAMonitoredItemArguments.Create;
  MonitoredItemArguments1.AttributeId := UAAttributeId_EventNotifier;
  MonitoredItemArguments1.EndpointDescriptor.UrlString := EndpointDescriptor;
  MonitoredItemArguments1.MonitoringParameters := MonitoringParameters1;
  MonitoredItemArguments1.NodeDescriptor.NodeId := ServerNodeId1;
  MonitoredItemArguments1.State := 'firstState';

  // set MonitoredItemArguments2
  // Event filter: The event comes from a specified source node.
  Operand21 := THelperMethods19.UABaseEventObject_Operands_SourceNode;
  SourceNodeId := CoUANodeId.Create;
  SourceNodeId.ExpandedText := 'nsu=http://opcfoundation.org/Quickstarts/AlarmCondition ;ns=2;s=1:Metals/SouthMotor';
  Operand22 := CoUALiteralOperand.Create;
  Operand22.Value := SourceNodeId;
  WhereClause2 := CoUAContentFilterElement.Create;
  WhereClause2.FilterOperator := UAFilterOperator_Equals;
  WhereClause2.FilterOperands.Add(Operand21);
  WhereClause2.FilterOperands.Add(Operand22);

  EventFilter2 := CoUAEventFilter.Create;
  EventFilter2.SelectClauses := THelperMethods19.UABaseEventObject_AllFields;
  EventFilter2.WhereClause := WhereClause2;

  ServerNodeId2 := CoUANodeId.Create;
  ServerNodeId2.StandardName := 'Server';

  MonitoringParameters2 := CoUAMonitoringParameters.Create;
  MonitoringParameters2.EventFilter := EventFilter2;
  MonitoringParameters2.QueueSize := 1000;
  MonitoringParameters2.SamplingInterval := 2000;

  MonitoredItemArguments2 := CoEasyUAMonitoredItemArguments.Create;
  MonitoredItemArguments2.AttributeId := UAAttributeId_EventNotifier;
  MonitoredItemArguments2.EndpointDescriptor.UrlString := EndpointDescriptor;
  MonitoredItemArguments2.MonitoringParameters := MonitoringParameters2;
  MonitoredItemArguments2.NodeDescriptor.NodeId := ServerNodeId2;
  MonitoredItemArguments2.State := 'secondState';


  // Instantiate the client object and hook events
  Client := TEasyUAClient.Create(nil);
  ClientEventHandlers := TClientEventHandlers19.Create;
  Client.OnEventNotification := ClientEventHandlers.Client_EventNotification;

  Arguments := VarArrayCreate([0, 1], varVariant);
  Arguments[0] := MonitoredItemArguments1;
  Arguments[1] := MonitoredItemArguments2;

  WriteLn('Subscribing...');
  Client.SubscribeMultipleMonitoredItems(Arguments);

  WriteLn('Processing monitored item changed events for 30 seconds...');
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

class function THelperMethods19.ObjectTypeIds_BaseEventType: _UANodeId;
  var NodeId: _UANodeId;
  begin
    NodeId := CoUANodeId.Create;
    NodeId.StandardName := 'BaseEventType';
    Result := NodeId;
  end;

class function THelperMethods19.UAFilterElements_SimpleAttribute(TypeId: _UANodeId; simpleRelativeBrowsePathString: string): _UASimpleAttributeOperand;
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

class function THelperMethods19.UABaseEventObject_Operands_NodeId: _UASimpleAttributeOperand;
var
  Operand: _UASimpleAttributeOperand;
begin
  Operand := CoUASimpleAttributeOperand.Create;
  Operand.TypeId.NodeId.StandardName := 'BaseEventType';
  Operand.AttributeId := UAAttributeId_NodeId;
  Result := Operand;
end;

class function THelperMethods19.UABaseEventObject_Operands_EventId: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/EventId');
end;

class function THelperMethods19.UABaseEventObject_Operands_EventType: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/EventType');
end;

class function THelperMethods19.UABaseEventObject_Operands_SourceNode: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/SourceNode');
end;

class function THelperMethods19.UABaseEventObject_Operands_SourceName: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/SourceName');
end;

class function THelperMethods19.UABaseEventObject_Operands_Time: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/Time');
end;

class function THelperMethods19.UABaseEventObject_Operands_ReceiveTime: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/ReceiveTime');
end;

class function THelperMethods19.UABaseEventObject_Operands_LocalTime: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/LocalTime');
end;

class function THelperMethods19.UABaseEventObject_Operands_Message: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/Message');
end;

class function THelperMethods19.UABaseEventObject_Operands_Severity: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/Severity');
end;

class function THelperMethods19.UABaseEventObject_AllFields: _UAAttributeFieldCollection;
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
