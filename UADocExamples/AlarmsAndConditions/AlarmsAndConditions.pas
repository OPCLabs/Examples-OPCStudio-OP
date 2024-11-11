
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

unit AlarmsAndConditions;

interface
uses
  OpcLabs_EasyOpcUA_TLB;

type
  Acknowledge = class
  public
    class procedure Main; static;
  end;

type
  AlarmsAndConditionsExamplesMenu = class
  public
    class procedure Main(); static;
end;

type
  BaseEvent = class
  public
    class procedure Main(); static;
end;

type
  BrowseEventSources = class
  public
    class procedure Main(); static;
  private
    class procedure BrowseFrom(NodeId: _UANodeId); static;
end;

type
  BrowseNotifiers = class
  public
    class procedure Main(); static;
  private
    class procedure BrowseFrom(NodeId: _UANodeId); static;
end;

type
  FieldResults = class
  public
    class procedure Main(); static;
end;

type
  PullEventNotification = class
  public
    class procedure Main(); static;
end;

type
  SelectClauses = class
  public
    class procedure Main(); static;
end;

type
  SubscribeEvent = class
    public
      class procedure Main(); static;
  end;

type
  SubscribeMultipleMonitoredItems = class
    public
      class procedure Events(); static;
  end;

type
  WhereClause = class
  public
    class procedure Main(); static;
end;

implementation
uses
  ComObj,
  IdGlobal,
  Console,
  Generics.Collections,
  MessagePump,
  OpcLabs_BaseLib_TLB,
  OpcLabs_BaseLibForms_TLB,
  OpcLabs_EasyOpcUAComponents_TLB,
  System.DateUtils,
  System.SysUtils,
  ActiveX,
  Variants;

{$I Acknowledge.Main.inc}
{$I BaseEvent.Main.inc}
{$I BrowseEventSources.Main.inc}
{$I BrowseNotifiers.Main.inc}
{$I FieldResults.Main.inc}
{$I PullEventNotification.Main.inc}
{$I SelectClauses.Main.inc}
{$I SubscribeEvent.Main.inc}
{$I SubscribeMultipleMonitoredItems.Events.inc}
{$I WhereClause.Main.inc}

class procedure AlarmsAndConditionsExamplesMenu.Main();

var
  actionArray: TArray<TNamedAction>;
  cont: boolean;

begin
  actionArray := TArray<TNamedAction>.Create(
    TNamedAction.Create(@Acknowledge.Main, 'UADocExamples.AlarmsAndConditions.Acknowledge.Main'),
    TNamedAction.Create(@BaseEvent.Main, 'UADocExamples.AlarmsAndConditions.BaseEvent.Main'),
    TNamedAction.Create(@BrowseEventSources.Main, 'UADocExamples.AlarmsAndConditions.BrowseEventSources.Main'),
    TNamedAction.Create(@BrowseNotifiers.Main, 'UADocExamples.AlarmsAndConditions.BrowseNotifiers.Main'),
    TNamedAction.Create(@FieldResults.Main, 'UADocExamples.AlarmsAndConditions.FieldResults.Main'),
    TNamedAction.Create(@PullEventNotification.Main, 'UADocExamples.AlarmsAndConditions.PullEventNotification.Main'),
    TNamedAction.Create(@SelectClauses.Main, 'UADocExamples.AlarmsAndConditions.SelectClauses.Main'),
    TNamedAction.Create(@SubscribeEvent.Main, 'UADocExamples.AlarmsAndConditions.SubscribeEvent.Main'),
    TNamedAction.Create(@SubscribeMultipleMonitoredItems.Events, 'UADocExamples.AlarmsAndConditions.SubscribeMultipleMonitoredItems.Events'),
    TNamedAction.Create(@WhereClause.Main, 'UADocExamples.AlarmsAndConditions.WhereClause.Main')
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
