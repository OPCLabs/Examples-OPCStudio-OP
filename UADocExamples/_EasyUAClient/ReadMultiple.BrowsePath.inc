// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to read the attributes of 4 OPC-UA nodes specified
// by browse paths at once, and display the results.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure ReadMultiple.BrowsePath;
var
  Arguments: OleVariant;
  BrowsePathParser: _UABrowsePathParser;
  Client: OpcLabs_EasyOpcUA_TLB._EasyUAClient;
  I: Cardinal;
  ReadArguments1, ReadArguments2, ReadArguments3, ReadArguments4: _UAReadArguments;
  Result: _UAAttributeDataResult;
  Results: OleVariant;
begin
  BrowsePathParser := CoUABrowsePathParser.Create;
  BrowsePathParser.DefaultNamespaceUriString := 'http://test.org/UA/Data/';

  ReadArguments1 := CoUAReadArguments.Create;
  ReadArguments1.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  //  Note: Add error handling around the following statement if the browse path is not guaranteed to be syntactically valid.
  ReadArguments1.NodeDescriptor.BrowsePath := BrowsePathParser.Parse('[ObjectsFolder]/Data/Dynamic/Scalar/FloatValue');

  ReadArguments2 := CoUAReadArguments.Create;
  ReadArguments2.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  //  Note: Add error handling around the following statement if the browse path is not guaranteed to be syntactically valid.
  ReadArguments2.NodeDescriptor.BrowsePath := BrowsePathParser.Parse('[ObjectsFolder]/Data/Dynamic/Scalar/SByteValue');

  ReadArguments3 := CoUAReadArguments.Create;
  ReadArguments3.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  //  Note: Add error handling around the following statement if the browse path is not guaranteed to be syntactically valid.
  ReadArguments3.NodeDescriptor.BrowsePath := BrowsePathParser.Parse('[ObjectsFolder]/Data/Static/Array/UInt16Value');

  ReadArguments4 := CoUAReadArguments.Create;
  ReadArguments4.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  //  Note: Add error handling around the following statement if the browse path is not guaranteed to be syntactically valid.
  ReadArguments4.NodeDescriptor.BrowsePath := BrowsePathParser.Parse('[ObjectsFolder]/Data/Static/UserScalar/Int32Value');

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
      WriteLn('results[', I, '].AttributeData: ', Result.AttributeData.ToString)
    else
      WriteLn('results[', I, '] *** Failure: ', Result.ErrorMessageBrief);
  end;

  VarClear(Results);
  VarClear(Arguments);

  // Example output:
  //results[0].AttributeData: 4.187603E+21 {System.Single} @2019-11-09T14:05:46.268 @@2019-11-09T14:05:46.268; Good
  //results[1].AttributeData: -98 {System.Int16} @2019-11-09T14:05:46.268 @@2019-11-09T14:05:46.268; Good
  //results[2].AttributeData: [58] {38240, 11129, 64397, 22845, 30525, ...} {System.Int32[]} @2019-11-09T14:00:07.543 @@2019-11-09T14:05:46.268; Good
  //results[3].AttributeData: 1280120396 {System.Int32} @2019-11-09T14:00:07.590 @@2019-11-09T14:05:46.268; Good

end;
//#endregion Example
