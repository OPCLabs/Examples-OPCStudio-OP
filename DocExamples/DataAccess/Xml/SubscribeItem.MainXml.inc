// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to subscribe to changes of a single OPC XML-DA item and display the value of the item with each change.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  TSubscribeItem_ClientEventHandlers = class
    // Item changed event handler
    procedure OnItemChanged(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyDAItemChangedEventArgs);
  end;

procedure TSubscribeItem_ClientEventHandlers.OnItemChanged(
  ASender: TObject;
  sender: OleVariant;
  const eventArgs: _EasyDAItemChangedEventArgs);
begin
  if eventArgs.Succeeded then
    WriteLn(eventArgs.Vtq.ToString)
  else  
    WriteLn('*** Failure: ', eventArgs.ErrorMessageBrief);
end;

class procedure SubscribeItem.MainXml;
var
  Arguments: OleVariant;
  Client: TEasyDAClient;
  ClientEventHandlers: TSubscribeItem_ClientEventHandlers;
  HandleArray: OleVariant;
  ItemSubscriptionArguments1: _EasyDAItemSubscriptionArguments;
begin
  ItemSubscriptionArguments1 := CoEasyDAItemSubscriptionArguments.Create;
  ItemSubscriptionArguments1.ServerDescriptor.UrlString := 'http://opcxml.demo-this.com/XmlDaSampleServer/Service.asmx';
  ItemSubscriptionArguments1.ItemDescriptor.ItemID := 'Dynamic/Analog Types/Int';
  ItemSubscriptionArguments1.GroupParameters.RequestedUpdateRate := 1000;

  Arguments := VarArrayCreate([0, 0], varVariant);
  Arguments[0] := ItemSubscriptionArguments1;

  // Instantiate the client object and hook events
  Client := TEasyDAClient.Create(nil);
  ClientEventHandlers := TSubscribeItem_ClientEventHandlers.Create;
  Client.OnItemChanged := ClientEventHandlers.OnItemChanged;

  WriteLn('Subscribing...');
  TVarData(HandleArray).VType := varArray or varVariant;
  TVarData(HandleArray).VArray := PVarArray(
    Client.SubscribeMultipleItems(Arguments));

  WriteLn('Processing item changed events for 1 minute...');
  PumpSleep(60*1000);

  WriteLn('Unsubscribing...');
  Client.UnsubscribeAllItems;

  WriteLn('Waiting for 5 seconds...');
  PumpSleep(5*1000);

  VarClear(HandleArray);
  VarClear(Arguments);
  FreeAndNil(Client);
  FreeAndNil(ClientEventHandlers);
end;
//#endregion Example
