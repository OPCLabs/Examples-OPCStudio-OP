// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to subscribe to events and obtain the notification events by pulling them.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure PullNotification.Main;
var
  Client: OpcLabs_EasyOpcClassic_TLB._EasyAEClient;
  EndTick: Cardinal;
  EventArgs: _EasyAENotificationEventArgs;
  Handle: Integer;
  ServerDescriptor: _ServerDescriptor;
  State: OleVariant;
  SubscriptionParameters: _AESubscriptionParameters;
begin
  ServerDescriptor := CoServerDescriptor.Create;
  ServerDescriptor.ServerClass := 'OPCLabs.KitEventServer.2';

  // Instantiate the client object
  Client := CoEasyAEClient.Create;
  // In order to use event pull, you must set a non-zero queue capacity upfront.
  Client.PullNotificationQueueCapacity := 1000;

  WriteLn('Subscribing events...');
  SubscriptionParameters := CoAESubscriptionParameters.Create;
  SubscriptionParameters.NotificationRate := 1000;
  Handle := Client.SubscribeEvents(ServerDescriptor, SubscriptionParameters, true, State);

  WriteLn('Processing event notifications for 1 minute...');
  EndTick := Ticks + 60*1000;
  while Ticks < EndTick do
  begin
    EventArgs := Client.PullNotification(2*1000);
    if EventArgs <> nil then
      // Handle the notification event
      WriteLn(EventArgs.ToString);
  end;

  WriteLn('Unsubscribing events...');
  Client.UnsubscribeEvents(Handle);

  WriteLn('Finished.');
end;
//#endregion Example
