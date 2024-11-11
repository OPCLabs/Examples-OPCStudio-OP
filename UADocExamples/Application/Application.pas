
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

unit Application;

interface

type
  ApplicationExamplesMenu = class
  public
    class procedure Main(); static;
end;

implementation
uses
  _IEasyUAClientServerApplication,
  Console;

class procedure ApplicationExamplesMenu.Main();

var
  actionArray: TArray<TNamedAction>;
  cont: boolean;

begin
  actionArray := TArray<TNamedAction>.Create(
    TNamedAction.Create(@_IEasyUAClientServerApplication.FindGdsRegistrations.Main, 'UADocExamples.Application._IEasyUAClientServerApplication.FindGdsRegistrations.Main'),
    TNamedAction.Create(@_IEasyUAClientServerApplication.GetApplicationElement.Main, 'UADocExamples.Application._IEasyUAClientServerApplication.GetApplicationElement.Main'),
    TNamedAction.Create(@_IEasyUAClientServerApplication.GetCertificateSubjectName.Main, 'UADocExamples.Application._IEasyUAClientServerApplication.GetCertificateSubjectName.Main'),
    TNamedAction.Create(@_IEasyUAClientServerApplication.ObtainNewCertificate.Main, 'UADocExamples.Application._IEasyUAClientServerApplication.ObtainNewCertificate.Main'),
    TNamedAction.Create(@_IEasyUAClientServerApplication.RefreshTrustLists.Main, 'UADocExamples.Application._IEasyUAClientServerApplication.RefreshTrustLists.Main'),
    TNamedAction.Create(@_IEasyUAClientServerApplication.RegisterToGds.Main, 'UADocExamples.Application._IEasyUAClientServerApplication.RegisterToGds.Main'),
    TNamedAction.Create(@_IEasyUAClientServerApplication.UnregisterFromGds.Main, 'UADocExamples.Application._IEasyUAClientServerApplication.UnregisterFromGds.Main'),
    TNamedAction.Create(@_IEasyUAClientServerApplication.UpdateGdsRegistration.Main, 'UADocExamples.Application._IEasyUAClientServerApplication.UpdateGdsRegistration.Main')
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
