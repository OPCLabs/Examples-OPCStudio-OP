// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example demonstrates how to set the application name for the application instance certificate.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  TClientManagementEventHandlers103 = class
    procedure OnLogEntry(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _LogEntryEventArgs);
  end;

// Event handler for the LogEntry event.
// Print the loggable entry containing client certificate parameters.
procedure TClientManagementEventHandlers103.OnLogEntry(
  ASender: TObject;
  sender: OleVariant;
  const eventArgs: _LogEntryEventArgs);
begin
  if eventArgs.EventId = 161 then
  	WriteLn(eventArgs.ToString);
end;

class procedure ApplicationName.Main;
var
  Application: TEasyUAApplication;
  Client: OpcLabs_EasyOpcUA_TLB._EasyUAClient;
  ClientManagement: TEasyUAClientManagement;
  ClientManagementEventHandlers: TClientManagementEventHandlers103;
  Value: OleVariant;
begin
  // The configuration object allows access to static behavior - here, the
  // shared LogEntry event.
  ClientManagement := TEasyUAClientManagement.Create(nil);
  ClientManagementEventHandlers := TClientManagementEventHandlers103.Create;
  ClientManagement.OnLogEntry := ClientManagementEventHandlers.OnLogEntry;
  ClientManagement.Connect;

  // Obtain the application interface.
  Application := TEasyUAApplication.Create(nil);

  try
    // Set the application name, which determines the subject of the client certificate.
    // Note that this only works once in each host process.
    Application.ApplicationParameters.ApplicationManifest.ApplicationName :=
      'QuickOPC - Delphi example application';

    // Do something - invoke an OPC read, to trigger some loggable entries.
    // If you are doing server development: Instantiate and start the server here, instead of invoking the client.
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
      end;
    end;

    // The certificate will be located or created in a directory similar to:
    // C:\ProgramData\OPC Foundation\CertificateStores\MachineDefault\certs
    // and its subject will be as given by the application name.

    WriteLn('Processing log entry events for 10 seconds...');
    PumpSleep(10*1000);

    WriteLn('Finished...');
  finally
    FreeAndNil(Application);
    FreeAndNil(ClientManagement);
    FreeAndNil(ClientManagementEventHandlers);
  end;
end;
//#endregion Example
