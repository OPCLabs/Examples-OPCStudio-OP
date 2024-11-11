// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .

program DocExamples;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Accessibility_TLB in '..\Imports\Accessibility_TLB.pas',
  mscorlib_TLB in '..\Imports\mscorlib_TLB.pas',
  OpcLabs_BaseLib_TLB in '..\Imports\OpcLabs_BaseLib_TLB.pas',
  OpcLabs_BaseLibForms_TLB in '..\Imports\OpcLabs_BaseLibForms_TLB.pas',
  OpcLabs_EasyOpcClassic_TLB in '..\Imports\OpcLabs_EasyOpcClassic_TLB.pas',
  OpcLabs_EasyOpcClassicCore_TLB in '..\Imports\OpcLabs_EasyOpcClassicCore_TLB.pas',
  OpcLabs_EasyOpcForms_TLB in '..\Imports\OpcLabs_EasyOpcForms_TLB.pas',
  System.SysUtils,
  Windows,
  System_TLB in '..\Imports\System_TLB.pas',
  System_Windows_Forms_TLB in '..\Imports\System_Windows_Forms_TLB.pas',
  _EasyAEClient in 'AlarmsAndEvents\_EasyAEClient.pas',
  _EasyDAClient in 'DataAccess\_EasyDAClient.pas',
  Xml in 'DataAccess\Xml.pas',
  System_Drawing_TLB in '..\Imports\System_Drawing_TLB.pas',
  OpcLabs_EasyOpcUA_TLB in '..\Imports\OpcLabs_EasyOpcUA_TLB.pas',
  System.Generics.Collections,
  DataAccess in 'DataAccess\DataAccess.pas',
  XmlDataAccess in 'DataAccess\XmlDataAccess.pas',
  AlarmsAndEvents in 'AlarmsAndEvents\AlarmsAndEvents.pas',
  UserInterface in 'UserInterface\UserInterface.pas',
  _ComputerBrowserDialog in 'UserInterface\_ComputerBrowserDialog.pas',
  _DAItemDialog in 'UserInterface\_DAItemDialog.pas',
  _OpcBrowseDialog in 'UserInterface\_OpcBrowseDialog.pas',
  _OpcServerDialog in 'UserInterface\_OpcServerDialog.pas',
  Console in 'Console.pas',
  MessagePump in 'MessagePump.pas',
  OpcLabs_EasyOpcClassicComponents_TLB in '..\Imports\OpcLabs_EasyOpcClassicComponents_TLB.pas',
  OpcLabs_EasyOpcUAComponents_TLB in '..\Imports\OpcLabs_EasyOpcUAComponents_TLB.pas',
  OpcLabs_BaseLibComponents_TLB in '..\Imports\OpcLabs_BaseLibComponents_TLB.pas';

var
  action: TAction;
begin
  SetConsoleOutputCP(CP_UTF8);
  //ReportMemoryLeaksOnShutdown := True;

  try
    repeat
      WriteLn;
      action := ConsoleDialog.SelectItem<TAction>('Select OPC specification', 'Return',
        TArray<TNamedItem<TAction>>.Create(
          TNamedItem<TAction>.Create(@AlarmsAndEvents.AEExamplesMenu.Main, 'OPC Alarms&Events'),
          TNamedItem<TAction>.Create(@DataAccess.DAExamplesMenu.Main, 'OPC Data Access'),
          TNamedItem<TAction>.Create(@XmlDataAccess.XmlDAExamplesMenu.Main, 'OPC XML-DA'),
          TNamedItem<TAction>.Create(@UserInterface.UIExamplesMenu.Main, 'User Interface')
        )
      );
      if (action <> nil) then
      begin
        DoAction(action);
      end;

    until action = nil;
  except
    on E: Exception do
    Writeln(E.ClassName, ': ', E.Message);
  end;

end.
