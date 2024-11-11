
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

unit PubSub;

interface

type
PubSubExamplesMenu = class
public
  class procedure Main(); static;
end;

implementation
uses
  Console,
  _EasyUASubscriber,
  _IUAReadOnlyPubSubConfiguration;

class procedure PubSubExamplesMenu.Main();

var
  actionArray: TArray<TNamedAction>;
  cont: boolean;

begin
  actionArray := TArray<TNamedAction>.Create(
    TNamedAction.Create(@_EasyUASubscriber.PullDataSetMessage.Main1, 'UADocExamples.PubSub._EasyUASubscriber.PullDataSetMessage.Main1'),
    TNamedAction.Create(@_EasyUASubscriber.SubscribeDataSet.CaptureFile, 'UADocExamples.PubSub._EasyUASubscriber.SubscribeDataSet.CaptureFile'),
    TNamedAction.Create(@_EasyUASubscriber.SubscribeDataSet.Ethernet, 'UADocExamples.PubSub._EasyUASubscriber.SubscribeDataSet.Ethernet'),
    TNamedAction.Create(@_EasyUASubscriber.SubscribeDataSet.ExtractField, 'UADocExamples.PubSub._EasyUASubscriber.SubscribeDataSet.ExtractField'),
    TNamedAction.Create(@_EasyUASubscriber.SubscribeDataSet.FieldNames, 'UADocExamples.PubSub._EasyUASubscriber.SubscribeDataSet.FieldNames'),
    TNamedAction.Create(@_EasyUASubscriber.SubscribeDataSet.Filter, 'UADocExamples.PubSub._EasyUASubscriber.SubscribeDataSet.Filter'),
    TNamedAction.Create(@_EasyUASubscriber.SubscribeDataSet.Main1, 'UADocExamples.PubSub._EasyUASubscriber.SubscribeDataSet.Main1'),
    TNamedAction.Create(@_EasyUASubscriber.SubscribeDataSet.Metadata, 'UADocExamples.PubSub._EasyUASubscriber.SubscribeDataSet.Metadata'),
    TNamedAction.Create(@_EasyUASubscriber.SubscribeDataSet.PublishedDataSet, 'UADocExamples.PubSub._EasyUASubscriber.SubscribeDataSet.PublishedDataSet'),
    TNamedAction.Create(@_EasyUASubscriber.SubscribeDataSet.PublisherId, 'UADocExamples.PubSub._EasyUASubscriber.SubscribeDataSet.PublisherId'),
    TNamedAction.Create(@_EasyUASubscriber.SubscribeDataSet.ResolveFromFile, 'UADocExamples.PubSub._EasyUASubscriber.SubscribeDataSet.ResolveFromFile'),
    TNamedAction.Create(@_EasyUASubscriber.UnsubscribeDataSet.Main1, 'UADocExamples.PubSub._EasyUASubscriber.UnsubscribeDataSet.Main1'),
    TNamedAction.Create(@_IUAReadOnlyPubSubConfiguration.GetMethods.PublishedDataSets, 'UADocExamples.PubSub._IUAReadOnlyPubSubConfiguration.GetMethods.PublishedDataSets'),
    TNamedAction.Create(@_IUAReadOnlyPubSubConfiguration.GetMethods.PubSubComponents, 'UADocExamples.PubSub._IUAReadOnlyPubSubConfiguration.GetMethods.PubSubComponents')
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
