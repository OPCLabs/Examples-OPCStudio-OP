// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to subscribe to OPC XML-DA item changes and obtain the events by pulling them.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure PullItemChanged.MainXml;
var
  Arguments: OleVariant;
  Client: OpcLabs_EasyOpcClassic_TLB._EasyDAClient;
  EndTick: Cardinal;
  EventArgs: _EasyDAItemChangedEventArgs;
  ItemSubscriptionArguments1: _EasyDAItemSubscriptionArguments;
begin
  ItemSubscriptionArguments1 := CoEasyDAItemSubscriptionArguments.Create;
  ItemSubscriptionArguments1.ServerDescriptor.UrlString := 'http://opcxml.demo-this.com/XmlDaSampleServer/Service.asmx';
  ItemSubscriptionArguments1.ItemDescriptor.ItemID := 'Dynamic/Analog Types/Int';
  ItemSubscriptionArguments1.GroupParameters.RequestedUpdateRate := 1000;

  Arguments := VarArrayCreate([0, 0], varVariant);
  Arguments[0] := ItemSubscriptionArguments1;

  // Instantiate the client object
  Client := CoEasyDAClient.Create;
  // In order to use event pull, you must set a non-zero queue capacity upfront.
  Client.PullItemChangedQueueCapacity := 1000;

  WriteLn('Subscribing item changes...');
  Client.SubscribeMultipleItems(Arguments);

  WriteLn('Processing item changes for 1 minute...');
  EndTick := Ticks + 60*1000;
  while Ticks < EndTick do
  begin
    EventArgs := Client.PullItemChanged(2*1000);
    if EventArgs <> nil then
      // Handle the notification event
      WriteLn(EventArgs.ToString);
  end;

  WriteLn('Unsubscribing item changes...');
  Client.UnsubscribeAllItems;

  WriteLn('Finished.');
end;
//#endregion Example
