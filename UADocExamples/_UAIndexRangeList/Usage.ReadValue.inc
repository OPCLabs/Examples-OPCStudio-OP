// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to read a range of values from an array.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure Usage.ReadValue;
var
  Client: _EasyUAClient;
  EndpointDescriptor: string;
  ReadArguments1: _UAReadArguments;
  Arguments, Results: OleVariant;
  I: Cardinal;
  IndexRange: _UAIndexRange;
  IndexRangeList: OpcLabs_EasyOpcUA_TLB._UAIndexRangeList;
  ArrayValue: OleVariant;
  Value: Integer;
  ValueResult: _ValueResult;
begin
  EndpointDescriptor := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';

  // Instantiate the client object
  Client := CoEasyUAClient.Create;

  // Prepare the arguments, indicating that just the elements 2 to 4 should be returned.
  IndexRangeList := CoUAIndexRangeList.Create;
  IndexRange := CoUAIndexRange.Create;
  IndexRange.Minimum := 2;
  IndexRange.Maximum := 4;
  IndexRangeList.Add(IndexRange);

  ReadArguments1 := CoUAReadArguments.Create;
  ReadArguments1.EndpointDescriptor.UrlString := EndpointDescriptor;
  ReadArguments1.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;ns=2;i=10305';
  ReadArguments1.IndexRangeList := IndexRangeList;

  Arguments := VarArrayCreate([0, 0], varVariant);
  Arguments[0] := ReadArguments1;

  // Obtain value.
  TVarData(Results).VType := varArray or varVariant;
  TVarData(Results).VArray := PVarArray(Client.ReadMultipleValues(Arguments));

  ValueResult := IInterface(Results[0]) as _ValueResult;
  if not ValueResult.Succeeded then
    begin
      WriteLn(' *** Failure: ', ValueResult.Exception.GetBaseException.Message);
      Exit;
    end;

  // Display results
  ArrayValue := ValueResult.Value;
  for I := VarArrayLowBound(ArrayValue, 1) to VarArrayHighBound(ArrayValue, 1) do
  begin
      Value := ArrayValue[I];
      WriteLn('arrayValue[', I, ']: ', Value);
  end;

  VarClear(Results);
  VarClear(Arguments);

  // Example output:
  //arrayValue[0]: 180410224
  //arrayValue[1]: 1919239969
  //arrayValue[2]: 1700185172
end;
//#endregion Example
