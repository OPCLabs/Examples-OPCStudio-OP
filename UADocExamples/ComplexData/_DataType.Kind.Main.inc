// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// Shows how to process a data type, displaying some of its properties, recursively.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure Kind.Main;
var
  Client: _EasyUAClient;
  DataType: OpcLabs_BaseLib_TLB._DataType;
  EndpointDescriptor: string;
  GenericObject: _UAGenericObject;
  NodeDescriptor: string;
begin
  // Define which server and node we will work with.
  EndpointDescriptor := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  NodeDescriptor := 'nsu=http://test.org/UA/Data/ ;i=10239';  // [ObjectsFolder]/Data.Static.Scalar.StructureValue

  // Instantiate the client object
  Client := CoEasyUAClient.Create;

  // Read a node. We know that this node returns complex data, so we can type cast to UAGenericObject.

  try
    GenericObject := IUnknown(Client.ReadValue(EndpointDescriptor, NodeDescriptor)) as _UAGenericObject;
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
      Exit;
    end;
  end;

  // The data type is in the GenericData.DataType property of the UAGenericObject.
  DataType := genericObject.GenericData.DataType;

  // Process the data type. We will inspect some of its properties, and dump them.
  ProcessDataType(DataType, 2);
end;

// Process the data type. It can be recursive in itself, so if you do not know the data type you are dealing with,
// it is recommended to make safeguards against infinite looping or recursion - here, the maximumDepth.
class procedure Kind.ProcessDataType(DataType: OpcLabs_BaseLib_TLB._DataType; MaximumDepth: Cardinal);
var
  Count: Cardinal;
  DataField: _DataField;
  Element: OleVariant;
  ElementEnumerator: IEnumVARIANT;
  EnumerationMember: _EnumerationMember;
  EnumerationDataType: _EnumerationDataType;
  FieldNames: string;
  First: boolean;
  MemberNames: string;
  OpaqueDataType: _OpaqueDataType;
  PrimitiveDataType: _PrimitiveDataType;
  SequenceDataType: _SequenceDataType;
  StructuredDataType: _StructuredDataType;
  TypeName: WideString;
begin
  if MaximumDepth = 0 then
    Exit;

  WriteLn;
  WriteLn('dataType.Name: ', DataType.Name);

  case DataType.Kind of
    DataTypeKind_Enumeration:
      begin
        WriteLn('The data type is an enumeration.');
        EnumerationDataType := DataType as _EnumerationDataType;
        WriteLn(Format('It has %s enumeration members.', [EnumerationDataType.EnumerationMembers.Count]));
        ElementEnumerator := EnumerationDataType.EnumerationMembers.GetEnumerator;
        MemberNames := '';
        First := True;
        while (ElementEnumerator.Next(1, Element, Count) = S_OK) do
        begin
          EnumerationMember := IUnknown(Element) as _EnumerationMember;
          if First then
            First := False
          else
            MemberNames := MemberNames + ', ';
          MemberNames := MemberNames + EnumerationMember.Name;
        end;
        WriteLn(Format('The names of the enumeration members are: %s.', [MemberNames]));
        // Here you can process the members, or inspect SizeInBits etc.
      end;
    DataTypeKind_Opaque:
      begin
        WriteLn('The data type is opaque.');
        OpaqueDataType := DataType as _OpaqueDataType;
        WriteLn(Format('Its size is %s bits.', [OpaqueDataType.SizeInBits]));
        // There isn't much more you can learn about an opaque data type (well, it may have Description and
        // other common members). It is, after all, opaque...
      end;
    DataTypeKind_Primitive:
      begin
        WriteLn('The data type is primitive.');
        PrimitiveDataType := DataType as _PrimitiveDataType;
        PrimitiveDataType.ValueType.Get_ToString(TypeName);
        WriteLn(Format('Its .NET value type is "%s".', [TypeName]));
        // There isn't much more you can learn about the primitive data type.
      end;
    DataTypeKind_Sequence:
      begin
        WriteLn('The data type is a sequence.');
        SequenceDataType := DataType as _SequenceDataType;
        WriteLn(Format('Its length is %s (-1 means that the length can vary).', [SequenceDataType.Length.ToString]));
        WriteLn('A dump of the element data type follows.');
        ProcessDataType(SequenceDataType.ElementDataType, MaximumDepth - 1);
      end;
    DataTypeKind_Structured:
      begin
        WriteLn('The data type is structured.');
        StructuredDataType := DataType as _StructuredDataType;
        WriteLn(Format('It has %s data fields.', [StructuredDataType.DataFields.Count.ToString]));
        ElementEnumerator := StructuredDataType.DataFields.GetEnumerator;
        FieldNames := '';
        First := True;
        while (ElementEnumerator.Next(1, Element, Count) = S_OK) do
        begin
          if First then
            First := False
          else
            FieldNames := FieldNames + ', ';
          FieldNames := FieldNames + Element.Name;
        end;
        WriteLn(Format('The names of the data fields are: %s.', [FieldNames]));

        WriteLn('A dump of each of the data fields follows.');
        ElementEnumerator := StructuredDataType.DataFields.GetEnumerator;
        while (ElementEnumerator.Next(1, Element, Count) = S_OK) do
        begin
          DataField := IUnknown(Element) as _DataField;
          WriteLn;
          WriteLn(Format('dataField.Name: %s', [DataField.Name]));
          // Note that every data field also has properties like IsLength, IsOptional, IsSwitch which might
          // be of interest but we are not dumping them here.
          ProcessDataType(DataField.DataType, MaximumDepth - 1);
        end;
    end;
  end;

end;


//#endregion Example
