// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// Shows how to write complex data with OPC UA Complex Data plug-in.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure WriteValue.Main;
var
  ArrayValueDataType: _UANodeDescriptor;
  ByteValue: _PrimitiveData;
  ByteValue2: _SequenceData;
  Client: _EasyUAClient;
  Element0, Element1: _PrimitiveData;
  EndpointDescriptor: string;
  GenericObject: _UAGenericObject;
  NodeDescriptor: string;
  ScalarValueDataType: _UANodeDescriptor;
  StructuredData: _StructuredData;
begin
  // Define which server and node we will work with.
  EndpointDescriptor := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  NodeDescriptor := 'nsu=http://test.org/UA/Data/ ;i=10239';  // [ObjectsFolder]/Data.Static.Scalar.StructureValue

  // Instantiate the client object
  Client := CoEasyUAClient.Create;

  // Read a node which returns complex data.
  // We know that this node returns complex data, so we can type cast to UAGenericObject.
  WriteLn('Reading...');

  try
    GenericObject := _UAGenericObject(IUnknown(Client.ReadValue(EndpointDescriptor, NodeDescriptor)));
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
      Exit;
    end;
  end;

  // Modify the data read.
  // This node returns one of the two data types, randomly (this is not common, usually the type is fixed). The
  // data types are sub-types of one common type which the data type of the node. We therefore use the data type
  // ID in the returned UAGenericObject to detect which data type has been returned.

  // For processing the internals of the data, refer to examples for GenericData and DataType classes.
  // We know how the data is structured, and have hard-coded a logic that modifies certain values inside. It is
  // also possible to discover the structure of the data type in the program, and write generic clients that can
  // cope with any kind of complex data.
  //
  // Note that the code below is not fully robust - it will throw an exception if the data is not as expected.

  WriteLn('Modifying...');
  WriteLn(GenericObject.DataTypeId.ToString);
  ScalarValueDataType := CoUANodeDescriptor.Create;
  ScalarValueDataType.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=9440'; // ScalarValueDataType
  if GenericObject.DataTypeId.NodeDescriptor.Match(ScalarValueDataType) then
  begin
    // Negate the byte in the "ByteValue" field.
    StructuredData := IUnknown(GenericObject.GenericData) as _StructuredData;
    ByteValue := IUnknown(StructuredData.FieldData['ByteValue']) as _PrimitiveData;
    ByteValue.Value := Byte(not (Byte(byteValue.Value)));
    WriteLn(ByteValue.Value);
  end
  else
  begin
    ArrayValueDataType := CoUANodeDescriptor.Create;
    ArrayValueDataType.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=9669'; // ArrayValueDataType
    if GenericObject.DataTypeId.Nodedescriptor.Match(ArrayValueDataType) then
    begin
      // Negate bytes at indexes 0 and 1 of the array in the "ByteValue" field.
      StructuredData := IUnknown(GenericObject.GenericData) as _StructuredData;
      ByteValue2 := IUnknown(StructuredData.FieldData['ByteValue']) as _SequenceData;
      Element0 := IUnknown(ByteValue2.Elements[0]) as _PrimitiveData;
      Element1 := IUnknown(ByteValue2.Elements[1]) as _PrimitiveData;
      Element0.Value := Byte(not (Byte(element0.Value)));
      Element1.Value := Byte(not (Byte(element1.Value)));
      WriteLn(Element0.Value);
      WriteLn(Element1.Value);
    end;
  end;

  // Write the modified complex data back to the node.
  // The data type ID in the UAGenericObject is borrowed without change from what we have read, so that the server
  // knows which data type we are writing. The data type ID not necessary if writing precisely the same data type
  // as the node has (not a subtype).
  WriteLn('Writing...');
  try
    Client.WriteValue(EndpointDescriptor, NodeDescriptor, GenericObject);
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
      Exit;
    end;
  end;

end;
//#endregion Example
