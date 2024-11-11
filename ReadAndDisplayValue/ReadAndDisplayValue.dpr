
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .

program ReadAndDisplayValue;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  OpcLabs_EasyOpcClassic_TLB in '..\Imports\OpcLabs_EasyOpcClassic_TLB.pas',
  mscorlib_TLB in '..\Imports\mscorlib_TLB.pas',
  OpcLabs_BaseLib_TLB in '..\Imports\OpcLabs_BaseLib_TLB.pas',
  System_TLB in '..\Imports\System_TLB.pas',
  OpcLabs_EasyOpcClassicCore_TLB in '..\Imports\OpcLabs_EasyOpcClassicCore_TLB.pas',
  OpcLabs_BaseLibComponents_TLB in '..\Imports\OpcLabs_BaseLibComponents_TLB.pas',
  OpcLabs_EasyOpcClassicComponents_TLB in '..\Imports\OpcLabs_EasyOpcClassicComponents_TLB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
