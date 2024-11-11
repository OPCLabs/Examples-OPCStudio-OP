
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
  _UABrowseDialog,
  _UADataDialog,
  _UAEndpointDialog,
  _UAHostAndEndpointDialog;

class procedure UIExamplesMenu.Main();

var
  actionArray: TArray<TNamedAction>;
  cont: boolean;
begin
  actionArray := TArray<TNamedAction>.Create(
    TNamedAction.Create(@_ComputerBrowserDialog.ShowDialog.Main, 'UADocExamples.UserInterface._ComputerBrowserDialog.ShowDialog.Main'),
    TNamedAction.Create(@_UABrowseDialog.ShowDialog.Main, 'UADocExamples.UserInterface._UABrowseDialog.ShowDialog.Main'),
    TNamedAction.Create(@_UADataDialog.ShowDialog.Main, 'UADocExamples.UserInterface._UADataDialog.ShowDialog.Main'),
    TNamedAction.Create(@_UAEndpointDialog.ShowDialog.Main, 'UADocExamples.UserInterface._UAEndpointDialog.ShowDialog.Main'),
    TNamedAction.Create(@_UAHostAndEndpointDialog.ShowDialog.Main, 'UADocExamples.UserInterface._UAHostAndEndpointDialog.ShowDialog.Main')
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
