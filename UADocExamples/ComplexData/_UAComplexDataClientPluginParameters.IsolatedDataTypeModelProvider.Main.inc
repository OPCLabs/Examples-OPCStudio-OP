// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// Shows how to configure the OPC UA Complex Data plug-in to use a shared data type model provider.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure IsolatedDataTypeModelProvider.Main;
var
  Client1, Client2: _EasyUAClient;
  ComplexDataClientPluginParameters1, ComplexDataClientPluginParameters2: OpcLabs_EasyOpcUA_TLB._UAComplexDataClientPluginParameters;
  EndpointDescriptor: string;
  NodeDescriptor: string;
  Value1, Value2: OleVariant;
begin
  // Define which server and node we will work with.
  EndpointDescriptor := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  NodeDescriptor := 'nsu=http://test.org/UA/Data/ ;i=10239';  // [ObjectsFolder]/Data.Static.Scalar.StructureValue

  // We will create two instances of EasyUAClient class, and configure each of them to use the shared data type
  // model provider.

  // Configure the first client object.
  Client1 := CoEasyUAClient.Create;
  ComplexDataClientPluginParameters1 := IUnknown(Client1.InstanceParameters.PluginConfigurations.Find('OpcLabs.EasyOpc.UA.Plugins.ComplexData.UAComplexDataClientPluginParameters')) as OpcLabs_EasyOpcUA_TLB._UAComplexDataClientPluginParameters;
  ComplexDataClientPluginParameters1.IsolatedDataTypeModelProvider := false;

  // Configure the second client object.
  Client2 := CoEasyUAClient.Create;
  ComplexDataClientPluginParameters2 := IUnknown(Client2.InstanceParameters.PluginConfigurations.Find('OpcLabs.EasyOpc.UA.Plugins.ComplexData.UAComplexDataClientPluginParameters')) as OpcLabs_EasyOpcUA_TLB._UAComplexDataClientPluginParameters;
  ComplexDataClientPluginParameters2.IsolatedDataTypeModelProvider := false;

  // We will now read the same complex data node using the two client objects.
  //
  // There is no noticeable difference in the results from the default state in which the client objects are
  // set to use per-instance data type model provider. But, with the shared data type model provider, the metadata
  // obtained during the read on the first client object and cached inside the data type model provider are reused
  // during the read on the second client object, making this and the subsequent operations more efficient.

  // Read the complex data node using the first client.
  try
    Value1 := Client1.ReadValue(EndpointDescriptor, NodeDescriptor);
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
      Exit;
    end;
  end;
  WriteLn(Value1);

  // Read the complex data node using the second client.
  try
    Value2 := Client2.ReadValue(EndpointDescriptor, NodeDescriptor);
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
      Exit;
    end;
  end;
  WriteLn(Value2);

end;
//#endregion Example
