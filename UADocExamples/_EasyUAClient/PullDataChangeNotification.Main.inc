// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to subscribe to changes of a single monitored item, pull events, and display each change.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure PullDataChangeNotification.Main;
var
  Client: OpcLabs_EasyOpcUA_TLB._EasyUAClient;
  EndTick: Cardinal;
  EventArgs: _EasyUADataChangeNotificationEventArgs;
begin
  // Instantiate the client object
  Client := CoEasyUAClient.Create;
  // In order to use event pull, you must set a non-zero queue capacity upfront.
  Client.PullDataChangeNotificationQueueCapacity := 1000;

  WriteLn('Subscribing...');
  Client.SubscribeDataChange(
      //'http://opcua.demo-this.com:51211/UA/SampleServer',
      //'https://opcua.demo-this.com:51212/UA/SampleServer/',
      'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer',
    'nsu=http://test.org/UA/Data/ ;i=10853',
    1000);

  WriteLn('Processing data change events for 1 minute...');
  EndTick := Ticks + 60*1000;
  while Ticks < EndTick do
  begin
    EventArgs := Client.PullDataChangeNotification(2*1000);
    if EventArgs <> nil then
      // Handle the notification event
      WriteLn(EventArgs.ToString);
  end;

  WriteLn('Unsubscribing...');
  Client.UnsubscribeAllMonitoredItems;

  WriteLn('Finished.');
end;
//#endregion Example
