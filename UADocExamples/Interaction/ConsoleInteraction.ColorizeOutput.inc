// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// Shows how to configure the OPC UA Console Interaction plug-in by turning off the output colorization.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure ConsoleInteraction.ColorizeOutput;
var
  Arguments: OleVariant;
  AttributeData: _UAAttributeData;
  Client: OpcLabs_EasyOpcUA_TLB._EasyUAClient;
  ClientManagement: TEasyUAClientManagement;
  ConsoleInteractionParameters: _ConsoleInteractionParameters;
  EndpointSelectionPolicy: _UAEndpointSelectionPolicy;
  ReadArguments: _UAReadArguments;
  Result: _UAAttributeDataResult;
  Results: OleVariant;
begin
  // Configure the shared plug-in.

  // The configuration object allows access to static behavior.
  ClientManagement := TEasyUAClientManagement.Create(nil);
  ClientManagement.Connect;

  // Find the parameters object of the plug-in.
  ConsoleInteractionParameters := IUnknown(ClientManagement.SharedParameters.PluginConfigurations.Find('OpcLabs.BaseLib.Console.Interaction.ConsoleInteractionParameters')) as _ConsoleInteractionParameters;
  // Change the parameter.
  ConsoleInteractionParameters.ColorizeOutput := False;

  // Do not implicitly trust any endpoint URLs. We want the user be asked explicitly.
  ClientManagement.SharedParameters.EngineParameters.CertificateAcceptancePolicy.TrustedEndpointUrlStrings.Clear();

  // Define which server we will work with.
  ReadArguments := CoUAReadArguments.Create;
  ReadArguments.EndpointDescriptor.UrlString := 'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  // Require secure connection, in order to enforce the certificate check.
  EndpointSelectionPolicy := CoUAEndpointSelectionPolicy.Create;
  EndpointSelectionPolicy.AllowedMessageSecurityModes := UAMessageSecurityModes_Secure;
  ReadArguments.EndpointDescriptor.EndpointSelectionPolicy := EndpointSelectionPolicy;
  ReadArguments.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10853';

  Arguments := VarArrayCreate([0, 0], varVariant);
  Arguments[0] := ReadArguments;

  // Instantiate the client object.
  Client := CoEasyUAClient.Create;

  // Obtain attribute data.
  // The component automatically triggers the necessary user interaction during the first operation.
  TVarData(Results).VType := varArray or varVariant;
  TVarData(Results).VArray := PVarArray(Client.ReadMultiple(Arguments));

  Result := IInterface(Results[0]) as _UAAttributeDataResult;
  if Result.Succeeded then
  begin
    AttributeData := Result.AttributeData;
    // Display results.
    WriteLn('Value: ', AttributeData.Value);
    WriteLn('ServerTimestamp: ', DateTimeToStr(AttributeData.ServerTimestamp));
    WriteLn('SourceTimestamp: ', DateTimeToStr(AttributeData.SourceTimestamp));
    WriteLn('StatusCode: ', AttributeData.StatusCode.ToString);
  end
  else
    WriteLn('*** Failure: ', Result.ErrorMessageBrief);

  VarClear(Results);
  VarClear(Arguments);
  FreeAndNil(ClientManagement);
end;
//#endregion Example
