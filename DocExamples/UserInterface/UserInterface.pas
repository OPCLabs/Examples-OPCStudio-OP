//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

unit UserInterface;

interface

type
UIExamplesMenu = class
public
  class procedure Main(); static;
end;

implementation
uses
  Console,
  _ComputerBrowserDialog,
  _DAItemDialog,
  _OpcBrowseDialog,
  _OpcServerDialog;

class procedure UIExamplesMenu.Main();

var
  actionArray: TArray<TNamedAction>;
  cont: boolean;
begin
  actionArray := TArray<TNamedAction>.Create(
    TNamedAction.Create(@_ComputerBrowserDialog.ShowDialog.Main, 'DocExamples.UserInterface._ComputerBrowserDialog.ShowDialog.Main'),
    TNamedAction.Create(@_DAItemDialog.ShowDialog.Main, 'DocExamples.UserInterface._DAItemDialog.ShowDialog.Main'),
    TNamedAction.Create(@_OpcBrowseDialog.ShowDialog.Main, 'DocExamples.UserInterface._OpcBrowseDialog.ShowDialog.Main'),
    TNamedAction.Create(@_OpcServerDialog.ShowDialog.Main, 'DocExamples.UserInterface._OpcServerDialog.ShowDialog.Main')
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
