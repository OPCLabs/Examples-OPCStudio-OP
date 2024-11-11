// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to write data (a value, timestamps and status code)
// into a single attribute of a node.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure Write.Main;
const
  GoodOrSuccess = 0;
var
  AttributeData: _UAAttributeData;
  Client: OpcLabs_EasyOpcUA_TLB._EasyUAClient;
  StatusCode: _UAStatusCode;
begin
  // Instantiate the client object
  Client := CoEasyUAClient.Create;

  // Modify data of a node's attribute
  StatusCode := CoUAStatusCode.Create;
  StatusCode.Severity := GoodOrSuccess;
  AttributeData := CoUAAttributeData.Create;
  AttributeData.Value := 12345;
  AttributeData.StatusCode := StatusCode;
  AttributeData.SourceTimestamp := Now;

  // Perform the operation
  try
    Client.Write(
      //'http://opcua.demo-this.com:51211/UA/SampleServer',
      //'https://opcua.demo-this.com:51212/UA/SampleServer/',
      'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer',
      'nsu=http://test.org/UA/Data/ ;i=10221',
      AttributeData);
    // The target server may not support this, and in such case a failure will occur.
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
      Exit;
    end;
  end;

end;
//#endregion Example

