// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to obtain information about OPC UA servers from the Global Discovery Server (GDS).
// The result is flat, i.e. each discovery URL is returned in separate element, with possible repetition of the servers.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure DiscoverGlobalServers.Main;
var
  Client: OpcLabs_EasyOpcUA_TLB._EasyUAClient;
  Count: Cardinal;
  Element: OleVariant;
  DiscoveryElement: _UADiscoveryElement;
  DiscoveryElementEnumerator: IEnumVariant;
  DiscoveryElements: _UADiscoveryElementCollection;
begin
  // Instantiate the client object
  Client := CoEasyUAClient.Create;

  // Obtain collection of application elements
  try
    DiscoveryElements := Client.DiscoverGlobalServers('opc.tcp://opcua.demo-this.com:58810/GlobalDiscoveryServer');
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
      Exit;
    end;
  end;

  // Display results
  DiscoveryElementEnumerator := DiscoveryElements.GetEnumerator;
  while (DiscoveryElementEnumerator.Next(1, Element, Count) = S_OK) do
  begin
    DiscoveryElement := IUnknown(Element) as _UADiscoveryElement;
    WriteLn;
    WriteLn('Server name: ', DiscoveryElement.ServerName);
    WriteLn('Discovery URI string: ', DiscoveryElement.DiscoveryUriString);
    WriteLn('Server capabilities: ', DiscoveryElement.ServerCapabilities.ToString);
  end;
end;
//#endregion Example
