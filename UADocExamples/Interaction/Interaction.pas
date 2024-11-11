
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

unit Interaction;

interface

type
  AcceptCertificate = class
  public
    class procedure Https(); static;
    class procedure Instance(); static;
end;


type
  AllowEndpointDomain = class
  public
    class procedure Main(); static;
end;

type
  ConsoleInteraction = class
  public
    class procedure ColorizeOutput(); static;
end;

type
  InteractionExamplesMenu = class
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
  OpcLabs_EasyOpcUA_TLB,
  OpcLabs_EasyOpcUAComponents_TLB,
  System.DateUtils,
  System.SysUtils,
  ActiveX,
  Variants;

{$I AcceptCertificate.Https.inc}
{$I AcceptCertificate.Instance.inc}
{$I AllowEndpointDomain.Main.inc}
{$I ConsoleInteraction.ColorizeOutput.inc}

class procedure InteractionExamplesMenu.Main();

var
  actionArray: TArray<TNamedAction>;
  cont: boolean;

begin
  actionArray := TArray<TNamedAction>.Create(
    TNamedAction.Create(@AcceptCertificate.Https, 'UADocExamples.Interaction.AcceptCertificate.Https'),
    TNamedAction.Create(@AcceptCertificate.Instance, 'UADocExamples.Interaction.AcceptCertificate.Instance'),
    TNamedAction.Create(@AllowEndpointDomain.Main, 'UADocExamples.Interaction.AllowEndpointDomain.Main'),
    TNamedAction.Create(@ConsoleInteraction.ColorizeOutput, 'UADocExamples.Interaction.ConsoleInteraction.ColorizeOutput')
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
