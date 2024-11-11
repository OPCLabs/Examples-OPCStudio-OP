// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how change the update rate of an existing OPC XML-DA subscription.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  TChangeItemSubscription_ClientEventHandlers = class
    // Item changed event handler
    procedure OnItemChanged(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyDAItemChangedEventArgs);
  end;

procedure TChangeItemSubscription_ClientEventHandlers.OnItemChanged(
  ASender: TObject;
  sender: OleVariant;
  const eventArgs: _EasyDAItemChangedEventArgs);
begin
  if Not eventArgs.Succeeded then
  begin
    WriteLn('*** Failure: ', eventArgs.ErrorMessageBrief);
    Exit;
  end;

  WriteLn(eventArgs.Vtq.ToString)
end;

class procedure ChangeItemSubscription.MainXml;
var
  Arguments: OleVariant;
  Client: TEasyDAClient;
  ClientEventHandlers: TChangeItemSubscription_ClientEventHandlers;
  HandleArray: OleVariant;
  ItemSubscriptionArguments1: _EasyDAItemSubscriptionArguments;
begin
  ItemSubscriptionArguments1 := CoEasyDAItemSubscriptionArguments.Create;
  ItemSubscriptionArguments1.ServerDescriptor.UrlString := 'http://opcxml.demo-this.com/XmlDaSampleServer/Service.asmx';
  ItemSubscriptionArguments1.ItemDescriptor.ItemID := 'Dynamic/Analog Types/Int';
  ItemSubscriptionArguments1.GroupParameters.RequestedUpdateRate := 2000;

  Arguments := VarArrayCreate([0, 0], varVariant);
  Arguments[0] := ItemSubscriptionArguments1;

  // Instantiate the client object and hook events
  Client := TEasyDAClient.Create(nil);
  ClientEventHandlers := TChangeItemSubscription_ClientEventHandlers.Create;
  Client.OnItemChanged := ClientEventHandlers.OnItemChanged;

  WriteLn('Subscribing...');
  TVarData(HandleArray).VType := varArray or varVariant;
  TVarData(HandleArray).VArray := PVarArray(
    Client.SubscribeMultipleItems(Arguments));

  WriteLn('Waiting for 20 seconds...');
  PumpSleep(20*1000);

  WriteLn('Changing subscription...');
  Client.ChangeItemSubscription(HandleArray[0], 500);

  WriteLn('Waiting for 10 seconds...');
  PumpSleep(10*1000);

  WriteLn('Unsubscribing...');
  Client.UnsubscribeAllItems;

  WriteLn('Waiting for 10 seconds...');
  PumpSleep(10*1000);

  VarClear(HandleArray);
  VarClear(Arguments);
  FreeAndNil(Client);
  FreeAndNil(ClientEventHandlers);
end;
//#endregion Example
