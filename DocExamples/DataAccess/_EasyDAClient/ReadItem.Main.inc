// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to read a single item, and display its value, timestamp and quality.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure ReadItem.Main;
var
  Client: OpcLabs_EasyOpcClassic_TLB._EasyDAClient;
  Vtq: _DAVtq;
begin
  // Instantiate the client object
  Client := CoEasyDAClient.Create;

  try
    Vtq := Client.ReadItem('', 'OPCLabs.KitServer.2', 'Simulation.Random');
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
      Exit;
    end;
  end;

  // Display results
  WriteLn('Vtq: ', Vtq.ToString);
end;
//#endregion Example
