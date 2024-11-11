
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

unit Main;

interface

type
UAExamplesMenu = class
public
  class procedure Main(); static;
end;

implementation
uses
  Console,
  //OpcLabs_EasyOpcUA_TLB,
  _EasyUAClient,
  _EasyUAClientManagement,
  _UAApplicationManifest,
  _UABrowsePathParser,
  _UAIndexRangeList,
  _UANodeId;

class procedure UAExamplesMenu.Main();

var
  actionArray: TArray<TNamedAction>;
  cont: boolean;
  //originalSharedParameters: EasyUASharedParameters;

begin
  actionArray := TArray<TNamedAction>.Create(
    TNamedAction.Create(@_EasyUAClient.Browse.Main, 'UADocExamples._EasyUAClient.Browse.Main'),
    TNamedAction.Create(@_EasyUAClient.BrowseDataNodes.Main, 'UADocExamples._EasyUAClient.BrowseDataNodes.Main'),
    TNamedAction.Create(@_EasyUAClient.BrowseDataVariables.Main, 'UADocExamples._EasyUAClient.BrowseDataVariables.Main'),
    TNamedAction.Create(@_EasyUAClient.BrowseMethods.Main, 'UADocExamples._EasyUAClient.BrowseMethods.Main'),
    TNamedAction.Create(@_EasyUAClient.BrowseObjects.Main, 'UADocExamples._EasyUAClient.BrowseObjects.Main'),
    TNamedAction.Create(@_EasyUAClient.BrowseProperties.Main, 'UADocExamples._EasyUAClient.BrowseProperties.Main'),
    TNamedAction.Create(@_EasyUAClient.CallMethod.Main, 'UADocExamples._EasyUAClient.CallMethod.Main'),
    TNamedAction.Create(@_EasyUAClient.CallMultipleMethods.Main, 'UADocExamples._EasyUAClient.CallMultipleMethods.Main'),
    TNamedAction.Create(@_EasyUAClient.ChangeMonitoredItemSubscription.Main, 'UADocExamples._EasyUAClient.ChangeMonitoredItemSubscription.Main'),
    TNamedAction.Create(@_EasyUAClient.ChangeMultipleMonitoredItemSubscriptions.Main, 'UADocExamples._EasyUAClient.ChangeMultipleMonitoredItemSubscriptions.Main'),
    TNamedAction.Create(@_EasyUAClient.DiscoverGlobalServers.Main, 'UADocExamples._EasyUAClient.DiscoverGlobalServers.Main'),
    TNamedAction.Create(@_EasyUAClient.DiscoverLocalServers.Main, 'UADocExamples._EasyUAClient.DiscoverLocalServers.Main'),
    TNamedAction.Create(@_EasyUAClient.DiscoverNetworkServers.Main, 'UADocExamples._EasyUAClient.DiscoverNetworkServers.Main'),
    TNamedAction.Create(@_EasyUAClient.FindLocalApplications.Main, 'UADocExamples._EasyUAClient.FindLocalApplications.Main'),
    TNamedAction.Create(@_EasyUAClient.GetMonitoredItemArguments.Main, 'UADocExamples._EasyUAClient.GetMonitoredItemArguments.Main'),
    TNamedAction.Create(@_EasyUAClient.GetMonitoredItemArgumentsDictionary.Main, 'UADocExamples._EasyUAClient.GetMonitoredItemArgumentsDictionary.Main'),
    TNamedAction.Create(@_EasyUAClient.PullDataChangeNotification.Main, 'UADocExamples._EasyUAClient.PullDataChangeNotification.Main'),
    TNamedAction.Create(@_EasyUAClient.Read.Main, 'UADocExamples._EasyUAClient.Read.Main'),
    TNamedAction.Create(@_EasyUAClient.ReadMultiple.BrowsePath, 'UADocExamples._EasyUAClient.ReadMultiple.BrowsePath'),
    TNamedAction.Create(@_EasyUAClient.ReadMultiple.Main, 'UADocExamples._EasyUAClient.ReadMultiple.Main'),
    TNamedAction.Create(@_EasyUAClient.ReadMultipleValues.DataType, 'UADocExamples._EasyUAClient.ReadMultipleValues.DataType'),
    TNamedAction.Create(@_EasyUAClient.ReadMultipleValues.Main, 'UADocExamples._EasyUAClient.ReadMultipleValues.Main'),
    TNamedAction.Create(@_EasyUAClient.ReadValue.Main, 'UADocExamples._EasyUAClient.ReadValue.Main'),
    TNamedAction.Create(@_EasyUAClient.SubscribeDataChange.Filter, 'UADocExamples._EasyUAClient.SubscribeDataChange.Filter'),
    TNamedAction.Create(@_EasyUAClient.SubscribeDataChange.Main, 'UADocExamples._EasyUAClient.SubscribeDataChange.Main'),
    TNamedAction.Create(@_EasyUAClient.SubscribeMultipleMonitoredItems.Filter, 'UADocExamples._EasyUAClient.SubscribeMultipleMonitoredItems.Filter'),
    TNamedAction.Create(@_EasyUAClient.SubscribeMultipleMonitoredItems.Main, 'UADocExamples._EasyUAClient.SubscribeMultipleMonitoredItems.Main'),
    TNamedAction.Create(@_EasyUAClient.SubscribeMultipleMonitoredItems.StateAsInteger, 'UADocExamples._EasyUAClient.SubscribeMultipleMonitoredItems.StateAsIntege'),
    TNamedAction.Create(@_EasyUAClient.SubscribeMultipleMonitoredItems.StateAsObject, 'UADocExamples._EasyUAClient.SubscribeMultipleMonitoredItems.StateAsObject'),
    TNamedAction.Create(@_EasyUAClient.UnsubscribeAllMonitoredItems.Main, 'UADocExamples._EasyUAClient.UnsubscribeAllMonitoredItems.Main'),
    TNamedAction.Create(@_EasyUAClient.UnsubscribeMultipleMonitoredItems.Main, 'UADocExamples._EasyUAClient.UnsubscribeMultipleMonitoredItems.Main'),
    TNamedAction.Create(@_EasyUAClient.UnsubscribeMultipleMonitoredItems.Some, 'UADocExamples._EasyUAClient.UnsubscribeMultipleMonitoredItems.Some'),
    TNamedAction.Create(@_EasyUAClient.Write.Main, 'UADocExamples._EasyUAClient.Write.Main'),
    TNamedAction.Create(@_EasyUAClient.WriteMultipleValues.TestSuccess, 'UADocExamples._EasyUAClient.WriteMultipleValues.TestSuccess'),
    TNamedAction.Create(@_EasyUAClient.WriteMultipleValues.ValueTypeCode, 'UADocExamples._EasyUAClient.WriteMultipleValues.ValueTypeCode'),
    TNamedAction.Create(@_EasyUAClient.WriteMultipleValues.ValueTypeFullName, 'UADocExamples._EasyUAClient.WriteMultipleValues.ValueTypeFullName'),
    TNamedAction.Create(@_EasyUAClient.WriteValue.ByteString, 'UADocExamples._EasyUAClient.WriteValue.ByteString'),
    TNamedAction.Create(@_EasyUAClient.WriteValue.Main, 'UADocExamples._EasyUAClient.WriteValue.Main'),
    TNamedAction.Create(@_EasyUAClient.WriteValue.TypeCode, 'UADocExamples._EasyUAClient.WriteValue.TypeCode'),
    TNamedAction.Create(@_UAApplicationManifest.InstanceOwnStorePath.PlatformSpecific, 'UADocExamples._UAApplicationManifest.InstanceOwnStorePath.PlatformSpecific'),
    TNamedAction.Create(@_UAApplicationManifest.ApplicationName.Main, 'UADocExamples._UAApplicationManifest.ApplicationName.Main'),
    TNamedAction.Create(@_UABrowsePathParser.Parse.Main, 'UADocExamples._UABrowsePathParser.Parse.Main'),
    TNamedAction.Create(@_UABrowsePathParser.ParseRelative.Main, 'UADocExamples._UABrowsePathParser.ParseRelative.Main'),
    TNamedAction.Create(@_UABrowsePathParser.TryParse.Main, 'UADocExamples._UABrowsePathParser.TryParse.Main'),
    TNamedAction.Create(@_UABrowsePathParser.TryParseRelative.Main, 'UADocExamples._UABrowsePathParser.TryParseRelative.Main'),
    TNamedAction.Create(@_UAIndexRangeList.Usage.ReadValue, 'UADocExamples._UAIndexRangeList.Usage.ReadValue'),
    TNamedAction.Create(@_UANodeId._Construction.Main, 'UADocExamples._UANodeId._Construction.Main'),
    TNamedAction.Create(@_EasyUAClientManagement.LogEntry.Main, 'UADocExamples._EasyUAClientManagement.LogEntry.Main')
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
