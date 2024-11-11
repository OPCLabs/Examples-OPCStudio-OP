// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to read value of a single item, and display it.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure ReadItemValue.Main;
var
  Client: OpcLabs_EasyOpcClassic_TLB._EasyDAClient;
  Value: OleVariant;
begin
  // Instantiate the client object
  Client := CoEasyDAClient.Create;

  try
    Value := Client.ReadItemValue('', 'OPCLabs.KitServer.2', 'Simulation.Random');
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
      Exit;
    end;
  end;

  // Display results
  WriteLn('Value: ', Value);
end;
//#endregion Example
