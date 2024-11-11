
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

unit Gds;

interface

type
  GdsExamplesMenu = class
  public
    class procedure Main(); static;
end;

implementation
uses
  _EasyUACertificateManagementClient,
  _EasyUAGlobalDiscoveryClient,
  Console;

class procedure GdsExamplesMenu.Main();

var
  actionArray: TArray<TNamedAction>;
  cont: boolean;

begin
  actionArray := TArray<TNamedAction>.Create(
    TNamedAction.Create(@_EasyUACertificateManagementClient.GetCertificateStatus.Main, 'UADocExamples.Gds._EasyUACertificateManagementClient.GetCertificateStatus.Main'),
    TNamedAction.Create(@_EasyUAGlobalDiscoveryClient.FindApplications.Main, 'UADocExamples.Gds._EasyUAGlobalDiscoveryClient.FindApplications.Main'),
    TNamedAction.Create(@_EasyUAGlobalDiscoveryClient.QueryApplications.Main, 'UADocExamples.Gds._EasyUAGlobalDiscoveryClient.QueryApplications.Main'),
    TNamedAction.Create(@_EasyUAGlobalDiscoveryClient.QueryServers.Main, 'UADocExamples.Gds._EasyUAGlobalDiscoveryClient.QueryServers.Main'),
    TNamedAction.Create(@_EasyUAGlobalDiscoveryClient.UnregisterApplication.Main, 'UADocExamples.Gds._EasyUAGlobalDiscoveryClient.UnregisterApplication.Main')
  );
  repeat
    WriteLn;
    cont := ConsoleDialog.SelectAndPerformAction('Select action to perform', 'Return', actionArray);
    if cont then
    begin
      WriteLn('Press Enter to continue...');
      ReadLn;
    end;
  until not cont;
end;

end.
