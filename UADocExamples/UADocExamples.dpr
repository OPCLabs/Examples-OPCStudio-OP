// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .

program UADocExamples;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Accessibility_TLB in '..\Imports\Accessibility_TLB.pas',
  mscorlib_TLB in '..\Imports\mscorlib_TLB.pas',
  OpcLabs_BaseLib_TLB in '..\Imports\OpcLabs_BaseLib_TLB.pas',
  OpcLabs_BaseLibForms_TLB in '..\Imports\OpcLabs_BaseLibForms_TLB.pas',
  OpcLabs_EasyOpcForms_TLB in '..\Imports\OpcLabs_EasyOpcForms_TLB.pas',
  OpcLabs_EasyOpcUA_TLB in '..\Imports\OpcLabs_EasyOpcUA_TLB.pas',
  System.SysUtils,
  Windows,
  System_TLB in '..\Imports\System_TLB.pas',
  System_Windows_Forms_TLB in '..\Imports\System_Windows_Forms_TLB.pas',
  System_Drawing_TLB in '..\Imports\System_Drawing_TLB.pas',
  OpcLabs_EasyOpcClassic_TLB in '..\Imports\OpcLabs_EasyOpcClassic_TLB.pas',
  Main in 'Main.pas',
  PubSub in 'PubSub\PubSub.pas',
  Console in 'Console.pas',
  MessagePump in 'MessagePump.pas',
  _EasyUAClient in '_EasyUAClient\_EasyUAClient.pas',
  _EasyUAClientManagement in '_EasyUAClientManagement\_EasyUAClientManagement.pas',
  _ComputerBrowserDialog in 'UserInterface\_ComputerBrowserDialog.pas',
  _UABrowseDialog in 'UserInterface\_UABrowseDialog.pas',
  _UADataDialog in 'UserInterface\_UADataDialog.pas',
  _UAEndpointDialog in 'UserInterface\_UAEndpointDialog.pas',
  _UAHostAndEndpointDialog in 'UserInterface\_UAHostAndEndpointDialog.pas',
  UserInterface in 'UserInterface\UserInterface.pas',
  _EasyUASubscriber in 'PubSub\_EasyUASubscriber.pas',
  _UAApplicationManifest in '_UAApplicationManifest\_UAApplicationManifest.pas',
  AlarmsAndConditions in 'AlarmsAndConditions\AlarmsAndConditions.pas',
  _UABrowsePathParser in '_UABrowsePathParser\_UABrowsePathParser.pas',
  _UAIndexRangeList in '_UAIndexRangeList\_UAIndexRangeList.pas',
  _UANodeId in '_UANodeId\_UANodeId.pas',
  Application in 'Application\Application.pas',
  _IEasyUAClientServerApplication in 'Application\_IEasyUAClientServerApplication.pas',
  ComplexData in 'ComplexData\ComplexData.pas',
  _EasyUAClient2 in 'ComplexData\_EasyUAClient2.pas',
  _GenericData in 'ComplexData\_GenericData.pas',
  _IEasyUAClientComplexData in 'ComplexData\_IEasyUAClientComplexData.pas',
  _IUADataTypeDictionaryProvider in 'ComplexData\_IUADataTypeDictionaryProvider.pas',
  _PluginSetup in 'ComplexData\_PluginSetup.pas',
  _UAComplexDataClientPluginParameters in 'ComplexData\_UAComplexDataClientPluginParameters.pas',
  Gds in 'Gds\Gds.pas',
  _EasyUACertificateManagementClient in 'Gds\_EasyUACertificateManagementClient.pas',
  _EasyUAGlobalDiscoveryClient in 'Gds\_EasyUAGlobalDiscoveryClient.pas',
  Interaction in 'Interaction\Interaction.pas',
  Licensing in 'Licensing\Licensing.pas',
  _IUAReadOnlyPubSubConfiguration in 'PubSub\_IUAReadOnlyPubSubConfiguration.pas',
  _DataType in 'ComplexData\_DataType.pas',
  Specialized in 'Specialized\Specialized.pas',
  OpcLabs_EasyOpcClassicCore_TLB in '..\Imports\OpcLabs_EasyOpcClassicCore_TLB.pas',
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
      action := ConsoleDialog.SelectItem<TAction>('Select example group', 'Return',
        TArray<TNamedItem<TAction>>.Create(
          TNamedItem<TAction>.Create(@Main.UAExamplesMenu.Main, 'Main'),
          TNamedItem<TAction>.Create(@AlarmsAndConditions.AlarmsAndConditionsExamplesMenu.Main, 'Alarms and Conditions'),
          TNamedItem<TAction>.Create(@Application.ApplicationExamplesMenu.Main, 'Application'),
          TNamedItem<TAction>.Create(@ComplexData.ComplexDataExamplesMenu.Main, 'Complex Data'),
          TNamedItem<TAction>.Create(@Gds.GdsExamplesMenu.Main, 'GDS'),
          TNamedItem<TAction>.Create(@Interaction.InteractionExamplesMenu.Main, 'Interaction'),
          TNamedItem<TAction>.Create(@Licensing.LicensingExamplesMenu.Main, 'Licensing'),
          TNamedItem<TAction>.Create(@PubSub.PubSubExamplesMenu.Main, 'PubSub'),
          TNamedItem<TAction>.Create(@Specialized.SpecializedExamplesMenu.Main, 'Specialized'),
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
