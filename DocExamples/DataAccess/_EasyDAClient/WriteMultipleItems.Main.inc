// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to write values, timestamps and qualities into 3 items at once.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure WriteMultipleItems.Main;
var
  Arguments: OleVariant;
  Client: OpcLabs_EasyOpcClassic_TLB._EasyDAClient;
  I: Cardinal;
  ItemVtqArguments1: _DAItemVtqArguments;
  ItemVtqArguments2: _DAItemVtqArguments;
  ItemVtqArguments3: _DAItemVtqArguments;
  Results: OleVariant;
  OperationResult: _OperationResult;

begin
  ItemVtqArguments1 := CoDAItemVtqArguments.Create;
  ItemVtqArguments1.ServerDescriptor.ServerClass := 'OPCLabs.KitServer.2';
  ItemVtqArguments1.ItemDescriptor.ItemID := 'Simulation.Register_I4';
  ItemVtqArguments1.Vtq.Value := 23456;
  ItemVtqArguments1.Vtq.TimestampLocal := Now();
  ItemVtqArguments1.Vtq.Quality.NumericalValue := DAQualities_GoodNonSpecific;

  ItemVtqArguments2 := CoDAItemVtqArguments.Create;
  ItemVtqArguments2.ServerDescriptor.ServerClass := 'OPCLabs.KitServer.2';
  ItemVtqArguments2.ItemDescriptor.ItemID := 'Simulation.Register_R8';
  ItemVtqArguments2.Vtq.Value := 2.34567890;
  ItemVtqArguments2.Vtq.TimestampLocal := Now();
  ItemVtqArguments2.Vtq.Quality.NumericalValue := DAQualities_GoodNonSpecific;

  ItemVtqArguments3 := CoDAItemVtqArguments.Create;
  ItemVtqArguments3.ServerDescriptor.ServerClass := 'OPCLabs.KitServer.2';
  ItemVtqArguments3.ItemDescriptor.ItemID := 'Simulation.Register_BSTR';
  ItemVtqArguments3.Vtq.Value := 'ABC';
  ItemVtqArguments3.Vtq.TimestampLocal := Now();
  ItemVtqArguments3.Vtq.Quality.NumericalValue := DAQualities_GoodNonSpecific;

  Arguments := VarArrayCreate([0, 2], varVariant);
  Arguments[0] := ItemVtqArguments1;
  Arguments[1] := ItemVtqArguments2;
  Arguments[2] := ItemVtqArguments3;

  // Instantiate the client object
  Client := CoEasyDAClient.Create;

  // Modify values of nodes
  TVarData(Results).VType := varArray or varVariant;
  TVarData(Results).VArray := PVarArray(
    Client.WriteMultipleItems(Arguments));

  // Display results
  for I := VarArrayLowBound(Results, 1) to VarArrayHighBound(Results, 1) do
  begin
    OperationResult := IInterface(Results[I]) as _OperationResult;
    if OperationResult.Succeeded then
      WriteLn('Result ', I, ' success')
    else
      WriteLn('Result ', I, ' *** Failure: ', OperationResult.Exception.GetBaseException.Message);
  end;

  VarClear(Results);
  VarClear(Arguments);
end;
//#endregion Example
