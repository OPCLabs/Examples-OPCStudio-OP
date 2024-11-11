// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to display all fields of incoming events, or extract specific fields.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  THelperMethods15 = class
    class function ObjectTypeIds_BaseEventType: _UANodeId; static;
    class function UAFilterElements_SimpleAttribute(TypeId: _UANodeId; simpleRelativeBrowsePathString: string): _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_SourceName: _UASimpleAttributeOperand; static;
    class function UABaseEventObject_Operands_Message: _UASimpleAttributeOperand; static;
  end;

type
  TClientEventHandlers15 = class
    procedure Client_EventNotification(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyUAEventNotificationEventArgs);
  end;

procedure TClientEventHandlers15.Client_EventNotification(
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
    WriteLn('  ', AttributeField.ToString, ' -> ', ValueResult.ToString);
  end;

  // Extracting specific fields using an event type ID and a simple relative path
  WriteLn('Source name: ', eventArgs.EventData.FieldResults.Item[THelperMethods15.UABaseEventObject_Operands_SourceName.ToUAAttributeField].ToString);
  WriteLn('Message: ', eventArgs.EventData.FieldResults.Item[THelperMethods15.UABaseEventObject_Operands_Message.ToUAAttributeField].ToString);
end;

class procedure FieldResults.Main;
const
  UAObjectIds_Server = 'nsu=http://opcfoundation.org/UA/;i=2253';
var
  Client: TEasyUAClient;
  ClientEventHandlers: TClientEventHandlers15;
  EndpointDescriptor: string;
begin
  EndpointDescriptor := 'opc.tcp://opcua.demo-this.com:62544/Quickstarts/AlarmConditionServer';

  // Instantiate the client object and hook events
  Client := TEasyUAClient.Create(nil);
  ClientEventHandlers := TClientEventHandlers15.Create;
  Client.OnEventNotification := ClientEventHandlers.Client_EventNotification;

  WriteLn('Subscribing...');
  Client.SubscribeEvent(EndpointDescriptor, UAObjectIds_Server, 1000);

  WriteLn('Processing event notifications for 30 seconds...');
  PumpSleep(30*1000);

  WriteLn('Unsubscribing...');
  Client.UnsubscribeAllMonitoredItems;

  WriteLn('Waiting for 5 seconds...');
  Sleep(5*1000);

  WriteLn('Finished.');
  FreeAndNil(Client);
  FreeAndNil(ClientEventHandlers);
end;

// Example output (truncated):
//Subscribing...
//Processing event notifications for 30 seconds...
//
//[] Success
//
///[] Success; Refresh; RefreshInitiated
//
//All fields:
//  NodeId="BaseEventType", NodeId -> Success; nsu=http://opcfoundation.org/Quickstarts/AlarmCondition ;ns=2;s=1:Colours/EastTank?OnlineState {OpcLabs.EasyOpc.UA.AddressSpace.UANodeId}
//  NodeId="BaseEventType"/EventId -> Success; [16] {95, 68, 22, 205, 114, ...} {System.Byte[]}
//  NodeId="BaseEventType"/EventType -> Success; DialogConditionType {OpcLabs.EasyOpc.UA.AddressSpace.UANodeId}
//  NodeId="BaseEventType"/SourceNode -> Success; nsu=http://opcfoundation.org/Quickstarts/AlarmCondition ;ns=2;s=1:Colours/EastTank {OpcLabs.EasyOpc.UA.AddressSpace.UANodeId}
//  NodeId="BaseEventType"/SourceName -> Success; EastTank {System.String}
//  NodeId="BaseEventType"/Time -> Success; 9/10/2019 8:08:23 PM {System.DateTime}
//  NodeId="BaseEventType"/ReceiveTime -> Success; 9/10/2019 8:08:23 PM {System.DateTime}
//  NodeId="BaseEventType"/LocalTime -> Success; 00:00, DST {OpcLabs.EasyOpc.UA.UATimeZoneData}
//  NodeId="BaseEventType"/Message -> Success; The dialog was activated {System.String}
//  NodeId="BaseEventType"/Severity -> Success; 100 {System.Int32}
//Source name: Success; EastTank {System.String}
//Message: Success; The dialog was activated {System.String}
//
//All fields:
//  NodeId="BaseEventType", NodeId -> Success; nsu=http://opcfoundation.org/Quickstarts/AlarmCondition ;ns=2;s=1:Colours/EastTank?Red {OpcLabs.EasyOpc.UA.AddressSpace.UANodeId}
//  NodeId="BaseEventType"/EventId -> Success; [16] {124, 156, 219, 54, 120, ...} {System.Byte[]}
//  NodeId="BaseEventType"/EventType -> Success; ExclusiveDeviationAlarmType {OpcLabs.EasyOpc.UA.AddressSpace.UANodeId}
//  NodeId="BaseEventType"/SourceNode -> Success; nsu=http://opcfoundation.org/Quickstarts/AlarmCondition ;ns=2;s=1:Colours/EastTank {OpcLabs.EasyOpc.UA.AddressSpace.UANodeId}
//  NodeId="BaseEventType"/SourceName -> Success; EastTank {System.String}
//  NodeId="BaseEventType"/Time -> Success; 10/14/2019 4:00:13 PM {System.DateTime}
//  NodeId="BaseEventType"/ReceiveTime -> Success; 10/14/2019 4:00:13 PM {System.DateTime}
//  NodeId="BaseEventType"/LocalTime -> Success; 00:00, DST {OpcLabs.EasyOpc.UA.UATimeZoneData}
//  NodeId="BaseEventType"/Message -> Success; The alarm was acknoweledged. {System.String}
//  NodeId="BaseEventType"/Severity -> Success; 500 {System.Int32}
//Source name: Success; EastTank {System.String}
//Message: Success; The alarm was acknoweledged. {System.String}
//
//...

class function THelperMethods15.ObjectTypeIds_BaseEventType: _UANodeId;
  var NodeId: _UANodeId;
  begin
    NodeId := CoUANodeId.Create;
    NodeId.StandardName := 'BaseEventType';
    Result := NodeId;
  end;

class function THelperMethods15.UAFilterElements_SimpleAttribute(TypeId: _UANodeId; simpleRelativeBrowsePathString: string): _UASimpleAttributeOperand;
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

class function THelperMethods15.UABaseEventObject_Operands_SourceName: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/SourceName');
end;

class function THelperMethods15.UABaseEventObject_Operands_Message: _UASimpleAttributeOperand;
begin
  Result := UAFilterElements_SimpleAttribute(ObjectTypeIds_BaseEventType, '/Message');
end;

//#endregion Example
