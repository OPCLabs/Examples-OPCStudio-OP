// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to recursively browse the nodes in the OPC XML-DA address space.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  TBrowseNodes = class
    BranchCount: Integer;
    LeafCount: Integer;
    procedure BrowseFromNode(
      Client: OpcLabs_EasyOpcClassic_TLB._EasyDAClient;
      ServerDescriptor: _ServerDescriptor;
      ParentNodeDescriptor:  _DANodeDescriptor);
  end;

procedure TBrowseNodes.BrowseFromNode(
      Client: OpcLabs_EasyOpcClassic_TLB._EasyDAClient;
      ServerDescriptor: _ServerDescriptor;
      ParentNodeDescriptor: _DANodeDescriptor);
var
  BrowseParameters: _DABrowseParameters;
  Count: Cardinal;
  Element: OleVariant;
  NodeElement: _DANodeElement;
  NodeElementEnumerator: IEnumVariant;
  NodeElements: _DANodeElementCollection;
begin
  // Obtain all node elements under ParentNodeDescriptor
  BrowseParameters := CoDABrowseParameters.Create;  // no filtering whatsover
  NodeElements := Client.BrowseNodes(
    ServerDescriptor,
    ParentNodeDescriptor,
    BrowseParameters);
  // Remark: that BrowseNodes(...) may also throw OpcException; a production code should contain handling for 
  // it, here omitted for brevity.

  NodeElementEnumerator := NodeElements.GetEnumerator;
  while (NodeElementEnumerator.Next(1, Element, Count) = S_OK) do
  begin
    NodeElement := IUnknown(Element) as _DANodeElement;
    WriteLn(NodeElement.ToString);

    // If the node is a branch, browse recursively into it.
    if NodeElement.IsBranch then
    begin
      BranchCount := BranchCount + 1;
      BrowseFromNode(Client, ServerDescriptor, NodeElement.ToDANodeDescriptor);
    end
    else
      LeafCount := LeafCount + 1;
  end;
end;

class procedure BrowseNodes.RecursiveXml;
var
  BeginTime: Cardinal;
  BrowseNodes: TBrowseNodes;
  Client: OpcLabs_EasyOpcClassic_TLB._EasyDAClient;
  EndTime: Cardinal;
  ServerDescriptor: _ServerDescriptor;
  NodeDescriptor: _DANodeDescriptor;
begin
  BrowseNodes := TBrowseNodes.Create;
  BrowseNodes.BranchCount := 0;
  BrowseNodes.LeafCount := 0;

  BeginTime := Ticks;

  ServerDescriptor := CoServerDescriptor.Create;
  ServerDescriptor.UrlString := 'http://opcxml.demo-this.com/XmlDaSampleServer/Service.asmx';

  NodeDescriptor := CoDANodeDescriptor.Create;
  NodeDescriptor.ItemId := '';

  // Instantiate the client object
  Client := CoEasyDAClient.Create;

  try
    BrowseNodes.BrowseFromNode(
      Client,
      ServerDescriptor,
      NodeDescriptor);
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
      Exit;
    end;
  end;

  EndTime := Ticks;

  WriteLn;
  WriteLn('Browsing has taken (milliseconds): ', (endTime - beginTime) * 1000);
  WriteLn('Branch count: ', BrowseNodes.BranchCount);
  WriteLn('Leaf count: ', BrowseNodes.LeafCount);
end;
//#endregion Example
