//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

unit XmlDataAccess;

interface

type
XmlDAExamplesMenu = class
public
  class procedure Main(); static;
end;

implementation
uses
  Console,
  Xml;

class procedure XmlDAExamplesMenu.Main();

var
  actionArray: TArray<TNamedAction>;
  cont: boolean;
begin
  actionArray := TArray<TNamedAction>.Create(
    TNamedAction.Create(@Xml.BrowseNodes.RecursiveXml, 'DocExamples.DataAccess.Xml.BrowseNodes.RecursiveXml'),
    TNamedAction.Create(@Xml.ChangeItemSubscription.MainXml, 'DocExamples.DataAccess.Xml.ChangeItemSubscription.MainXml'),
    TNamedAction.Create(@Xml.GetMultiplePropertyValues.DataTypeXml, 'DocExamples.DataAccess.Xml.GetMultiplePropertyValues.DataTypeXml'),
    TNamedAction.Create(@Xml.PullItemChanged.MainXml, 'DocExamples.DataAccess.Xml.PullItemChanged.MainXml'),
    TNamedAction.Create(@Xml.ReadMultipleItems.MainXml, 'DocExamples.DataAccess.Xml.ReadMultipleItems.MainXml'),
    TNamedAction.Create(@Xml.SubscribeItem.MainXml, 'DocExamples.DataAccess.Xml.SubscribeItem.MainXml'),
    TNamedAction.Create(@Xml.WriteItemValue.MainXml, 'DocExamples.DataAccess.Xml.WriteItemValue.MainXml')
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
