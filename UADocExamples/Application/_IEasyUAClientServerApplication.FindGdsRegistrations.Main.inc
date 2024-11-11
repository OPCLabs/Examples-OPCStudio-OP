// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// Shows how to find all application's registrations in the GDS.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure FindGdsRegistrations.Main;
var
  Application: TEasyUAApplication;
  ApplicationElement: _UAApplicationElement;
  ApplicationElementDictionary: _UANodeIdUAApplicationElementReadOnlyDictionary;
  ApplicationId: _UANodeId;
  Count: Cardinal;
  Element: OleVariant;
  Enumerator: IEnumVARIANT;
  GdsEndpointDescriptor: _UAEndpointDescriptor;
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

  // Find all application's registrations in the GDS.
  try
    ApplicationElementDictionary := Application.FindGdsRegistrations(GdsEndpointDescriptor);
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
    end;
  end;

  // Display results
  Enumerator := ApplicationElementDictionary.GetEnumerator;
  while (Enumerator.Next(1, Element, Count) = S_OK) do
  begin
    WriteLn;
    ApplicationId := IUnknown(Element.Key) as _UANodeId;
    WriteLn('Application ID: ', ApplicationId.ToString);

    ApplicationElement := IUnknown(Element.Value) as _UAApplicationElement;
    WriteLn('  Application URI string: ', ApplicationElement.ApplicationUriString);
    WriteLn('  Discovery URI string: ', ApplicationElement.DiscoveryUriString);
    WriteLn('  Product URI string: ', ApplicationElement.ProductUriString);
  end;
end;
//#endregion Example
