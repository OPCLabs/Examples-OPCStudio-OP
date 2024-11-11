// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to obtain properties under the "Server" node
// in the address space.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure BrowseProperties.Main;
var
  Client: OpcLabs_EasyOpcUA_TLB._EasyUAClient;
  Count: Cardinal;
  Element: OleVariant;
  EndpointDescriptor: string;
  NodeElement: _UANodeElement;
  NodeElementEnumerator: IEnumVariant;
  NodeElements: _UANodeElementCollection;
  ServerNodeId: _UANodeId;
begin
  EndpointDescriptor := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';

  // Instantiate the client object
  Client := CoEasyUAClient.Create;

  // Obtain properties under "Server" node
  ServerNodeId := CoUANodeId.Create;
  ServerNodeId.StandardName := 'Server';
  try
    NodeElements := Client.BrowseProperties(EndpointDescriptor, ServerNodeId.ExpandedText);
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
      Exit;
    end;
  end;

  // Display results
  NodeElementEnumerator := NodeElements.GetEnumerator;
  while (NodeElementEnumerator.Next(1, Element, Count) = S_OK) do
  begin
    NodeElement := IUnknown(Element) as _UANodeElement;
    WriteLn;
    WriteLn('nodeElement.NodeId: ', NodeElement.NodeId.ToString);
    WriteLn('nodeElement.NodeId.ExpandedText: ', NodeElement.NodeId.ExpandedText);
    WriteLn('nodeElement.DisplayName: ', NodeElement.DisplayName);
  end;

  // Example output:
  //
  //nodeElement.NodeId: Server_ServerArray
  //nodeElement.NodeId.ExpandedText: nsu=http://opcfoundation.org/UA/ ;i=2254
  //nodeElement.DisplayName: ServerArray
  //
  //nodeElement.NodeId: Server_NamespaceArray
  //nodeElement.NodeId.ExpandedText: nsu=http://opcfoundation.org/UA/ ;i=2255
  //nodeElement.DisplayName: NamespaceArray
  //
  //nodeElement.NodeId: Server_ServiceLevel
  //nodeElement.NodeId.ExpandedText: nsu=http://opcfoundation.org/UA/ ;i=2267
  //nodeElement.DisplayName: ServiceLevel
  //
  //nodeElement.NodeId: Server_Auditing
  //nodeElement.NodeId.ExpandedText: nsu=http://opcfoundation.org/UA/ ;i=2994
  //nodeElement.DisplayName: Auditing

end;
//#endregion Example
