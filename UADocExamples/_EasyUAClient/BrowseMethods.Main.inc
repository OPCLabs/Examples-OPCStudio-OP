// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to obtain all method nodes under a given node of
// the OPC-UA address space. For each node, it displays its browse name and
// node ID.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure BrowseMethods.Main;
var
  Client: OpcLabs_EasyOpcUA_TLB._EasyUAClient;
  Count: Cardinal;
  Element: OleVariant;
  NodeElement: _UANodeElement;
  NodeElementEnumerator: IEnumVariant;
  NodeElements: _UANodeElementCollection;
begin
  // Instantiate the client object
  Client := CoEasyUAClient.Create;

  try
    NodeElements := Client.BrowseMethods(
      //'http://opcua.demo-this.com:51211/UA/SampleServer',
      //'https://opcua.demo-this.com:51212/UA/SampleServer/',
      'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer',
      'nsu=http://test.org/UA/Data/ ;i=10755');
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

  // Example output:
  // ScalarMethod1: nsu=http://test.org/UA/Data/ ;ns=2;i=10756
  // ScalarMethod2: nsu=http://test.org/UA/Data/ ;ns=2;i=10759
  // ScalarMethod3: nsu=http://test.org/UA/Data/ ;ns=2;i=10762
  // ArrayMethod1: nsu=http://test.org/UA/Data/ ;ns=2;i=10765
  // ArrayMethod2: nsu=http://test.org/UA/Data/ ;ns=2;i=10768
  // ArrayMethod3: nsu=http://test.org/UA/Data/ ;ns=2;i=10771
  // UserScalarMethod1: nsu=http://test.org/UA/Data/ ;ns=2;i=10774
  // UserScalarMethod2: nsu=http://test.org/UA/Data/ ;ns=2;i=10777
  // UserArrayMethod1: nsu=http://test.org/UA/Data/ ;ns=2;i=10780
  // UserArrayMethod2: nsu=http://test.org/UA/Data/ ;ns=2;i=10783

end;
//#endregion Example
