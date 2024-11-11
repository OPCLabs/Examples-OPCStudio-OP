// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to subscribe to changes of multiple items and obtain the item changed events by pulling them.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure PullItemChanged.MultipleItems;
var
  Arguments: OleVariant;
  Client: OpcLabs_EasyOpcClassic_TLB._EasyDAClient;
  EndTick: Cardinal;
  EventArgs: _EasyDAItemChangedEventArgs;
  HandleArray: OleVariant;
  ItemSubscriptionArguments1: _EasyDAItemSubscriptionArguments;
  ItemSubscriptionArguments2: _EasyDAItemSubscriptionArguments;
  ItemSubscriptionArguments3: _EasyDAItemSubscriptionArguments;
  ItemSubscriptionArguments4: _EasyDAItemSubscriptionArguments;
begin
  ItemSubscriptionArguments1 := CoEasyDAItemSubscriptionArguments.Create;
  ItemSubscriptionArguments1.ServerDescriptor.ServerClass := 'OPCLabs.KitServer.2';
  ItemSubscriptionArguments1.ItemDescriptor.ItemID := 'Simulation.Random';
  ItemSubscriptionArguments1.GroupParameters.RequestedUpdateRate := 1000;

  ItemSubscriptionArguments2 := CoEasyDAItemSubscriptionArguments.Create;
  ItemSubscriptionArguments2.ServerDescriptor.ServerClass := 'OPCLabs.KitServer.2';
  ItemSubscriptionArguments2.ItemDescriptor.ItemID := 'Trends.Ramp (1 min)';
  ItemSubscriptionArguments2.GroupParameters.RequestedUpdateRate := 1000;

  ItemSubscriptionArguments3 := CoEasyDAItemSubscriptionArguments.Create;
  ItemSubscriptionArguments3.ServerDescriptor.ServerClass := 'OPCLabs.KitServer.2';
  ItemSubscriptionArguments3.ItemDescriptor.ItemID := 'Trends.Sine (1 min)';
  ItemSubscriptionArguments3.GroupParameters.RequestedUpdateRate := 1000;

  // Intentionally specifying an unknown item here, to demonstrate its behavior.
  ItemSubscriptionArguments4 := CoEasyDAItemSubscriptionArguments.Create;
  ItemSubscriptionArguments4.ServerDescriptor.ServerClass := 'OPCLabs.KitServer.2';
  ItemSubscriptionArguments4.ItemDescriptor.ItemID := 'SomeUnknownItem';
  ItemSubscriptionArguments4.GroupParameters.RequestedUpdateRate := 1000;

  Arguments := VarArrayCreate([0, 3], varVariant);
  Arguments[0] := ItemSubscriptionArguments1;
  Arguments[1] := ItemSubscriptionArguments2;
  Arguments[2] := ItemSubscriptionArguments3;
  Arguments[3] := ItemSubscriptionArguments4;

  // Instantiate the client object
  Client := CoEasyDAClient.Create;
  // In order to use event pull, you must set a non-zero queue capacity upfront.
  Client.PullItemChangedQueueCapacity := 1000;

  WriteLn('Subscribing item changes...');
  TVarData(HandleArray).VType := varArray or varVariant;
  TVarData(HandleArray).VArray := PVarArray(
    Client.SubscribeMultipleItems(Arguments));

  WriteLn('Processing item changes for 1 minute...');
  EndTick := Ticks + 60*1000;
  while Ticks < EndTick do
  begin
    EventArgs := Client.PullItemChanged(2*1000);
    if EventArgs <> nil then
      // Handle the notification event
      if eventArgs.Succeeded then
        WriteLn(eventArgs.Arguments.ItemDescriptor.ItemId, ': ', eventArgs.Vtq.ToString)
      else
        WriteLn(eventArgs.Arguments.ItemDescriptor.ItemId, ' *** Failure: ', eventArgs.ErrorMessageBrief);
  end;

  WriteLn('Unsubscribing item changes...');
  Client.UnsubscribeAllItems;

  VarClear(HandleArray);
  VarClear(Arguments);

  WriteLn('Finished.');
end;
//#endregion Example
