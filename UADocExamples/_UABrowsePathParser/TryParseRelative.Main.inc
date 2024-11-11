// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// Attempts to parse a relative OPC-UA browse path and displays its elements.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure TryParseRelative.Main;
var
  BrowsePathElement: _UABrowsePathElement;
  BrowsePathElements: _UABrowsePathElementCollection;
  BrowsePathParser: OpcLabs_EasyOpcUA_TLB._UABrowsePathParser;
  Count: Cardinal;
  Element: OleVariant;
  ElementEnumerator: IEnumVariant;
  StringParsingError: _StringParsingError;
begin
  BrowsePathElements := CoUABrowsePathElementCollection.Create;

  BrowsePathParser := CoUABrowsePathParser.Create;
  StringParsingError := BrowsePathParser.TryParseRelative('/Data.Dynamic.Scalar.CycleComplete', BrowsePathElements);

  // Display results
  if StringParsingError <> nil then
  begin
    WriteLn('*** Error: ', StringParsingError.ToString);
    Exit;
  end;

  ElementEnumerator := BrowsePathElements.GetEnumerator;
  while (ElementEnumerator.Next(1, Element, Count) = S_OK) do
  begin
    BrowsePathElement := IUnknown(Element) as _UABrowsePathElement;
    WriteLn(BrowsePathElement.ToString);
  end;

  // Example output:
  // /Data
  // .Dynamic
  // .Scalar
  // .CycleComplete

end;
//#endregion Example
