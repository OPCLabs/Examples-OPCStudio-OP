// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to acknowledge an OPC UA event.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  THelperMethods11 = class
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
  TClientEventHandlers11 = class
    procedure Client_EventNotification(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyUAEventNotificationEventArgs);
    private
      FAnEvent: Boolean;
      FEventId: OleVariant;
      FNodeId: _UANodeId;
    published
      property AnEvent: Boolean read FAnEvent write FAnEvent;
      property EventId: OleVariant read FEventId;
      property NodeId: _UANodeId read FNodeId;
  end;

procedure TClientEventHandlers11.Client_EventNotification(
  ASender: TObject;
  sender: OleVariant;
  const eventArgs: _EasyUAEventNotificationEventArgs);
var
  BaseEventObject: _UABaseEventObject;
begin
  if not eventArgs.Succeeded then
  begin
    WriteLn(Format('*** Failure: %s', [eventArgs.ErrorMessageBrief]));
    Exit;
  end;

  if eventArgs.EventData <> nil then
  begin
    BaseEventObject := eventArgs.EventData.BaseEvent;
  	WriteLn(BaseEventObject.ToString);

    // Make sure we do not catch the event more than once
    if FAnEvent then
      Exit;

    FNodeId := BaseEventObject.NodeId;
    TVarData(FEventId).VType := varArray or varVariant;
    TVarData(FEventId).VArray := PVarArray(BaseEventObject.EventId);
    FAnEvent := True;
  end;
end;

class procedure Acknowledge.Main;
var
  AlarmsAndConditionsClient: _EasyUAAlarmsAndConditionsClient;
  Arguments: OleVariant;
  Client: TEasyUAClient;
  ClientEventHandlers: TClientEventHandlers11;
  EndpointDescriptor: string;
  EndTime: Cardinal;
  EventFilter: _UAEventFilter;
  MonitoredItemArguments: _EasyUAMonitoredItemArguments;
  MonitoringParameters: _UAMonitoringParameters;
  Operand1: _UASimpleAttributeOperand;
  Operand2: _UALiteralOperand;
  NodeDescriptor: _UANodeDescriptor;
  NodeId: _UANodeId;
  ServerNodeId: _UANodeID;
  WhereClause: _UAContentFilterElement;
begin
  // Define which server we will work with.
  EndpointDescriptor := 'opc.tcp://opcua.demo-this.com:62544/Quickstarts/AlarmConditionServer';

  // Event filter: Events with specific node ID.
  Operand1 := THelperMethods11.UABaseEventObject_Operands_NodeId;
  NodeId := CoUANodeId.Create;
  NodeId.ExpandedText := 'nsu=http://opcfoundation.org/Quickstarts/AlarmCondition ;ns=2;s=1:Colours/EastTank?Yellow';
  Operand2 := CoUALiteralOperand.Create;
  Operand2.Value := NodeId;
  WhereClause := CoUAContentFilterElement.Create;
  WhereClause.FilterOperator := UAFilterOperator_Equals;
  WhereClause.FilterOperands.Add(Operand1);
  WhereClause.FilterOperands.Add(Operand2);

  EventFilter := CoUAEventFilter.Create;
  EventFilter.SelectClauses := THelperMethods11.UABaseEventObject_AllFields;
  EventFilter.WhereClause := WhereClause;

  ServerNodeId := CoUANodeId.Create;
  ServerNodeId.StandardName := 'Server';

  MonitoringParameters := CoUAMonitoringParameters.Create;
  MonitoringParameters.EventFilter := EventFilter;
  MonitoringParameters.QueueSize := 1000;
  MonitoringParameters.SamplingInterval := 1000;

  MonitoredItemArguments := CoEasyUAMonitoredItemArguments.Create;
  MonitoredItemArguments.AttributeId := UAAttributeId_EventNotifier;
  MonitoredItemArguments.EndpointDescriptor.UrlString := EndpointDescriptor;
  MonitoredItemArguments.MonitoringParameters := MonitoringParameters;
  MonitoredItemArguments.NodeDescriptor.NodeId := ServerNodeId;

  // Instantiate the client object and hook events
  Client := TEasyUAClient.Create(nil);
  ClientEventHandlers := TClientEventHandlers11.Create;
  Client.OnEventNotification := ClientEventHandlers.Client_EventNotification;
  AlarmsAndConditionsClient := Client.AsAlarmsAndConditionsClient;
  ClientEventHandlers.AnEvent := False;

  Arguments := VarArrayCreate([0, 0], varVariant);
  Arguments[0] := MonitoredItemArguments;

  WriteLn('Subscribing...');
  Client.SubscribeMultipleMonitoredItems(Arguments);

  WriteLn('Waiting for an event for 30 seconds...');
  EndTime := Ticks + 30*1000;
  repeat
      if ClientEventHandlers.AnEvent or (EndTime < Ticks) then
        Break;
      PumpSleep(1000);
  until False;

  if ClientEventHandlers.AnEvent then
  begin
    WriteLn('Acknowledging an event...');
    try
      NodeDescriptor := CoUANodeDescriptor.Create;
      NodeDescriptor.NodeId := ClientEventHandlers.NodeId;
      AlarmsAndConditionsClient.Acknowledge(
       MonitoredItemArguments.EndpointDescriptor,
       NodeDescriptor,
       ClientEventHandlers.EventId,
       'Acknowledged by an automated example code.');
    except
      on E: EOleException do
      begin
        WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
        Exit;
      end;
    end;
  end
  else
  begin
    WriteLn('Event not received.');
  end;

  WriteLn('Waiting for 5 seconds...');
  PumpSleep(5*1000);

  WriteLn('Unsubscribing...');
  Client.UnsubscribeAllMonitoredItems;

  WriteLn('Waiting for 5 seconds...');
  Sleep(5*1000);

  WriteLn('Finished.');
  VarClear(Arguments);
  FreeAndNil(Client);
  FreeAndNil(ClientEventHandlers);
end;

// Example output:
// Subscribing...
// Waiting for an event for 30 seconds...
// [EastTank] 100! "The alarm was acknoweledged." @11/9/2019 9:56:23 AM
// Acknowledging an event...
// Waiting for 5 seconds...
// [EastTank] 100! "The alarm was acknoweledged." @11/9/2019 9:56:23 AM
// Unsubscribing...
// Waiting for 5 seconds...


class function THelperMethods11.ObjectTypeIds_BaseEventType: _UANodeId;
  var NodeId: _UANodeId;
  begin
    NodeId := CoUANodeId.Create;
    NodeId.StandardName := 'BaseEventType';
    Result := NodeId;
  end;

class function THelperMethods11.UAFilterElements_SimpleAttribute(TypeId: _UANodeId; simpleRelativeBrowsePathString: string): _UASimpleAttributeOperand;
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

class function THelperMethods11.UABaseEventObject_Operands_NodeId: _UASimpleAttributeOperand;
var
  Operand: _UASimpleAttributeOperand;
begin
  Operand := CoUASimpleAttributeOperand.Create;
  Operand.TypeId.NodeId.StandardName := 'BaseEventType';
  Operand.AttributeId := UAAttributeId_NodeId;
  Result := Operand;
end;

class function THelperMethods11.UABaseEventObject_Operands_EventId: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/EventId');
end;

class function THelperMethods11.UABaseEventObject_Operands_EventType: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/EventType');
end;

class function THelperMethods11.UABaseEventObject_Operands_SourceNode: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/SourceNode');
end;

class function THelperMethods11.UABaseEventObject_Operands_SourceName: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/SourceName');
end;

class function THelperMethods11.UABaseEventObject_Operands_Time: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/Time');
end;

class function THelperMethods11.UABaseEventObject_Operands_ReceiveTime: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/ReceiveTime');
end;

class function THelperMethods11.UABaseEventObject_Operands_LocalTime: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/LocalTime');
end;

class function THelperMethods11.UABaseEventObject_Operands_Message: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/Message');
end;

class function THelperMethods11.UABaseEventObject_Operands_Severity: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/Severity');
end;

class function THelperMethods11.UABaseEventObject_AllFields: _UAAttributeFieldCollection;
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
