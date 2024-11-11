// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// Shows how to obtain object describing the data type of complex data node with OPC UA Complex Data plug-in.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure ResolveDataType.Main;
var
  Client: _EasyUAClient;
  ComplexData: _EasyUAClientComplexData;
  DataType: _DataType;
  DataTypeId: string;
  DataTypeResult: _ValueResult;
  EncodingName: _UAQualifiedName;
  EndpointDescriptor: string;
  ModelNodeDescriptor: _UAModelNodeDescriptor;
begin
  // Define which server and node we will work with.
  EndpointDescriptor := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';

  // Instantiate the client object
  Client := CoEasyUAClient.Create;

  // Obtain the data type ID.
  //
  // In many cases, you would be able to obtain the data type ID of a particular node by reading its DataType
  // attribute.
  // The sample server, however, shows a more advanced approach in which the data type ID refers to an abstract data type, and
  // the actual values are then sub-types of this base data type. This abstract data type does not have any encodings
  // associated with it and it is therefore not possible to extract its description from the server. We therefore use
  // a hard-coded data type ID for one of the sub-types in this example.
  DataTypeId := 'nsu=http://test.org/UA/Data/ ;i=9440';    // ScalarValueDataType

  // Get the IEasyUAClientComplexData service from the client. This is needed for advanced complex data
  // operations.
  ComplexData := IInterface(Client.GetServiceByName('OpcLabs.EasyOpc.UA.Plugins.ComplexData.IEasyUAClientComplexData, OpcLabs.EasyOpcUA')) as _EasyUAClientComplexData;

  // Resolve the data type ID to the data type object, containing description of the data type.
  ModelNodeDescriptor := CoUAModelNodeDescriptor.Create;
  ModelNodeDescriptor.EndpointDescriptor.UrlString := EndpointDescriptor;
  ModelNodeDescriptor.NodeDescriptor.NodeId.ExpandedText := DataTypeId;
  EncodingName := CoUAQualifiedName.Create;
  EncodingName.StandardName := 'DefaultBinary';
  DataTypeResult := ComplexData.ResolveDataType(ModelNodeDescriptor, EncodingName);
  if not DataTypeResult.Succeeded then
  begin
    WriteLn(Format('*** Failure: %s', [DataTypeResult.ErrorMessageBrief]));
    Exit;
  end;

  // The actual data type is in the Value property.
  DataType := IUnknown(DataTypeResult.Value) as _DataType;

  // Display basic information about what we have obtained.
  WriteLn(DataType.ToString);

  // If we want to see the whole hierarchy of the received data type, we can format it with the "V" (verbose)
  // specifier.
  Writeln;
  Writeln(DataType.ToString_2['V', nil]);

  // For processing the internals of the data type, refer to examples for GenericData class.


  // Example output (truncated):
  //
  //ScalarValueDataType = structured
  //
  //ScalarValueDataType = structured
  //  [BooleanValue] Boolean = primitive(System.Boolean)
  //  [ByteStringValue] ByteString = primitive(System.Byte[])
  //  [ByteValue] Byte = primitive(System.Byte)
  //  [DateTimeValue] DateTime = primitive(System.DateTime)
  //  [DoubleValue] Double = primitive(System.Double)
  //  [EnumerationValue] Int32 = primitive(System.Int32)
  //  [ExpandedNodeIdValue] ExpandedNodeId = structured
  //    [ByteString] optional ByteStringNodeId = structured
  //      [Identifier] ByteString = primitive(System.Byte[])
  //      [NamespaceIndex] UInt16 = primitive(System.UInt16)
  //    [FourByte] optional FourByteNodeId = structured
  //      [Identifier] UInt16 = primitive(System.UInt16)
  //      [NamespaceIndex] Byte = primitive(System.Byte)
  //    [Guid] optional GuidNodeId = structured
  //      [Identifier] Guid = primitive(System.Guid)
  //      [NamespaceIndex] UInt16 = primitive(System.UInt16)
  //    [NamespaceURI] optional CharArray = primitive(System.String)
  //    [NamespaceURISpecified] switch Bit = primitive(System.Boolean)
  //    [NodeIdType] switch NodeIdType = enumeration(6)
  //      TwoByte = 0
  //      FourByte = 1
  //      Numeric = 2
  //      String = 3
  //      Guid = 4
  //      ByteString = 5
  //    [Numeric] optional NumericNodeId = structured
  //      [Identifier] UInt32 = primitive(System.UInt32)
  //      [NamespaceIndex] UInt16 = primitive(System.UInt16)
  //    [ServerIndex] optional UInt32 = primitive(System.UInt32)
  //    [ServerIndexSpecified] switch Bit = primitive(System.Boolean)
  //    [String] optional StringNodeId = structured
  //      [Identifier] CharArray = primitive(System.String)
  //      [NamespaceIndex] UInt16 = primitive(System.UInt16)
  //    [TwoByte] optional TwoByteNodeId = structured
  //      [Identifier] Byte = primitive(System.Byte)
  //  [FloatValue] Float = primitive(System.Single)
  //  [GuidValue] Guid = primitive(System.Guid)
  //  [Int16Value] Int16 = primitive(System.Int16)
  //  [Int32Value] Int32 = primitive(System.Int32)
  //  [Int64Value] Int64 = primitive(System.Int64)
  //  [Integer] Variant = structured
  //    [ArrayDimensions] optional sequence[*] of Int32 = primitive(System.Int32)
  //    [ArrayDimensionsSpecified] switch sequence[1] of Bit = primitive(System.Boolean)
  //    [ArrayLength] length optional Int32 = primitive(System.Int32)
  //    [ArrayLengthSpecified] switch sequence[1] of Bit = primitive(System.Boolean)
  //    [Boolean] optional sequence[*] of Boolean = primitive(System.Boolean)
  //    [Byte] optional sequence[*] of Byte = primitive(System.Byte)

end;
//#endregion Example
