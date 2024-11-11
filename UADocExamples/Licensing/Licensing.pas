
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

unit Licensing;

interface

type
  LicenseInfo = class
  public
    class procedure SerialNumber(); static;
end;

type
  LicensingExamplesMenu = class
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

{$I LicenseInfo.SerialNumber.inc}

class procedure LicensingExamplesMenu.Main();

var
  actionArray: TArray<TNamedAction>;
  cont: boolean;

begin
  actionArray := TArray<TNamedAction>.Create(
    TNamedAction.Create(@LicenseInfo.SerialNumber, 'UADocExamples.Licensing.LicenseInfo.SerialNumber')
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
