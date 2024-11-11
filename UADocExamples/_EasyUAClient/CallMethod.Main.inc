// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to call a single method, and pass arguments to and
// from it.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure CallMethod.Main;
var
  Client: OpcLabs_EasyOpcUA_TLB._EasyUAClient;
  I: Cardinal;
  Inputs: OleVariant;
  Outputs: OleVariant;
  TypeCodes: OleVariant;
begin
  Inputs := VarArrayCreate([0, 10], varVariant);
  Inputs[0] := False;
  Inputs[1] := 1;
  Inputs[2] := 2;
  Inputs[3] := 3;
  Inputs[4] := 4;
  Inputs[5] := 5;
  Inputs[6] := 6;
  Inputs[7] := 7;
  Inputs[8] := 8;
  Inputs[9] := 9;
  Inputs[10] := 10;

  TypeCodes := VarArrayCreate([0, 10], varVariant);
  TypeCodes[0] := TypeCode_Boolean;
  TypeCodes[1] := TypeCode_SByte;
  TypeCodes[2] := TypeCode_Byte;
  TypeCodes[3] := TypeCode_Int16;
  TypeCodes[4] := TypeCode_UInt16;
  TypeCodes[5] := TypeCode_Int32;
  TypeCodes[6] := TypeCode_UInt32;
  TypeCodes[7] := TypeCode_Int64;
  TypeCodes[8] := TypeCode_UInt64;
  TypeCodes[9] := TypeCode_Single;
  TypeCodes[10] := TypeCode_Double;

  // Instantiate the client object
  Client := CoEasyUAClient.Create;

  // Perform the operation
  try
    TVarData(Outputs).VType := varArray or varVariant;
    TVarData(Outputs).VArray := PVarArray(Client.CallMethod(
      //'http://opcua.demo-this.com:51211/UA/SampleServer',
      //'https://opcua.demo-this.com:51212/UA/SampleServer/',
      'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer',
      'nsu=http://test.org/UA/Data/ ;i=10755',
      'nsu=http://test.org/UA/Data/ ;i=10756',
      Inputs,
      TypeCodes));
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
      Exit;
    end;
  end;

  // Display results
  for I := VarArrayLowBound(Outputs, 1) to VarArrayHighBound(Outputs, 1) do
      WriteLn('outputs(', I, '): ', Outputs[I]);

   VarClear(Outputs);
   VarClear(TypeCodes);
   VarClear(Inputs);

end;
//#endregion Example
