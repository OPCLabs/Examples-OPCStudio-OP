// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to call multiple methods, and pass arguments to and
// from them.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure CallMultipleMethods.Main;
var
  Arguments: OleVariant;
  CallArguments1, CallArguments2: _UACallArguments;
  Client: OpcLabs_EasyOpcUA_TLB._EasyUAClient;
  I, J: Cardinal;
  Inputs1, Inputs2: OleVariant;
  Outputs: OleVariant;
  Result: _ValueArrayResult;
  Results: OleVariant;
  TypeCodes1, TypeCodes2: OleVariant;
begin
  Inputs1 := VarArrayCreate([0, 10], varVariant);
  Inputs1[0] := False;
  Inputs1[1] := 1;
  Inputs1[2] := 2;
  Inputs1[3] := 3;
  Inputs1[4] := 4;
  Inputs1[5] := 5;
  Inputs1[6] := 6;
  Inputs1[7] := 7;
  Inputs1[8] := 8;
  Inputs1[9] := 9;
  Inputs1[10] := 10;

  TypeCodes1 := VarArrayCreate([0, 10], varVariant);
  TypeCodes1[0] := TypeCode_Boolean;
  TypeCodes1[1] := TypeCode_SByte;
  TypeCodes1[2] := TypeCode_Byte;
  TypeCodes1[3] := TypeCode_Int16;
  TypeCodes1[4] := TypeCode_UInt16;
  TypeCodes1[5] := TypeCode_Int32;
  TypeCodes1[6] := TypeCode_UInt32;
  TypeCodes1[7] := TypeCode_Int64;
  TypeCodes1[8] := TypeCode_UInt64;
  TypeCodes1[9] := TypeCode_Single;
  TypeCodes1[10] := TypeCode_Double;

  CallArguments1 := CoUACallArguments.Create;
  CallArguments1.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  CallArguments1.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10755';
  CallArguments1.MethodNodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10756';
  CallArguments1.InputArguments := PSafeArray(TVarData(Inputs1).VArray);
  CallArguments1.InputTypeCodes := TypeCodes1;

  Inputs2 := VarArrayCreate([0, 11], varVariant);
  Inputs2[0] := False;
  Inputs2[1] := 1;
  Inputs2[2] := 2;
  Inputs2[3] := 3;
  Inputs2[4] := 4;
  Inputs2[5] := 5;
  Inputs2[6] := 6;
  Inputs2[7] := 7;
  Inputs2[8] := 8;
  Inputs2[9] := 9;
  Inputs2[10] := 10;
  Inputs2[11] := 'eleven';

  TypeCodes2 := VarArrayCreate([0, 11], varVariant);
  TypeCodes2[0] := TypeCode_Boolean;
  TypeCodes2[1] := TypeCode_SByte;
  TypeCodes2[2] := TypeCode_Byte;
  TypeCodes2[3] := TypeCode_Int16;
  TypeCodes2[4] := TypeCode_UInt16;
  TypeCodes2[5] := TypeCode_Int32;
  TypeCodes2[6] := TypeCode_UInt32;
  TypeCodes2[7] := TypeCode_Int64;
  TypeCodes2[8] := TypeCode_UInt64;
  TypeCodes2[9] := TypeCode_Single;
  TypeCodes2[10] := TypeCode_Double;
  TypeCodes2[11] := TypeCode_String;

  CallArguments2 := CoUACallArguments.Create;
  CallArguments2.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  CallArguments2.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10755';
  CallArguments2.MethodNodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10774';
  CallArguments2.InputArguments := PSafeArray(TVarData(Inputs2).VArray);
  CallArguments2.InputTypeCodes := TypeCodes2;

  Arguments := VarArrayCreate([0, 1], varVariant);
  Arguments[0] := CallArguments1;
  Arguments[1] := CallArguments2;

  // Instantiate the client object
  Client := CoEasyUAClient.Create;

  // Perform the operation
  TVarData(Results).VType := varArray or varVariant;
  TVarData(Results).VArray := PVarArray(Client.CallMultipleMethods(
    Arguments));

  // Display results
  for I := VarArrayLowBound(Results, 1) to VarArrayHighBound(Results, 1) do
  begin
    WriteLn;
    WriteLn('results(', I, '):');
    Result := IInterface(Results[I]) as _ValueArrayResult;

    if Result.Exception = nil then
      begin
        Outputs := Result.ValueArray;
        for J := VarArrayLowBound(Outputs, 1) to VarArrayHighBound(Outputs, 1) do
          WriteLn('    ', 'outputs(', J, '): ', Outputs[J]);
      end
    else
      WriteLn('*** Failure: ', Result.Exception.ToString);
  end;

  VarClear(Results);
  VarClear(TypeCodes2);
  VarClear(TypeCodes1);
  VarClear(Arguments);
end;
//#endregion Example
