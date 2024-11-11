// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows different ways of constructing OPC UA node IDs.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure _Construction.Main;
var
  BrowseParameters: _UABrowseParameters;
  Client27: _EasyUAClient;
  EndpointDescriptor: _UAEndpointDescriptor;
  NodeId1, NodeId2, NodeId3, NodeId4, NodeId5, NodeId6, NodeId7, NodeId8, NodeId9, NodeId10,
  NodeId11, NodeId12, NodeId14, NodeId15, NodeId17, NodeId18,
  NodeId20, NodeId21, NodeId26, NodeId27,
  ServerNodeId, ReferencesNodeId: OpcLabs_EasyOpcUA_TLB._UANodeId;
  NodeId11Result: OleVariant;
  NodeIdParser10, NodeIdParser11, NodeIdParser12: _UANodeIdParser;
  NodeElements27: _UANodeElementCollection;
  OpaqueIdentifier21: Variant;
  ServerNodeDescriptor: _UANodeDescriptor;
  StringParsingError: _StringParsingError;
begin
  // A node ID specifies a namespace (either by an URI or by an index), and an identifier.
  // The identifier can be numeric (an integer), string, GUID, or opaque.

  // A node ID can be specified in string form (so-called expanded text).
  // The code below specifies a namespace URI (nsu=...), and an integer identifier (i=...).
  // Assigning an expanded text to a node ID parses the value being assigned and sets all corresponding
  // properties accordingly.
  NodeId1 := CoUANodeId.Create;
  NodeId1.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10853';
  WriteLn(NodeId1.ToString);


  // Similarly, with a string identifier (s=...).
  NodeId2 := CoUANodeId.Create;
  NodeId2.ExpandedText := 'nsu=http://test.org/UA/Data/ ;s=someIdentifier';
  WriteLn(NodeId2.ToString);


  // Actually, "s=" can be omitted (not recommended, though)
  NodeId3 := CoUANodeId.Create;
  NodeId3.ExpandedText := 'nsu=http://test.org/UA/Data/ ;someIdentifier';
  WriteLn(NodeId3.ToString);
  // Notice that the output is normalized - the "s=" is added again.


  // Similarly, with a GUID identifier (g=...)
  NodeId4 := CoUANodeId.Create;
  NodeId4.ExpandedText := 'nsu=http://test.org/UA/Data/ ;g=BAEAF004-1E43-4A06-9EF0-E52010D5CD10';
  WriteLn(NodeId4.ToString);
  // Notice that the output is normalized - uppercase letters in the GUI are converted to lowercase, etc.


  // Similarly, with an opaque identifier (b=..., in Base64 encoding).
  NodeId5 := CoUANodeId.Create;
  NodeId5.ExpandedText := 'nsu=http://test.org/UA/Data/ ;b=AP8=';
  WriteLn(NodeId5.ToString);


  // Namespace index can be used instead of namespace URI. The server is allowed to change the namespace
  // indices between sessions (except for namespace 0), and for this reason, you should avoid the use of
  // namespace indices, and rather use the namespace URIs whenever possible.
  NodeId6 := CoUANodeId.Create;
  NodeId6.ExpandedText := 'ns=2;i=10853';
  WriteLn(NodeId6.ToString);


  // Namespace index can be also specified together with namespace URI. This is still safe, but may be
  // a bit quicker to perform, because the client can just verify the namespace URI instead of looking
  // it up.
  NodeId7 := CoUANodeId.Create;
  NodeId7.ExpandedText := 'nsu=http://test.org/UA/Data/ ;ns=2;i=10853';
  WriteLn(NodeId7.ToString);


  // When neither namespace URI nor namespace index are given, the node ID is assumed to be in namespace
  // with index 0 and URI "http://opcfoundation.org/UA/", which is reserved by OPC UA standard. There are
  // many standard nodes that live in this reserved namespace, but no nodes specific to your servers will
  // be in the reserved namespace, and hence the need to specify the namespace with server-specific nodes.
  NodeId8 := CoUANodeId.Create;
  NodeId8.ExpandedText := 'i=2254';
  WriteLn(NodeId8.ToString);


  // If you attempt to pass in a string that does not conform to the syntax rules,
  // a UANodeIdFormatException is thrown.
  NodeId9 := CoUANodeId.Create;
  try
    NodeId9.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=notAnInteger';
    WriteLn(NodeId9.ToString);
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.BaseException.Message]));
    end;
  end;


  // There is a parser object that can be used to parse the expanded texts of node IDs.
  NodeIdParser10 := CoUANodeIdParser.Create;
  NodeId10 := NodeIdParser10.Parse('nsu=http://test.org/UA/Data/ ;i=10853', False);
  WriteLn(NodeId10.ToString);


  // The parser can be used if you want to parse the expanded text of the node ID but do not want
  // exceptions be thrown.
  NodeIdParser11 := CoUANodeIdParser.Create;
  StringParsingError := NodeIdParser11.TryParse('nsu=http://test.org/UA/Data/ ;i=notAnInteger', False, NodeId11Result);
  if StringParsingError = nil then
    begin
      NodeId11 := IUnknown(NodeId11Result) as OpcLabs_EasyOpcUA_TLB._UANodeId;
      WriteLn(NodeId11.ToString);
    end
  else
    WriteLn(Format('*** Failure: %s', [StringParsingError.Message]));


  // You can also use the parser if you have node IDs where you want the default namespace be different
  // from the standard "http://opcfoundation.org/UA/".
  NodeIdParser12 := CoUANodeIdParser.Create;
  NodeIdParser12.DefaultNamespaceUriString := 'http://test.org/UA/Data/';
  NodeId12 := NodeIdParser12.Parse('i=10853', False);
  WriteLn(NodeId12.ToString);


  // You can create a "null" node ID. Such node ID does not actually identify any valid node in OPC UA, but
  // is useful as a placeholder or as a starting point for further modifications of its properties.
  NodeId14 := CoUANodeId.Create;
  WriteLn(NodeId14.ToString);


  // Properties of a node ID can be modified individually. The advantage of this approach is that you do
  // not have to care about syntax of the node ID expanded text.
  NodeId15 := CoUANodeId.Create;
  NodeId15.NamespaceUriString := 'http://test.org/UA/Data/';
  NodeId15.Identifier := 10853;
  WriteLn(NodeId15.ToString);


  // If you know the type of the identifier upfront, it is safer to use typed properties that correspond
  // to specific types of identifier. Here, with an integer identifier.
  NodeId17 := CoUANodeId.Create;
  NodeId17.NamespaceUriString := 'http://test.org/UA/Data/';
  NodeId17.NumericIdentifier := 10853;
  WriteLn(NodeId17.ToString);


  // Similarly, with a string identifier.
  NodeId18 := CoUANodeId.Create;
  NodeId18.NamespaceUriString := 'http://test.org/UA/Data/';
  NodeId18.StringIdentifier := 'someIdentifier';
  WriteLn(NodeId18.ToString);


  // If you have GUID in its string form, the node ID object can parse it for you.
  NodeId20 := CoUANodeId.Create;
  NodeId20.NamespaceUriString := 'http://test.org/UA/Data/';
  NodeId20.GuidIdentifierString := 'BAEAF004-1E43-4A06-9EF0-E52010D5CD10';
  WriteLn(NodeId20.ToString);


  // And, with an opaque identifier.
  NodeId21 := CoUANodeId.Create;
  NodeId21.NamespaceUriString := 'http://test.org/UA/Data/';
//  OpaqueIdentifier21 := VarArrayCreate ([0, 1], varByte);
  OpaqueIdentifier21 := VarArrayCreate ([0, 1], varVariant);
  OpaqueIdentifier21[0] := $00;
  OpaqueIdentifier21[1] := $FF;
  NodeId21.OpaqueIdentifier := PSafeArray (TVarData (OpaqueIdentifier21).VArray);
  WriteLn(NodeId21.ToString);


  // We have built-in a list of all standard nodes specified by OPC UA. You can simply refer to these node IDs in your code.
  // You can refer to any standard node using its name (in a string form).
  // Note that assigning a non-existing standard name is not allowed, and throws ArgumentException.
  NodeId26 := CoUANodeId.Create;
  NodeId26.StandardName := 'TypesFolder';
  WriteLn(NodeId26.ToString);
  // When the UANodeId equals to one of the standard nodes, it is output in the shortened form - as the standard name only.


  // When you browse for nodes in the OPC UA server, every returned node element contains a node ID that
  // you can use further.
  Client27 := CoEasyUAClient.Create;
  EndpointDescriptor := CoUAEndpointDescriptor.Create;
  EndpointDescriptor.UrlString := 'http://opcua.demo-this.com:51211/UA/SampleServer';
  // Browse from the Server node.
  ServerNodeId := CoUANodeId.Create;
  ServerNodeId.StandardName := 'Server';
  ServerNodeDescriptor := CoUANodeDescriptor.Create;
  ServerNodeDescriptor.NodeId := ServerNodeId;
  // Browse all References.
  ReferencesNodeId := CoUANodeId.Create;
  ReferencesNodeId.StandardName := 'References';

  BrowseParameters := CoUABrowseParameters.Create;
  BrowseParameters.NodeClasses := UANodeClass_All;  // this is the default, anyway
  BrowseParameters.ReferenceTypeIds.Add(ReferencesNodeId);

  try
    NodeElements27 := Client27.Browse(EndpointDescriptor, ServerNodeDescriptor, BrowseParameters);
    if NodeElements27.Count <> 0 then
    begin
      NodeId27 := NodeElements27[0].NodeId;
      WriteLn(NodeId27.ToString);
    end;
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.BaseException.Message]));
    end;
  end;
end;
//#endregion Example
