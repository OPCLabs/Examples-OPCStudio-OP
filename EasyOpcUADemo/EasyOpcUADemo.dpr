//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .

program EasyOpcUADemo;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  Accessibility_TLB in '..\Imports\Accessibility_TLB.pas',
  mscorlib_TLB in '..\Imports\mscorlib_TLB.pas',
  OpcLabs_BaseLib_TLB in '..\Imports\OpcLabs_BaseLib_TLB.pas',
  OpcLabs_BaseLibForms_TLB in '..\Imports\OpcLabs_BaseLibForms_TLB.pas',
  OpcLabs_EasyOpcClassic_TLB in '..\Imports\OpcLabs_EasyOpcClassic_TLB.pas',
  OpcLabs_EasyOpcForms_TLB in '..\Imports\OpcLabs_EasyOpcForms_TLB.pas',
  OpcLabs_EasyOpcUA_TLB in '..\Imports\OpcLabs_EasyOpcUA_TLB.pas',
  System_Drawing_TLB in '..\Imports\System_Drawing_TLB.pas',
  System_TLB in '..\Imports\System_TLB.pas',
  System_Windows_Forms_TLB in '..\Imports\System_Windows_Forms_TLB.pas',
  OpcLabs_EasyOpcClassicCore_TLB in '..\Imports\OpcLabs_EasyOpcClassicCore_TLB.pas',
  OpcLabs_EasyOpcClassicComponents_TLB in '..\Imports\OpcLabs_EasyOpcClassicComponents_TLB.pas',
  OpcLabs_EasyOpcUAComponents_TLB in '..\Imports\OpcLabs_EasyOpcUAComponents_TLB.pas',
  OpcLabs_BaseLibComponents_TLB in '..\Imports\OpcLabs_BaseLibComponents_TLB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.

