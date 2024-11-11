// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// Shows how to check if an application needs to update its certificate.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure GetCertificateStatus.Main;
var
  Application: TEasyUAApplication;
  ApplicationId: _UANodeId;
  CertificateManagementClient: OpcLabs_EasyOpcUA_TLB._EasyUACertificateManagementClient;
  GdsEndpointDescriptor: _UAEndpointDescriptor;
  NullNodeId: _UANodeId;
  UpdateRequired: boolean;
begin
  // Define which GDS we will work with.
  GdsEndpointDescriptor := CoUAEndpointDescriptor.Create;
  GdsEndpointDescriptor.UrlString := 'opc.tcp://opcua.demo-this.com:58810/GlobalDiscoveryServer';
  GdsEndpointDescriptor.UserIdentity.UserNameTokenInfo.UserName := 'appadmin';
  GdsEndpointDescriptor.UserIdentity.UserNameTokenInfo.Password := 'demo';

  // Register our client application with the GDS, so that we obtain an application ID that we need later.
  // Obtain the application interface.
  Application := TEasyUAApplication.Create(nil);

  // Create an application registration in the GDS, assigning it a new application ID.
  try
    ApplicationId := Application.RegisterToGds(GdsEndpointDescriptor);
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
    end;
  end;

  WriteLn('Application ID: ', ApplicationId.ToString);

  // Instantiate the certificate management client object
  CertificateManagementClient := CoEasyUACertificateManagementClient.Create;

  // Check if the application needs to update its certificate.
  NullNodeId := CoUANodeId.Create;
  UpdateRequired := false;
  try
    UpdateRequired := CertificateManagementClient.GetCertificateStatus(GdsEndpointDescriptor, ApplicationId, NullNodeId, NullNodeId);
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
    end;
  end;

  // Display results
  WriteLn('Update required: ', UpdateRequired);

  // Example output:
  //Application ID: nsu=http://opcfoundation.org/UA/GDS/applications/ ;ns=2;g=aec94459-f513-4979-8619-8383555fca61
  //Update required: FALSE

end;
//#endregion Example
