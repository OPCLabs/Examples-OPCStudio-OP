// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to obtain nodes under a given node of the OPC-UA
// address space. For each node, it displays its browse name and node ID.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure Browse.Main;
var
  BrowseParameters: _UABrowseParameters;
  BrowsePathParser: _UABrowsePathParser;
  Client: OpcLabs_EasyOpcUA_TLB._EasyUAClient;
  Count: Cardinal;
  Element: OleVariant;
  EndpointDescriptor: _UAEndpointDescriptor;
  NodeDescriptor: _UANodeDescriptor;
  NodeElement: _UANodeElement;
  NodeElementEnumerator: IEnumVariant;
  NodeElements: _UANodeElementCollection;
begin
  EndpointDescriptor := CoUAEndpointDescriptor.Create;
  EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';

  NodeDescriptor := CoUANodeDescriptor.Create;
  BrowsePathParser := CoUABrowsePathParser.Create;
  BrowsePathParser.DefaultNamespaceUriString := 'http://test.org/UA/Data/';
  NodeDescriptor.BrowsePath := BrowsePathParser.Parse('[ObjectsFolder]/Data/Static/UserScalar');

  BrowseParameters := CoUABrowseParameters.Create;
  BrowseParameters.StandardName := 'AllForwardReferences';

  // Instantiate the client object
  Client := CoEasyUAClient.Create;

  try
    NodeElements := Client.Browse(
      EndpointDescriptor,
      NodeDescriptor,
      BrowseParameters);
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
      Exit;
    end;
  end;

  NodeElementEnumerator := NodeElements.GetEnumerator;
  while (NodeElementEnumerator.Next(1, Element, Count) = S_OK) do
  begin
    NodeElement := IUnknown(Element) as _UANodeElement;
    WriteLn(NodeElement.BrowseName.ToString, ': ', NodeElement.NodeId.ToString);
  end;
end;
//#endregion Example
