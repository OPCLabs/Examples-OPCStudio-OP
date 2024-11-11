// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to read the Value attributes of 3 different nodes at
// once. Using the same method, it is also possible to read multiple attributes
// of the same node.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure ReadMultipleValues.Main;
var
  Client: OpcLabs_EasyOpcUA_TLB._EasyUAClient;
  ReadArguments1, ReadArguments2, ReadArguments3: _UAReadArguments;
  Arguments, Results: OleVariant;
  I: Cardinal;
  Result: _ValueResult;
begin
  // Instantiate the client object
  Client := CoEasyUAClient.Create;

  ReadArguments1 := CoUAReadArguments.Create;
  ReadArguments1.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  ReadArguments1.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10845';

  ReadArguments2 := CoUAReadArguments.Create;
  ReadArguments2.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  ReadArguments2.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10853';

  ReadArguments3 := CoUAReadArguments.Create;
  ReadArguments3.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  ReadArguments3.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10855';

  Arguments := VarArrayCreate([0, 2], varVariant);
  Arguments[0] := ReadArguments1;
  Arguments[1] := ReadArguments2;
  Arguments[2] := ReadArguments3;

  // Obtain values. By default, the Value attributes of the nodes will be read.
  TVarData(Results).VType := varArray or varVariant;
  TVarData(Results).VArray := PVarArray(Client.ReadMultipleValues(Arguments));

  // Display results
  for I := VarArrayLowBound(Results, 1) to VarArrayHighBound(Results, 1) do
  begin
      Result := IInterface(Results[I]) as _ValueResult;
      if Result.Succeeded then
        WriteLn('Value: ', Result.Value)
      else
        WriteLn('results(', I, ') *** Failure: ', Result.ErrorMessageBrief);
  end;

  VarClear(Results);
  VarClear(Arguments);

  // Example output:
  //
  //Value: 8
  //Value: -8.06803E+21
  //Value: Strawberry Pig Banana Snake Mango Purple Grape Monkey Purple? Blueberry Lemon^
end;
//#endregion Example
