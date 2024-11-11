// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to write values into 3 nodes at once, specifying a type code explicitly. It tests for success of
// each write and displays the exception message in case of failure.
//
// Reasons for specifying the type explicitly might be:
// - The data type in the server has subtypes, and the client therefore needs to pick the subtype to be written.
// - The data type that the reports is incorrect.
// - Writing with an explicitly specified type is more efficient.
//
// Alternative ways of specifying the type are using the ValueType or ValueTypeFullName properties.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure WriteMultipleValues.ValueTypeCode;
var
  Arguments: OleVariant;
  Client: OpcLabs_EasyOpcUA_TLB._EasyUAClient;
  I: Cardinal;
  WriteResult: _UAWriteResult;
  WriteValueArguments1, WriteValueArguments2, WriteValueArguments3: _UAWriteValueArguments;
  Results: OleVariant;
begin
  WriteValueArguments1 := CoUAWriteValueArguments.Create;
  WriteValueArguments1.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  WriteValueArguments1.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10221';
  WriteValueArguments1.Value := 23456;
  WriteValueArguments1.ValueTypeCode := TypeCode_Int32;    // here is the type explicitly specified

  WriteValueArguments2 := CoUAWriteValueArguments.Create;
  WriteValueArguments2.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  WriteValueArguments2.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10226';
  WriteValueArguments2.Value := 'This string cannot be converted to Double';
  WriteValueArguments2.ValueTypeCode := TypeCode_Double;    // here is the type explicitly specified

  WriteValueArguments3 := CoUAWriteValueArguments.Create;
  WriteValueArguments3.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  WriteValueArguments3.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;s=UnknownNode';
  WriteValueArguments3.Value := 'ABC';
  WriteValueArguments3.ValueTypeCode := TypeCode_String;    // here is the type explicitly specified

  Arguments := VarArrayCreate([0, 2], varVariant);
  Arguments[0] := WriteValueArguments1;
  Arguments[1] := WriteValueArguments2;
  Arguments[2] := WriteValueArguments3;

  // Instantiate the client object
  Client := CoEasyUAClient.Create;

  // Modify values of nodes
  TVarData(Results).VType := varArray or varVariant;
  TVarData(Results).VArray := PVarArray(Client.WriteMultipleValues(Arguments));

  // Display results
  for I := VarArrayLowBound(Results, 1) to VarArrayHighBound(Results, 1) do
  begin
    WriteResult := IInterface(Results[I]) as _UAWriteResult;
    if WriteResult.Succeeded then
      WriteLn('Result ', I, ' success')
    else
      WriteLn('Result ', I, ': ', WriteResult.Exception.GetBaseException.Message);
  end;

  VarClear(Results);
  VarClear(Arguments);
end;
//#endregion Example
