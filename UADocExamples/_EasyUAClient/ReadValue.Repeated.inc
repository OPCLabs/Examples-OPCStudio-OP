// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to repeatedly read value of a single node, and display it.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure ReadValue.Repeated;
const
  EndpointDescriptorUrlString = 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  NodeIdExpandedText = 'nsu=http://test.org/UA/Data/ ;i=10221';
// Example settings with Softing dataFEED OPC Suite:
//  EndpointDescriptorUrlString = 'opc.tcp://localhost:4980/Softing_dataFEED_OPC_Suite_Configuration1';
//  NodeIdExpandedText = 'nsu=Local%20Items ;s=Local Items.EAK_Test1.EAK_Testwert1_I4';
var
  Client: OpcLabs_EasyOpcUA_TLB._EasyUAClient;
  Value: OleVariant;
  I: Integer;
begin
  // Instantiate the client object
  Client := CoEasyUAClient.Create;

  for I := 1 to 60 do
  begin
    Write('@', TimeToStr(Now), ': ');

    // Obtain value of a node
    try
      Value := Client.ReadValue(EndpointDescriptorUrlString, NodeIdExpandedText);
    except
      on E: EOleException do
        WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
    end;

    // Display results
    WriteLn('Read ', Value);

    //
    Sleep(1000);
  end;
end;
//#endregion Example
