// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to enumerate all properties of an OPC item. For each property, it displays its Id and description.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure BrowseProperties.Main;
var
  Client: OpcLabs_EasyOpcClassic_TLB._EasyDAClient;
  Count: Cardinal;
  Element: OleVariant;
  ServerDescriptor: _ServerDescriptor;
  NodeDescriptor: _DANodeDescriptor;
  PropertyElement: _DAPropertyElement;
  PropertyElementEnumerator: IEnumVariant;
  PropertyElements: _DAPropertyElementCollection;
begin
  ServerDescriptor := CoServerDescriptor.Create;
  ServerDescriptor.ServerClass := 'OPCLabs.KitServer.2';

  NodeDescriptor := CoDANodeDescriptor.Create;
  NodeDescriptor.ItemId := 'Simulation.Random';

  // Instantiate the client object
  Client := CoEasyDAClient.Create;

  try
    PropertyElements := Client.BrowseProperties(
      ServerDescriptor,
      NodeDescriptor);
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
      Exit;
    end;
  end;

  PropertyElementEnumerator := PropertyElements.GetEnumerator;
  while (PropertyElementEnumerator.Next(1, Element, Count) = S_OK) do
  begin
    PropertyElement := IUnknown(Element) as _DAPropertyElement;
    WriteLn('PropertyElements("', PropertyElement.PropertyId.NumericalValue, '").Description: ', PropertyElement.Description);
  end;
end;
//#endregion Example
