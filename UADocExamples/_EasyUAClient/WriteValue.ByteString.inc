// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to write a value into a single node that is of type ByteString.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure WriteValue.ByteString;
var
  Client: OpcLabs_EasyOpcUA_TLB._EasyUAClient;
  Values: OleVariant;
begin
  Values := VarArrayCreate([0, 4], varByte);
  Values[0] := 11;
  Values[1] := 22;
  Values[2] := 33;
  Values[3] := 44;
  Values[4] := 55;

  // Instantiate the client object
  Client := CoEasyUAClient.Create;

  // Modify value of a node
  try
    Client.WriteValue(
      //'http://opcua.demo-this.com:51211/UA/SampleServer',
      //'https://opcua.demo-this.com:51212/UA/SampleServer/',
      'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer',
      'nsu=http://test.org/UA/Data/ ;i=10230', Values);
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
      Exit;
    end;
  end;

  VarClear(Values);
end;
//#endregion Example
