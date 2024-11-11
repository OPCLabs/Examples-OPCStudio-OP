// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to obtain a data type of all OPC XML-DA items under a branch.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure GetMultiplePropertyValues.DataTypeXml;
var
  Arguments: OleVariant;
  BrowseParameters: _DABrowseParameters;
  Client: OpcLabs_EasyOpcClassic_TLB._EasyDAClient;
  Count: Cardinal;
  Element: OleVariant;
  I: Cardinal;
  PropertyArguments: _DAPropertyArguments;
  ServerDescriptor: _ServerDescriptor;
  NodeDescriptor: _DANodeDescriptor;
//  NodeDescriptorArray: Array of DANodeDescriptor;
  NodeElement: _DANodeElement;
  NodeElementCollection: _DANodeElementCollection;
  NodeElementEnumerator: IEnumVariant;
  ValueResult: _ValueResult;
  ValueResultArray: OleVariant;
  VarType: _VarType;
begin
  ServerDescriptor := CoServerDescriptor.Create;
  ServerDescriptor.UrlString := 'http://opcxml.demo-this.com/XmlDaSampleServer/Service.asmx';

  NodeDescriptor := CoDANodeDescriptor.Create;
  NodeDescriptor.ItemId := 'Static/Analog Types';

  BrowseParameters := CoDABrowseParameters.Create;
  BrowseParameters.BrowseFilter := DABrowseFilter_Leaves;

  // Instantiate the client object
  Client := CoEasyDAClient.Create;

  // Browse for all leaves under the "Static/Analog Types" branch
  NodeElementCollection := Client.BrowseNodes(
      ServerDescriptor,
      NodeDescriptor,
      BrowseParameters);


  // Create list of node descriptors, one for aeach leaf obtained
  I := 0;
  Arguments := VarArrayCreate([0, NodeElementCollection.Count - 1], varVariant);
  NodeElementEnumerator := NodeElementCollection.GetEnumerator;
  while (NodeElementEnumerator.Next(1, Element, Count) = S_OK) do
  begin
    NodeElement := IUnknown(Element) as _DANodeElement;
    // filter out hint leafs that do not represent real OPC XML-DA items (rare)
    if Not NodeElement.IsHint then
    begin
      PropertyArguments := CoDAPropertyArguments.Create;
      PropertyArguments.ServerDescriptor := ServerDescriptor;
      PropertyArguments.NodeDescriptor := NodeElement.ToDANodeDescriptor;
      PropertyArguments.PropertyDescriptor.PropertyId.InternalValue := DAPropertyIds_DataType;
      Arguments[I] := PropertyArguments;
      I := I + 1;
    end;
  end;
//  SetLength(Arguments, I);

  // Get the value of DataType property; it is a 16-bit signed integer
  TVarData(ValueResultArray).VType := varArray or varVariant;
  TVarData(ValueResultArray).VArray := PVarArray(
    Client.GetMultiplePropertyValues(Arguments));

  // Display results
  for I := VarArrayLowBound(ValueResultArray, 1) to VarArrayHighBound(ValueResultArray, 1) do
  begin
      ValueResult := IInterface(ValueResultArray[I]) as _ValueResult;

      // Check if there has been an error getting the property value
      if ValueResult.Exception <> nil then
      begin
        WriteLn(Format('%s *** Failure: %s', [Arguments[I].NodeDescriptor.NodeId, ValueResult.Exception.Message]));
        Continue;
      end;

      // Convert the data type to VarType
      VarType := CoVarType.Create;
      VarType.InternalValue := ValueResult.Value;

      // Display the obtained data type
      WriteLn(Format('%s: %s', [Arguments[I].NodeDescriptor.NodeId, VarType.ToString]));
  end;
  VarClear(ValueResultArray);
  VarClear(Arguments);
end;
//#endregion Example
