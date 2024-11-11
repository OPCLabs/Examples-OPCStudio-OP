// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to read 4 items from an OPC XML-DA server at once, and display their values, timestamps
// and qualities.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure ReadMultipleItems.MainXml;
var
  Arguments: OleVariant;
  Client: OpcLabs_EasyOpcClassic_TLB._EasyDAClient;
  I: Cardinal;
  ReadItemArguments1: _DAReadItemArguments;
  ReadItemArguments2: _DAReadItemArguments;
  ReadItemArguments3: _DAReadItemArguments;
  ReadItemArguments4: _DAReadItemArguments;
  VtqResult: _DAVtqResult;
  Results: OleVariant;
begin
  ReadItemArguments1 := CoDAReadItemArguments.Create;
  ReadItemArguments1.ServerDescriptor.UrlString := 'http://opcxml.demo-this.com/XmlDaSampleServer/Service.asmx';
  ReadItemArguments1.ItemDescriptor.ItemID := 'Dynamic/Analog Types/Double';

  ReadItemArguments2 := CoDAReadItemArguments.Create;
  ReadItemArguments2.ServerDescriptor.UrlString := 'http://opcxml.demo-this.com/XmlDaSampleServer/Service.asmx';
  ReadItemArguments2.ItemDescriptor.ItemID := 'Dynamic/Analog Types/Double[]';

  ReadItemArguments3 := CoDAReadItemArguments.Create;
  ReadItemArguments3.ServerDescriptor.UrlString := 'http://opcxml.demo-this.com/XmlDaSampleServer/Service.asmx';
  ReadItemArguments3.ItemDescriptor.ItemID := 'Dynamic/Analog Types/Int';

  ReadItemArguments4 := CoDAReadItemArguments.Create;
  ReadItemArguments4.ServerDescriptor.UrlString := 'http://opcxml.demo-this.com/XmlDaSampleServer/Service.asmx';
  ReadItemArguments4.ItemDescriptor.ItemID := 'SomeUnknownItem';

  Arguments := VarArrayCreate([0, 3], varVariant);
  Arguments[0] := ReadItemArguments1;
  Arguments[1] := ReadItemArguments2;
  Arguments[2] := ReadItemArguments3;
  Arguments[3] := ReadItemArguments4;

  // Instantiate the client object
  Client := CoEasyDAClient.Create;

  TVarData(Results).VType := varArray or varVariant;
  TVarData(Results).VArray := PVarArray(
    Client.ReadMultipleItems(Arguments));

  // Display results
  for I := VarArrayLowBound(Results, 1) to VarArrayHighBound(Results, 1) do
  begin
      VtqResult := IInterface(Results[I]) as _DAVtqResult;
      if VtqResult.Exception <> nil then
      begin
        WriteLn('results[', i, '] *** Failure: ', VtqResult.ErrorMessageBrief);
        Continue;
      end;
      WriteLn('results[', i, '].Vtq.ToString(): ', VtqResult.Vtq.ToString);
  end;

  VarClear(Results);
  VarClear(Arguments);
end;
//#endregion Example
