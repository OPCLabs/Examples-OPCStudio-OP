// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to change the sampling rate of an existing monitored
// item subscription.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  TClientEventHandlers110 = class
    procedure OnDataChangeNotification(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyUADataChangeNotificationEventArgs);
  end;

procedure TClientEventHandlers110.OnDataChangeNotification(
  ASender: TObject;
  sender: OleVariant;
  const eventArgs: _EasyUADataChangeNotificationEventArgs);
begin
  // Display the data
  if eventArgs.Succeeded then
  	WriteLn(eventArgs.AttributeData.ToString)
  else
  	WriteLn('*** Failure: ',
      eventArgs.ErrorMessageBrief);
end;

class procedure ChangeMonitoredItemSubscription.Main;
var
  Client: TEasyUAClient;
  ClientEventHandlers: TClientEventHandlers110;
  Handle: Cardinal;
begin
  // Instantiate the client object and hook events
  Client := TEasyUAClient.Create(nil);
  ClientEventHandlers := TClientEventHandlers110.Create;
  Client.OnDataChangeNotification := ClientEventHandlers.OnDataChangeNotification;

  WriteLn('Subscribing...');
  Handle := Client.SubscribeDataChange(
    //'http://opcua.demo-this.com:51211/UA/SampleServer',
    //'https://opcua.demo-this.com:51212/UA/SampleServer/',
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer',
    'nsu=http://test.org/UA/Data/ ;i=10853',
    1000);

  WriteLn('Processing monitored item changed events for 10 seconds...');
  PumpSleep(10*1000);

  Client.ChangeMonitoredItemSubscription(Handle, 100);

  WriteLn('Processing monitored item changed events for 10 seconds...');
  PumpSleep(10*1000);

  WriteLn('Unsubscribing...');
  Client.UnsubscribeAllMonitoredItems;

  WriteLn('Waiting for 5 seconds...');
  PumpSleep(5*1000);

  WriteLn('Finished.');
  FreeAndNil(Client);
  FreeAndNil(ClientEventHandlers);
end;
//#endregion Example
