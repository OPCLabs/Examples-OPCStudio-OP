// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to subscribe to events and display the event message with each notification. It also shows how to
// unsubscribe afterwards.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  TClientEventHandlers = class
    // Notification event handler
    procedure OnNotification(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyAENotificationEventArgs);
  end;

procedure TClientEventHandlers.OnNotification(
  ASender: TObject;
  sender: OleVariant;
  const eventArgs: _EasyAENotificationEventArgs);
begin
  if not eventArgs.Succeeded then
    WriteLn(Format('*** Failure: %s', [eventArgs.ErrorMessageBrief]));
  if eventArgs.EventData <> nil then
	  WriteLn(eventArgs.EventData.Message);
end;

class procedure SubscribeEvents.Main;
var
  Client: TEasyAEClient;
  ClientEventHandlers: TClientEventHandlers;
  Handle: Integer;
  ServerDescriptor: _ServerDescriptor;
  State: OleVariant;
  SubscriptionParameters: _AESubscriptionParameters;
begin
  ServerDescriptor := CoServerDescriptor.Create;
  ServerDescriptor.ServerClass := 'OPCLabs.KitEventServer.2';

  // Instantiate the client object and hook events
  Client := TEasyAEClient.Create(nil);
  ClientEventHandlers := TClientEventHandlers.Create;
  Client.OnNotification := ClientEventHandlers.OnNotification;

  WriteLn('Subscribing events...');
  SubscriptionParameters := CoAESubscriptionParameters.Create;
  SubscriptionParameters.NotificationRate := 1000;
  Handle := Client.SubscribeEvents(ServerDescriptor, SubscriptionParameters, true, State);

  WriteLn('Processing event notifications for 1 minute...');
  PumpSleep(60*1000);

  WriteLn('Unsubscribing events...');
  Client.UnsubscribeEvents(Handle);

  WriteLn('Finished.');
  FreeAndNil(Client);
  FreeAndNil(ClientEventHandlers);
end;
//#endregion Example
