// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to read values of 4 items at once, and display them.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure ReadMultipleItemValues.Main;
var
  Arguments: OleVariant;
  Client: OpcLabs_EasyOpcClassic_TLB._EasyDAClient;
  I: Cardinal;
  ReadItemArguments1: _DAReadItemArguments;
  ReadItemArguments2: _DAReadItemArguments;
  ReadItemArguments3: _DAReadItemArguments;
  ReadItemArguments4: _DAReadItemArguments;
  ValueResult: _ValueResult;
  Results: OleVariant;
begin
  ReadItemArguments1 := CoDAReadItemArguments.Create;
  ReadItemArguments1.ServerDescriptor.ServerClass := 'OPCLabs.KitServer.2';
  ReadItemArguments1.ItemDescriptor.ItemID := 'Simulation.Random';

  ReadItemArguments2 := CoDAReadItemArguments.Create;
  ReadItemArguments2.ServerDescriptor.ServerClass := 'OPCLabs.KitServer.2';
  ReadItemArguments2.ItemDescriptor.ItemID := 'Trends.Ramp (1 min)';

  ReadItemArguments3 := CoDAReadItemArguments.Create;
  ReadItemArguments3.ServerDescriptor.ServerClass := 'OPCLabs.KitServer.2';
  ReadItemArguments3.ItemDescriptor.ItemID := 'Trends.Sine (1 min)';

  ReadItemArguments4 := CoDAReadItemArguments.Create;
  ReadItemArguments4.ServerDescriptor.ServerClass := 'OPCLabs.KitServer.2';
  ReadItemArguments4.ItemDescriptor.ItemID := 'Simulation.Register_I4';

  Arguments := VarArrayCreate([0, 3], varVariant);
  Arguments[0] := ReadItemArguments1;
  Arguments[1] := ReadItemArguments2;
  Arguments[2] := ReadItemArguments3;
  Arguments[3] := ReadItemArguments4;

  // Instantiate the client object
  Client := CoEasyDAClient.Create;

  TVarData(Results).VType := varArray or varVariant;
  TVarData(Results).VArray := PVarArray(
    Client.ReadMultipleItemValues(Arguments));

  // Display results
  for I := VarArrayLowBound(Results, 1) to VarArrayHighBound(Results, 1) do
  begin
      ValueResult := IInterface(Results[I]) as _ValueResult;

      if ValueResult.Succeeded then
        WriteLn('results(', i, ').Value: ', ValueResult.Value)
      else
        WriteLn('results(', i, ') *** Failure: ', ValueResult.ErrorMessageBrief);
  end;

  VarClear(Results);
  VarClear(Arguments);
end;
//#endregion Example
