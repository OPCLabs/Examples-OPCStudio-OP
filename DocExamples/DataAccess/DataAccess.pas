//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

unit DataAccess;

interface

type
DAExamplesMenu = class
public
  class procedure Main(); static;
end;

implementation
uses
  Console,
  _EasyDAClient;

class procedure DAExamplesMenu.Main();

var
  actionArray: TArray<TNamedAction>;
  cont: boolean;
begin
  actionArray := TArray<TNamedAction>.Create(
//    @_ComputerBrowserDialog.ShowDialog.Main,
//    @_DAItemDialog.ShowDialog.Main
//    (['_EasyAEClient.PullNotification.Main', @_EasyAEClient.PullNotification.Main]),
//    (['_EasyAEClient.SubscribeEvents.Main', @_EasyAEClient.SubscribeEvents.Main]),
    TNamedAction.Create(@_EasyDAClient.BrowseNodes.Main, 'DocExamples.DataAccess._EasyDAClient.BrowseNodes.Main'),
    TNamedAction.Create(@_EasyDAClient.BrowseProperties.Main, 'DocExamples.DataAccess._EasyDAClient.BrowseProperties.Main'),
    TNamedAction.Create(@_EasyDAClient.GetMultiplePropertyValues.Main, 'DocExamples.DataAccess._EasyDAClient.GetMultiplePropertyValues.Main'),
    TNamedAction.Create(@_EasyDAClient.PullItemChanged.Main, 'DocExamples.DataAccess._EasyDAClient.PullItemChanged.Main'),
    TNamedAction.Create(@_EasyDAClient.PullItemChanged.MultipleItems, 'DocExamples.DataAccess._EasyDAClient.PullItemChanged.MultipleItems'),
    TNamedAction.Create(@_EasyDAClient.ReadItem.Main, 'DocExamples.DataAccess._EasyDAClient.ReadItem.Main'),
    TNamedAction.Create(@_EasyDAClient.ReadItemValue.Main, 'DocExamples.DataAccess._EasyDAClient.ReadItemValue.Main'),
    TNamedAction.Create(@_EasyDAClient.ReadMultipleItems.Main, 'DocExamples.DataAccess._EasyDAClient.ReadMultipleItems.Main'),
    TNamedAction.Create(@_EasyDAClient.ReadMultipleItemValues.Main, 'DocExamples.DataAccess._EasyDAClient.ReadMultipleItemValues.Main'),
    TNamedAction.Create(@_EasyDAClient.SubscribeItem.Main, 'DocExamples.DataAccess._EasyDAClient.SubscribeItem.Main'),
    TNamedAction.Create(@_EasyDAClient.SubscribeMultipleItems.Main, 'DocExamples.DataAccess._EasyDAClient.SubscribeMultipleItems.Main'),
    TNamedAction.Create(@_EasyDAClient.WriteItem.Main, 'DocExamples.DataAccess._EasyDAClient.WriteItem.Main'),
    TNamedAction.Create(@_EasyDAClient.WriteItemValue.Main, 'DocExamples.DataAccess._EasyDAClient.WriteItemValue.Main'),
    TNamedAction.Create(@_EasyDAClient.WriteMultipleItems.Main, 'DocExamples.DataAccess._EasyDAClient.WriteMultipleItems.Main'),
    TNamedAction.Create(@_EasyDAClient.WriteMultipleItemValues.Main, 'DocExamples.DataAccess._EasyDAClient.WriteMultipleItemValues.Main')
//    (Name: '_OpcBrowseDialog.ShowDialog.Main'; Action: @_OpcBrowseDialog.ShowDialog.Main),
//    (Name: '_OpcServerDialog.ShowDialog.Main'; Action: @_OpcServerDialog.ShowDialog.Main)
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
