// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// Shows how to refresh own certificate stores using current trust lists
// for the application from the certificate manager.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure RefreshTrustLists.Main;
var
  Application: TEasyUAApplication;
  GdsEndpointDescriptor: _UAEndpointDescriptor;
  RefreshedTrustLists: UATrustListMasks;
begin
  // Define which GDS we will work with.
  GdsEndpointDescriptor := CoUAEndpointDescriptor.Create;
  GdsEndpointDescriptor.UrlString := 'opc.tcp://opcua.demo-this.com:58810/GlobalDiscoveryServer';
  GdsEndpointDescriptor.UserIdentity.UserNameTokenInfo.UserName := 'appadmin';
  GdsEndpointDescriptor.UserIdentity.UserNameTokenInfo.Password := 'demo';

  // Obtain the application interface.
  Application := TEasyUAApplication.Create(nil);

  // Display which application we are about to work with.
  WriteLn('Application URI string: ', Application.GetApplicationElement.ApplicationUriString);

  // Refresh own certificate stores using current trust lists for the application from the certificate manager.
  try
    RefreshedTrustLists := Application.RefreshTrustLists(gdsEndpointDescriptor, True);
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
      Exit;
    end;
  end;

  // Display results
  WriteLn('Refreshed trust lists: ', RefreshedTrustLists);
end;
//#endregion Example
