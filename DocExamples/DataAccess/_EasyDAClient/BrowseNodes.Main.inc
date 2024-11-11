// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to obtain all nodes under the "Simulation" branch of the address space. For each node, it displays
// whether the node is a branch or a leaf.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure BrowseNodes.Main;
var
  BrowseParameters: _DABrowseParameters;
  Client: OpcLabs_EasyOpcClassic_TLB._EasyDAClient;
  Count: Cardinal;
  Element: OleVariant;
  ServerDescriptor: _ServerDescriptor;
  NodeDescriptor: _DANodeDescriptor;
  NodeElement: _DANodeElement;
  NodeElementEnumerator: IEnumVariant;
  NodeElements: _DANodeElementCollection;
begin
  ServerDescriptor := CoServerDescriptor.Create;
  ServerDescriptor.ServerClass := 'OPCLabs.KitServer.2';

  NodeDescriptor := CoDANodeDescriptor.Create;
  NodeDescriptor.ItemId := 'Simulation';

  BrowseParameters := CoDABrowseParameters.Create;

  // Instantiate the client object
  Client := CoEasyDAClient.Create;

  try
    NodeElements := Client.BrowseNodes(
      ServerDescriptor,
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
    NodeElement := IUnknown(Element) as _DANodeElement;
//    WriteLn(NodeElement.Name, ': ', NodeElement.ItemId);
    WriteLn('BrowseElements("', NodeElement.Name, '"):');
    WriteLn('    .IsBranch: ', NodeElement.IsBranch);
    WriteLn('    .IsLeaf: ', NodeElement.IsLeaf);
  end;
end;
//#endregion Example
