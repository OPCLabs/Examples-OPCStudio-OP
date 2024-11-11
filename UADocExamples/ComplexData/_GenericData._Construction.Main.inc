// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows different ways of constructing generic data.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure _Construction.Main;
var
  ByteArray1, ByteArray2: OleVariant;
  EnumerationData: _EnumerationData;
  OpaqueData1, OpaqueData2: _OpaqueData;
  PrimitiveData1, PrimitiveData2: _PrimitiveData;
  SequenceData1: _SequenceData;
  StructuredData1: _StructuredData;
begin
  // Create enumeration data with value of 1.
  EnumerationData := CoEnumerationData.Create;
  EnumerationData.Value := 1;
  WriteLn(EnumerationData.ToString);

  // Create opaque data from an array of 2 bytes, specifying its size as 15 bits.
  OpaqueData1 := CoOpaqueData.Create;
  ByteArray1 := VarArrayCreate([0, 1], varVariant);
  ByteArray1[0] := $AA;
  ByteArray1[1] := $55;
  OpaqueData1.SetByteArrayValue(ByteArray1, 15);
  WriteLn(OpaqueData1.ToString);
  // Create opaque data from an array of 1 bytes, specifying its size as 5 bits.
  OpaqueData2 := CoOpaqueData.Create;
  ByteArray2 := VarArrayCreate([0, 0], varVariant);
  ByteArray2[0] := $A;
  OpaqueData2.SetByteArrayValue(ByteArray2, 5);
  WriteLn(OpaqueData2.ToString);

  // Create primitive data with System.Double value of 180.0.
  PrimitiveData1 := CoPrimitiveData.Create;
  PrimitiveData1.Value := 180.0;
  WriteLn(PrimitiveData1.ToString);

  // Create primitive data with System.String value.
  PrimitiveData2 := CoPrimitiveData.Create;
  PrimitiveData2.Value := 'Temperature is too high!';
  WriteLn(PrimitiveData2.ToString);

  // Create sequence data with two elements, using the Add method.
  SequenceData1 := CoSequenceData.Create;
  SequenceData1.Elements.Add(OpaqueData1);
  SequenceData1.Elements.Add(OpaqueData2);
  WriteLn(SequenceData1.ToString);

  // Create structured data with two members, using the Add method.
  StructuredData1 := CoStructuredData.Create;
  StructuredData1.Add('Message', PrimitiveData2);
  StructuredData1.Add('Status', EnumerationData);
  WriteLn(StructuredData1.ToString);

  VarClear(ByteArray2);
  VarClear(ByteArray1);
end;
//#endregion Example
