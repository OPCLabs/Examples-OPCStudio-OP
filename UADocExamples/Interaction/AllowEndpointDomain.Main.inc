// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how in a console application, the user is asked to allow a server instance certificate with
// mismatched domain name.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure AllowEndpointDomain.Main;
var
  AttributeData: _UAAttributeData;
  Client: _EasyUAClient;
  EndpointDescriptor: string;
begin
  // Define which server we will work with.
  // Note that extra '.' at the end of the domain name. For the purpose of this example, it allows us to address
  // the same domain, but cause a mismatch with what the names that are listed in the server instance certificate.
  EndpointDescriptor := 'opc.tcp://opcua.demo-this.com.:51210/UA/SampleServer';

  // Instantiate the client object.
  Client := CoEasyUAClient.Create;
  // Enforce the endpoint domain check.
  Client.Isolated := true;
  Client.IsolatedParameters.SessionParameters.CheckEndpointDomain := true;

  try
    // Obtain attribute data.
    // The component automatically triggers the necessary user interaction during the first operation.
    AttributeData := Client.Read(EndpointDescriptor, 'nsu=http://test.org/UA/Data/ ;i=10853');
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
      Exit;
    end;
  end;

  // Display results.
  WriteLn('Value: ', AttributeData.Value);
  WriteLn('ServerTimestamp: ', DateTimeToStr(AttributeData.ServerTimestamp));
  WriteLn('SourceTimestamp: ', DateTimeToStr(AttributeData.SourceTimestamp));
  WriteLn('StatusCode: ', AttributeData.StatusCode.ToString);
end;
//#endregion Example
