// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to get value of multiple OPC properties.
//
// Note that some properties may not have a useful value initially (e.g. until the item is activated in a group), which also the
// case with Timestamp property as implemented by the demo server. This behavior is server-dependent, and normal. You can run
// IEasyDAClient.ReadMultipleItemValues.Main.vbs shortly before this example, in order to obtain better property values. Your
// code may also subscribe to the items in order to assure that they remain active.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure GetMultiplePropertyValues.Main;
var
  Arguments: OleVariant;
  Client: OpcLabs_EasyOpcClassic_TLB._EasyDAClient;
  I: Cardinal;
  PropertyArguments1: _DAPropertyArguments;
  PropertyArguments2: _DAPropertyArguments;
  PropertyArguments3: _DAPropertyArguments;
  PropertyArguments4: _DAPropertyArguments;
  ValueResult: _ValueResult;
  Results: OleVariant;
begin

  // Get the values of Timestamp and AccessRights properties of two items.

  PropertyArguments1 := CoDAPropertyArguments.Create;
  PropertyArguments1.ServerDescriptor.ServerClass := 'OPCLabs.KitServer.2';
  PropertyArguments1.NodeDescriptor.ItemID := 'Simulation.Random';
  PropertyArguments1.PropertyDescriptor.PropertyId.NumericalValue := DAPropertyIds_Timestamp;

  PropertyArguments2 := CoDAPropertyArguments.Create;
  PropertyArguments2.ServerDescriptor.ServerClass := 'OPCLabs.KitServer.2';
  PropertyArguments2.NodeDescriptor.ItemID := 'Simulation.Random';
  PropertyArguments2.PropertyDescriptor.PropertyId.NumericalValue := DAPropertyIds_AccessRights;

  PropertyArguments3 := CoDAPropertyArguments.Create;
  PropertyArguments3.ServerDescriptor.ServerClass := 'OPCLabs.KitServer.2';
  PropertyArguments3.NodeDescriptor.ItemID := 'Trends.Ramp (1 min)';
  PropertyArguments3.PropertyDescriptor.PropertyId.NumericalValue := DAPropertyIds_Timestamp;

  PropertyArguments4 := CoDAPropertyArguments.Create;
  PropertyArguments4.ServerDescriptor.ServerClass := 'OPCLabs.KitServer.2';
  PropertyArguments4.NodeDescriptor.ItemID := 'Trends.Ramp (1 min)';
  PropertyArguments4.PropertyDescriptor.PropertyId.NumericalValue := DAPropertyIds_AccessRights;

  Arguments := VarArrayCreate([0, 3], varVariant);
  Arguments[0] := PropertyArguments1;
  Arguments[1] := PropertyArguments2;
  Arguments[2] := PropertyArguments3;
  Arguments[3] := PropertyArguments4;

  // Instantiate the client object
  Client := CoEasyDAClient.Create;

  TVarData(Results).VType := varArray or varVariant;
  TVarData(Results).VArray := PVarArray(
    Client.GetMultiplePropertyValues(Arguments));

  // Display results
  for I := VarArrayLowBound(Results, 1) to VarArrayHighBound(Results, 1) do
  begin
      ValueResult := IInterface(Results[I]) as _ValueResult;

      // Check if there has been an error getting the property value
      if ValueResult.Exception <> nil then
      begin
        WriteLn(Format('%s *** Failure: %s', [Arguments[I].NodeDescriptor.NodeId, ValueResult.Exception.Message]));
        Continue;
      end;

      WriteLn('results(', i, ').Value: ', ValueResult.Value);
  end;
  VarClear(Results);
  VarClear(Arguments);
end;
//#endregion Example
