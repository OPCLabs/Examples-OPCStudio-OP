// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how in a console application, the user is asked to accept a server HTTPS certificate.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure AcceptCertificate.Https;
var
  AttributeData: _UAAttributeData;
  Client: OpcLabs_EasyOpcUA_TLB._EasyUAClient;
  ClientManagement: TEasyUAClientManagement;
  EndpointDescriptor: string;
begin
  // The configuration object allows access to static behavior.
  ClientManagement := TEasyUAClientManagement.Create(nil);
  ClientManagement.Connect;

  // Do not implicitly trust any endpoint URLs. We want the user be asked explicitly.
  ClientManagement.SharedParameters.EngineParameters.CertificateAcceptancePolicy.TrustedEndpointUrlStrings.Clear();

  // Define which server we will work with.
  EndpointDescriptor := 'https://opcua.demo-this.com:51212/UA/SampleServer/';

  // Instantiate the client object.
  Client := CoEasyUAClient.Create;
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

  FreeAndNil(ClientManagement);
end;
//#endregion Example
