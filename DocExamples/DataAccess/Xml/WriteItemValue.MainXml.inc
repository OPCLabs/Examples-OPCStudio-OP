// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to write a value into a single OPC XML-DA item.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure WriteItemValue.MainXml;
var
  Arguments: OleVariant;
  Client: OpcLabs_EasyOpcClassic_TLB._EasyDAClient;
  ItemValueArguments1: _DAItemValueArguments;
  Results: OleVariant;
  OperationResult: _OperationResult;
begin
  ItemValueArguments1 := CoDAItemValueArguments.Create;
  ItemValueArguments1.ServerDescriptor.UrlString := 'http://opcxml.demo-this.com/XmlDaSampleServer/Service.asmx';
  ItemValueArguments1.ItemDescriptor.ItemID := 'Static/Analog Types/Int';
  ItemValueArguments1.Value := 12345;

  Arguments := VarArrayCreate([0, 0], varVariant);
  Arguments[0] := ItemValueArguments1;

  // Instantiate the client object
  Client := CoEasyDAClient.Create;

  TVarData(Results).VType := varArray or varVariant;
  TVarData(Results).VArray := PVarArray(
    Client.WriteMultipleItemValues(Arguments));

  OperationResult := IInterface(Results[0]) as _OperationResult;
  if Not OperationResult.Succeeded then
      WriteLn(' *** Failure: ', OperationResult.Exception.GetBaseException.Message);
  
  VarClear(Results);
  VarClear(Arguments);

end;
//#endregion Example
