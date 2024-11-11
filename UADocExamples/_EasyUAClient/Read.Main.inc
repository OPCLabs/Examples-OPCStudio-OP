// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to read and display data of an attribute (value,
// timestamps, and status code).
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure Read.Main;
var
  Client: OpcLabs_EasyOpcUA_TLB._EasyUAClient;
  AttributeData: _UAAttributeData;
begin
  // Instantiate the client object
  Client := CoEasyUAClient.Create;

  // Obtain attribute data. By default, the Value attribute of a node will be
  // read.
  try
    AttributeData := Client.Read(
      //'http://opcua.demo-this.com:51211/UA/SampleServer',
      //'https://opcua.demo-this.com:51212/UA/SampleServer/',
      'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer',
      'nsu=http://test.org/UA/Data/ ;i=10853');
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
      Exit;
    end;
  end;

  // Display results
  WriteLn('Value: ', AttributeData.Value);
  WriteLn('ServerTimestamp: ', DateTimeToStr(AttributeData.ServerTimestamp));
  WriteLn('SourceTimestamp: ', DateTimeToStr(AttributeData.SourceTimestamp));
  WriteLn('StatusCode: ', AttributeData.StatusCode.ToString);

  // Example output:
  //
  //Value: -2.230064E-31
  //ServerTimestamp: 11/6/2011 1:34:30 PM
  //SourceTimestamp: 11/6/2011 1:34:30 PM
  //StatusCode: Good
end;
//#endregion Example
