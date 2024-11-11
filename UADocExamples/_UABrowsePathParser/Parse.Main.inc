// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// Parses an absolute  OPC-UA browse path and displays its starting node and elements.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure Parse.Main;
var
  BrowsePath: _UABrowsePath;
  BrowsePathElement: _UABrowsePathElement;
  BrowsePathParser: OpcLabs_EasyOpcUA_TLB._UABrowsePathParser;
  Count: Cardinal;
  Element: OleVariant;
  ElementEnumerator: IEnumVariant;
begin
  BrowsePathParser := CoUABrowsePathParser.Create;

  try
    BrowsePath := BrowsePathParser.Parse('[ObjectsFolder]/Data/Static/UserScalar');
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
      Exit;
    end;
  end;

  // Display results
  WriteLn('StartingNodeId: ', BrowsePath.StartingNodeId.ToString);

  WriteLn('Elements:');
  ElementEnumerator := BrowsePath.Elements.GetEnumerator;
  while (ElementEnumerator.Next(1, Element, Count) = S_OK) do
  begin
    BrowsePathElement := IUnknown(Element) as _UABrowsePathElement;
    WriteLn(BrowsePathElement.ToString);
  end;

  // Example output:
  // StartingNodeId: ObjectsFolder
  // Elements:
  // /Data
  // /Static
  // /UserScalar

end;
//#endregion Example
