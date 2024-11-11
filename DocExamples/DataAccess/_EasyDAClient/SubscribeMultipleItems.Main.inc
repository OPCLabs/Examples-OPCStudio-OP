// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to subscribe to changes of multiple items and display the value of the item with each change.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  TSubscribeMultipleItems_ClientEventHandlers = class
    // Item changed event handler
    procedure OnItemChanged(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyDAItemChangedEventArgs);
  end;

procedure TSubscribeMultipleItems_ClientEventHandlers.OnItemChanged(
  ASender: TObject;
  sender: OleVariant;
  const eventArgs: _EasyDAItemChangedEventArgs);
begin
  if eventArgs.Succeeded then
    WriteLn(eventArgs.Arguments.ItemDescriptor.ItemId, ': ', eventArgs.Vtq.ToString)
  else
    WriteLn(eventArgs.Arguments.ItemDescriptor.ItemId, ' *** Failure: ', eventArgs.ErrorMessageBrief);
end;

class procedure SubscribeMultipleItems.Main;
var
  Arguments: OleVariant;
  Client: TEasyDAClient;
  ClientEventHandlers: TSubscribeMultipleItems_ClientEventHandlers;
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

  ItemSubscriptionArguments4 := CoEasyDAItemSubscriptionArguments.Create;
  ItemSubscriptionArguments4.ServerDescriptor.ServerClass := 'OPCLabs.KitServer.2';
  ItemSubscriptionArguments4.ItemDescriptor.ItemID := 'Simulation.Register_I4';
  ItemSubscriptionArguments4.GroupParameters.RequestedUpdateRate := 1000;

  Arguments := VarArrayCreate([0, 3], varVariant);
  Arguments[0] := ItemSubscriptionArguments1;
  Arguments[1] := ItemSubscriptionArguments2;
  Arguments[2] := ItemSubscriptionArguments3;
  Arguments[3] := ItemSubscriptionArguments4;

  // Instantiate the client object and hook events
  Client := TEasyDAClient.Create(nil);
  ClientEventHandlers := TSubscribeMultipleItems_ClientEventHandlers.Create;
  Client.OnItemChanged := ClientEventHandlers.OnItemChanged;

  TVarData(HandleArray).VType := varArray or varVariant;
  TVarData(HandleArray).VArray := PVarArray(
    Client.SubscribeMultipleItems(Arguments));

  WriteLn('Processing item changed events for 1 minute...');
  PumpSleep(60*1000);

  WriteLn('Unsubscribing...');
  Client.UnsubscribeAllItems;

  WriteLn('Waiting for 5 seconds...');
  PumpSleep(5*1000);

  WriteLn('Finished.');
  VarClear(HandleArray);
  VarClear(Arguments);
  FreeAndNil(Client);
  FreeAndNil(ClientEventHandlers);
end;
//#endregion Example
