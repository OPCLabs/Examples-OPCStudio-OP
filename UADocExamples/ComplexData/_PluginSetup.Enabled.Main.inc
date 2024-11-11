// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// Shows how to disable and enable the OPC UA Complex Data plug-in.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure Enabled.Main;
var
  Client1, Client2: _EasyUAClient;
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

  // We will explicitly disable the Complex Data plug-in, and read a node which returns complex data. We will
  // receive an object of type UAExtensionObject, which contains the encoded data in its binary form. In this
  // form, the data cannot be easily further processed by your application.
  //
  // Disabling the Complex Data plug-in may be useful e.g. for licensing reasons (when the product edition you
  // have does not support the Complex Data plug-in, and you want to avoid the associated error), or for
  // performance reasons (if you do not need the internal content of the value, for example if your code just
  // needs to take the value read, and write it elsewhere).
  Client1 := CoEasyUAClient.Create;
  Client1.InstanceParameters.PluginSetups.FindName('UAComplexDataClient').Enabled := false;

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

  // Now we will read the same value, but with the Complex Data plug-in enabled. This time we will receive an
  // object of type UAGenericObject, which contains the data in the decoded form, accessible for further
  // processing by your application.
  //
  // Note that it is not necessary to explicitly enable the Complex Data plug-in like this, because it is enabled
  // by default.

  Client2 := CoEasyUAClient.Create;
  Client2.InstanceParameters.PluginSetups.FindName('UAComplexDataClient').Enabled := true;

  Value2 := Client2.ReadValue(EndpointDescriptor, NodeDescriptor);
  WriteLn(Value2);

  // Example output:
  //
  // Binary Byte[1373]; {nsu=http://test.org/UA/Data/ ;i=11437}
  // (ScalarValueDataType) structured

  // On the first line, the type and length of the encoded data is shown, and the node ID is the encoding ID.
  // On the 2nd line, the kind (structured) and the name of the complex data type (ScalarValueDataType) is shown.

end;
//#endregion Example
