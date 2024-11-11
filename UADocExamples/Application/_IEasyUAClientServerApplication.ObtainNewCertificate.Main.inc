// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// Shows how to obtain a new application certificate from the certificate manager (GDS),
// and store it for subsequent usage.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure ObtainNewCertificate.Main;
var
  Application: TEasyUAApplication;
  ApplicationElement: _UAApplicationElement;
  Certificate: _PkiCertificate;
  GdsEndpointDescriptor: _UAEndpointDescriptor;
  Arguments: _UAObtainCertificateArguments;
begin
  // Define which GDS we will work with.
  GdsEndpointDescriptor := CoUAEndpointDescriptor.Create;
  GdsEndpointDescriptor.UrlString := 'opc.tcp://opcua.demo-this.com:58810/GlobalDiscoveryServer';
  GdsEndpointDescriptor.UserIdentity.UserNameTokenInfo.UserName := 'appadmin';
  GdsEndpointDescriptor.UserIdentity.UserNameTokenInfo.Password := 'demo';

  // Obtain the application interface.
  Application := TEasyUAApplication.Create(nil);

  // Display which application we are about to work with.
  ApplicationElement := Application.GetApplicationElement;
  WriteLn('Application URI string: ', Application.GetApplicationElement.ApplicationUriString);

  // Obtain a new application certificate from the certificate manager (GDS), and store it for subsequent usage.
  Arguments := CoUAObtainCertificateArguments.Create;
  Arguments.Parameters.GdsEndpointDescriptor := GdsEndpointDescriptor;

  try
    Certificate := Application.ObtainNewCertificate(Arguments);
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
    end;
  end;

  // Display results
  WriteLn('Certificate: ', (Certificate as _PKICertificate).ToString);
end;
//#endregion Example
