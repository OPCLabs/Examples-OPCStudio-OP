// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// Shows how to process generic data type, displaying some of its properties, recursively
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure DataTypeKind1.Main;
var
  Client: _EasyUAClient;
  EndpointDescriptor: string;
  GenericObject: _UAGenericObject;
  NodeDescriptor: string;
begin
  EndpointDescriptor := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  NodeDescriptor := 'nsu=http://test.org/UA/Data/ ;i=10239';  // [ObjectsFolder]/Data.Static.Scalar.StructureValue

  // Instantiate the client object
  Client := CoEasyUAClient.Create;

  // Read a node. We know that this node returns complex data, so we can type cast to UAGenericObject.

  try
    GenericObject := _UAGenericObject(IUnknown(Client.ReadValue(EndpointDescriptor, NodeDescriptor)));
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
      Exit;
    end;
  end;

  // Process the generic data type. We will inspect some of its properties, and dump them.
  ProcessGenericData(GenericObject.GenericData, 2);
end;

Function VariantToBytes(Const Value: OleVariant): TBytes;
Var
  Size: Integer;
  pData: Pointer;
Begin
  Size := Succ(VarArrayHighBound(Value, 1) - VarArrayLowBound(Value, 1));
  SetLength(Result, Size);
  pData := VarArrayLock(Value);
  Try
    Move(pData^, Pointer(Result)^, Size);
  Finally
    VarArrayUnlock(Value);
  End;
End;

class procedure DatatypeKind1.ProcessGenericData(GenericData: OpcLabs_BaseLib_TLB._GenericData; MaximumDepth: Cardinal);
var
  ByteArray: OleVariant;
  Count: Cardinal;
  Element: OleVariant;
  ElementEnumerator: IEnumVARIANT;
  EnumerationData: _EnumerationData;
  First: boolean;
  Keys: string;
  OpaqueData: _OpaqueData;
  PrimitiveData: _PrimitiveData;
  SequenceData: _SequenceData;
  StructuredData: _StructuredData;
  Value: OpcLabs_BaseLib_TLB._GenericData;
begin
  if MaximumDepth = 0 then
    Exit;

  WriteLn;
  WriteLn('genericData.DataType: ', GenericData.DataType.ToString);

  case GenericData.DataTypeKind of
    DataTypeKind_Enumeration:
      begin
        WriteLn('The generic data is an enumeration.');
        EnumerationData := GenericData as _EnumerationData;
        WriteLn(Format('Its value is %s.', [EnumerationData.Value.ToString]));
        // There is also a ValueName that you can inspect (if known).
      end;
    DataTypeKind_Opaque:
      begin
        WriteLn('The generic data is opaque.');
        OpaqueData := GenericData as _OpaqueData;
        WriteLn(Format('Its size is %d bits.', [OpaqueData.SizeInBits]));
        TVarData(ByteArray).VType := varArray;
        TVarData(ByteArray).VArray := PVarArray(OpaqueData.ByteArray);
        WriteLn(Format('The data bytes are %s.', [TEncoding.ANSI.GetString(VariantToBytes(ByteArray))]));
        // Use the Value property (a BitArray) if you need to access the value bit by bit.
      end;
    DataTypeKind_Primitive:
      begin
        WriteLn('The generic data is primitive.');
        PrimitiveData := GenericData as _PrimitiveData;
        WriteLn(Format('Its value is "%s".', [PrimitiveData.Value]));
      end;
    DataTypeKind_Sequence:
      begin
        WriteLn('The generic data is a sequence.');
        SequenceData := GenericData as _SequenceData;
        WriteLn(Format('It has %s elements.', [SequenceData.Elements.Count.ToString]));
        WriteLn('A dump of the elements follows.');
        ElementEnumerator := SequenceData.Elements.GetEnumerator;
        while (ElementEnumerator.Next(1, Element, Count) = S_OK) do
        begin
          ProcessGenericData(IUnknown(Element) as OpcLabs_BaseLib_TLB._GenericData, MaximumDepth - 1);
        end;
      end;
    DataTypeKind_Structured:
      begin
        WriteLn('The generic data is structured.');
        StructuredData := GenericData as _StructuredData;
        WriteLn(Format('It has %s field data members.', [StructuredData.FieldData.Count.ToString]));
        ElementEnumerator := StructuredData.FieldData.GetEnumerator;
        Keys := '';
        First := True;
        while (ElementEnumerator.Next(1, Element, Count) = S_OK) do
        begin
          if First then
            First := False
          else
            Keys := Keys + ', ';
          Keys := Keys + Element.Key;
        end;
        WriteLn(Format('The names of the fields are: %s.', [Keys]));

        WriteLn('A dump of each of the fields follows.');
        ElementEnumerator := StructuredData.FieldData.GetEnumerator;
        while (ElementEnumerator.Next(1, Element, Count) = S_OK) do
        begin
          WriteLn;
          WriteLn(Format('Field name: %s', [Element.Key]));
          Value := IUnknown(Element.Value) as OpcLabs_BaseLib_TLB._GenericData;
          ProcessGenericData(Value, MaximumDepth - 1);
        end;
      end;
  end;

end;


//#endregion Example
