// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to read the attributes of 4 OPC-UA nodes at once, and
// display the results.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure ReadMultiple.Main;
var
  Arguments: OleVariant;
  Client: OpcLabs_EasyOpcUA_TLB._EasyUAClient;
  I: Cardinal;
  ReadArguments1, ReadArguments2, ReadArguments3, ReadArguments4: _UAReadArguments;
  Result: _UAAttributeDataResult;
  Results: OleVariant;
begin
  ReadArguments1 := CoUAReadArguments.Create;
  ReadArguments1.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  ReadArguments1.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10853';

  ReadArguments2 := CoUAReadArguments.Create;
  ReadArguments2.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  ReadArguments2.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10845';

  ReadArguments3 := CoUAReadArguments.Create;
  ReadArguments3.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  ReadArguments3.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10304';

  ReadArguments4 := CoUAReadArguments.Create;
  ReadArguments4.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  ReadArguments4.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10389';

  Arguments := VarArrayCreate([0, 3], varVariant);
  Arguments[0] := ReadArguments1;
  Arguments[1] := ReadArguments2;
  Arguments[2] := ReadArguments3;
  Arguments[3] := ReadArguments4;

  // Instantiate the client object
  Client := CoEasyUAClient.Create;

  // Perform the operation
  TVarData(Results).VType := varArray or varVariant;
  TVarData(Results).VArray := PVarArray(Client.ReadMultiple(Arguments));

  // Display results
  for I := VarArrayLowBound(Results, 1) to VarArrayHighBound(Results, 1) do
  begin
    Result := IInterface(Results[I]) as _UAAttributeDataResult;
    if Result.Succeeded then
      WriteLn('results(', I, ').AttributeData: ', Result.AttributeData.ToString)
    else
      WriteLn('results(', I, ') *** Failure: ', Result.ErrorMessageBrief);
  end;

  VarClear(Results);
  VarClear(Arguments);
end;
//#endregion Example
