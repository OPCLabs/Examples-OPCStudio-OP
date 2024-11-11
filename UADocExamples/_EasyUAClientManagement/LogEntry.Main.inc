// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example demonstrates the loggable entries originating in the OPC-UA
// client engine and the EasyUAClient component.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  TClientManagementEventHandlers130 = class
    procedure OnLogEntry(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _LogEntryEventArgs);
  end;

// Event handler for the LogEntry event. It simply prints out the event.
procedure TClientManagementEventHandlers130.OnLogEntry(
  ASender: TObject;
  sender: OleVariant;
  const eventArgs: _LogEntryEventArgs);
begin
	WriteLn(eventArgs.ToString);
end;

class procedure LogEntry.Main;
var
  Client: OpcLabs_EasyOpcUA_TLB._EasyUAClient;
  ClientManagement: TEasyUAClientManagement;
  ClientManagementEventHandlers: TClientManagementEventHandlers130;
  Value: OleVariant;
begin
  // The management object allows access to static behavior - here, the
  // shared LogEntry event.
  ClientManagement := TEasyUAClientManagement.Create(nil);
  ClientManagementEventHandlers := TClientManagementEventHandlers130.Create;
  ClientManagement.OnLogEntry := ClientManagementEventHandlers.OnLogEntry;
  ClientManagement.Connect;

  // Do something - invoke an OPC read, to trigger some loggable entries.
  Client := CoEasyUAClient.Create;
  try
    Value := Client.ReadValue(
      //'http://opcua.demo-this.com:51211/UA/SampleServer',
      //'https://opcua.demo-this.com:51212/UA/SampleServer/',
      'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer',
      'nsu=http://test.org/UA/Data/ ;i=10853');
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
      //Exit;
    end;
  end;

  WriteLn('Processing log entry events for 1 minute...');
  PumpSleep(60*1000);

  WriteLn('Finished.');
  FreeAndNil(ClientManagement);
  FreeAndNil(ClientManagementEventHandlers);
end;
//#endregion Example
