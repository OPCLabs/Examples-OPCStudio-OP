// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to write values into 3 items at once.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure WriteMultipleItemValues.Main;
var
  Arguments: OleVariant;
  Client: OpcLabs_EasyOpcClassic_TLB._EasyDAClient;
  I: Cardinal;
  ItemValueArguments1: _DAItemValueArguments;
  ItemValueArguments2: _DAItemValueArguments;
  ItemValueArguments3: _DAItemValueArguments;
  Results: OleVariant;
  OperationResult: _OperationResult;

begin
  ItemValueArguments1 := CoDAItemValueArguments.Create;
  ItemValueArguments1.ServerDescriptor.ServerClass := 'OPCLabs.KitServer.2';
  ItemValueArguments1.ItemDescriptor.ItemID := 'Simulation.Register_I4';
  ItemValueArguments1.Value := 23456;

  ItemValueArguments2 := CoDAItemValueArguments.Create;
  ItemValueArguments2.ServerDescriptor.ServerClass := 'OPCLabs.KitServer.2';
  ItemValueArguments2.ItemDescriptor.ItemID := 'Simulation.Register_R8';
  ItemValueArguments2.Value := 2.34567890;

  ItemValueArguments3 := CoDAItemValueArguments.Create;
  ItemValueArguments3.ServerDescriptor.ServerClass := 'OPCLabs.KitServer.2';
  ItemValueArguments3.ItemDescriptor.ItemID := 'Simulation.Register_BSTR';
  ItemValueArguments3.Value := 'ABC';

  Arguments := VarArrayCreate([0, 2], varVariant);
  Arguments[0] := ItemValueArguments1;
  Arguments[1] := ItemValueArguments2;
  Arguments[2] := ItemValueArguments3;

  // Instantiate the client object
  Client := CoEasyDAClient.Create;

  // Modify values of nodes
  TVarData(Results).VType := varArray or varVariant;
  TVarData(Results).VArray := PVarArray(
    Client.WriteMultipleItemValues(Arguments));

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
