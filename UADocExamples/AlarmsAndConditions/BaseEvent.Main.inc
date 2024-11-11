// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to display specific fields of incoming events that are derived from base event type.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  TClientEventHandlers12 = class
    procedure Client_EventNotification(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyUAEventNotificationEventArgs);
  end;

procedure TClientEventHandlers12.Client_EventNotification(
  ASender: TObject;
  sender: OleVariant;
  const eventArgs: _EasyUAEventNotificationEventArgs);
var
  BaseEventObject: _UABaseEventObject;
begin
  WriteLn;

  // Display the event
  if eventArgs.EventData = nil then
  begin
    WriteLn(eventArgs.ToString);
    Exit;
  end;

  BaseEventObject := eventArgs.EventData.BaseEvent;
  WriteLn('Source name: ', BaseEventObject.SourceName);
  WriteLn('Message: ', BaseEventObject.Message);
  WriteLn('Severity: ', BaseEventObject.Severity);
end;

class procedure BaseEvent.Main;
const
  UAObjectIds_Server = 'nsu=http://opcfoundation.org/UA/;i=2253';
var
  Client: TEasyUAClient;
  ClientEventHandlers: TClientEventHandlers12;
  EndpointDescriptor: string;
begin
  EndpointDescriptor := 'opc.tcp://opcua.demo-this.com:62544/Quickstarts/AlarmConditionServer';

  // Instantiate the client object and hook events
  Client := TEasyUAClient.Create(nil);
  ClientEventHandlers := TClientEventHandlers12.Create;
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
//#endregion Example
