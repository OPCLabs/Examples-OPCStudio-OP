// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

unit Specialized;

interface

type
  Softing_OpcUaNetDemoServer = class
    class procedure RepeatedReadMany;
    class procedure SubscribeMany;
  end;

type
  SpecializedExamplesMenu = class
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
  OpcLabs_EasyOpcUA_TLB,
  OpcLabs_EasyOpcUAComponents_TLB,
  System.DateUtils,
  System.SysUtils,
  ActiveX,
  Variants;

{$I Specialized/Softing_OpcUaNetDemoServer.RepeatedReadMany.inc}
{$I Specialized/Softing_OpcUaNetDemoServer.SubscribeMany.inc}

class procedure SpecializedExamplesMenu.Main();

var
  actionArray: TArray<TNamedAction>;
  cont: boolean;

begin
  actionArray := TArray<TNamedAction>.Create(
    TNamedAction.Create(@Softing_OpcUaNetDemoServer.RepeatedReadMany, 'UADocExamples.Specialized.Softing_OpcUaNetDemoServer.RepeatedReadMany'),
    TNamedAction.Create(@Softing_OpcUaNetDemoServer.SubscribeMany, 'UADocExamples.Specialized.Softing_OpcUaNetDemoServer.SubscribeMany')
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
