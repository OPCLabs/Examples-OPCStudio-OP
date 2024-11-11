// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to write a value into a single node, specifying a type code explicitly.
//
// Reasons for specifying the type explicitly might be:
// - The data type in the server has subtypes, and the client therefore needs to pick the subtype to be written.
// - The data type that the reports is incorrect.
// - Writing with an explicitly specified type is more efficient.
//
// TypeCode is easy to use, but it does not cover all possible types. It is also possible
// to specify the .NET Type, using a different overload of the WriteValue method.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.


class procedure WriteValue.TypeCode;
var
  Arguments: OleVariant;
  Client: OpcLabs_EasyOpcUA_TLB._EasyUAClient;
  EndpointDescriptorUrlString: string;
  WriteResult: _UAWriteResult;
  WriteValueArguments1: _UAWriteValueArguments;
  Results: OleVariant;
begin
  EndpointDescriptorUrlString :=
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';

  // Prepare the arguments
  WriteValueArguments1 := CoUAWriteValueArguments.Create;
  WriteValueArguments1.EndpointDescriptor.UrlString := EndpointDescriptorUrlString;
  WriteValueArguments1.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10221';
  WriteValueArguments1.Value := 12345;
  WriteValueArguments1.ValueTypeCode := TypeCode_Int32;    // here is the type explicitly specified

  Arguments := VarArrayCreate([0, 0], varVariant);
  Arguments[0] := WriteValueArguments1;

  // Instantiate the client object
  Client := CoEasyUAClient.Create;

  // Modify value of node
  TVarData(Results).VType := varArray or varVariant;
  TVarData(Results).VArray := PVarArray(Client.WriteMultipleValues(Arguments));

  WriteResult := IUnknown(Results[0]) as _UAWriteResult;
  if not WriteResult.Succeeded then
    WriteLn('*** Failure: ', WriteResult.Exception.GetBaseException.Message);

  VarClear(Results);
  VarClear(Arguments);
end;
//#endregion Example
