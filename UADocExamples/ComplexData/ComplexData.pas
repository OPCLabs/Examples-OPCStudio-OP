
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

unit ComplexData;

interface

type
  ComplexDataExamplesMenu = class
  public
    class procedure Main(); static;
end;

implementation
uses
  _DataType,
  _EasyUAClient2,
  _GenericData,
  _IEasyUAClientComplexData,
  _IUADataTypeDictionaryProvider,
  _PluginSetup,
  _UAComplexDataClientPluginParameters,
  Console;

class procedure ComplexDataExamplesMenu.Main();

var
  actionArray: TArray<TNamedAction>;
  cont: boolean;

begin
  actionArray := TArray<TNamedAction>.Create(
    TNamedAction.Create(@_DataType.Kind.Main, 'UADocExamples.ComplexData._DataType.Kind.Main'),
    TNamedAction.Create(@_EasyUAClient2.ReadValue.Main, 'UADocExamples.ComplexData._EasyUAClient.ReadValue.Main'),
    TNamedAction.Create(@_EasyUAClient2.SubscribeDataChange.Main, 'UADocExamples.ComplexData._EasyUAClient.SubscribeDataChange.Main'),
    TNamedAction.Create(@_EasyUAClient2.WriteValue.Main, 'UADocExamples.ComplexData._EasyUAClient.WriteValue.Main'),
    TNamedAction.Create(@_GenericData._Construction.Main, 'UADocExamples.ComplexData._GenericData._Construction.Main'),
    TNamedAction.Create(@_GenericData.DataTypeKind1.Main, 'UADocExamples.ComplexData._GenericData.DataTypeKind1.Main'),
    TNamedAction.Create(@_IEasyUAClientComplexData.ResolveDataType.Main, 'UADocExamples.ComplexData._IEasyUAClientComplexData.ResolveDataType.Main'),
    TNamedAction.Create(@_IUADataTypeDictionaryProvider.ResolveDataTypeDescriptorFromDataTypeEncodingId.Main, 'UADocExamples.ComplexData._IUADataTypeDictionaryProvider.ResolveDataTypeDescriptorFromDataTypeEncodingId.Main'),
    TNamedAction.Create(@_PluginSetup.Enabled.Main, 'UADocExamples.ComplexData._PluginSetup.Enabled.Main'),
    TNamedAction.Create(@_UAComplexDataClientPluginParameters.IsolatedDataTypeModelProvider.Main, 'UADocExamples.ComplexData._UAComplexDataClientPluginParameters.IsolatedDataTypeModelProvider.Main')
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
