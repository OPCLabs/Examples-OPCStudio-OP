// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to repeatedly read 300 variables from Softing OPC UA .NET Demo Server.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure Softing_OpcUaNetDemoServer.RepeatedReadMany;
const
  EndpointDescriptorUrlString = 'opc.tcp://TEST-OPC-3:51510/UA/DemoServer';
  NamespaceUriString = 'nsu=http://opcfoundation.org/Quickstarts/ReferenceApplications';
var
  Arguments: OleVariant;
  Client: TEasyUAClient;
  FailureCount: Cardinal;
  SuccessCount: Cardinal;
  I, J: Cardinal;
  ReadArguments1, ReadArguments2, ReadArguments3: _UAReadArguments;
  Results: OleVariant;
begin
  // Instantiate the client object
  Client := TEasyUAClient.Create(nil);

  //
  Arguments := VarArrayCreate([0, 299], varVariant);
  for I := 0 to 99 do
  begin
    ReadArguments1 := CoUAReadArguments.Create;
    ReadArguments1.EndpointDescriptor.UrlString := EndpointDescriptorUrlString;
    ReadArguments1.NodeDescriptor.NodeId.ExpandedText := NamespaceUriString +
      Format(' ;s=/Dynamic/All Profiles/Scalar Mass/Boolean/Boolean%.3d', [I]);

    ReadArguments2 := CoUAReadArguments.Create;
    ReadArguments2.EndpointDescriptor.UrlString := EndpointDescriptorUrlString;
    ReadArguments2.NodeDescriptor.NodeId.ExpandedText := NamespaceUriString +
      Format(' ;s=/Dynamic/All Profiles/Scalar Mass/Int16/Int16%.3d', [I]);

    ReadArguments3 := CoUAReadArguments.Create;
    ReadArguments3.EndpointDescriptor.UrlString := EndpointDescriptorUrlString;
    ReadArguments3.NodeDescriptor.NodeId.ExpandedText := NamespaceUriString +
      Format(' ;s=/Dynamic/All Profiles/Scalar Mass/Float/Float%.3d', [I]);

    Arguments[I] := ReadArguments1;
    Arguments[100 + I] := ReadArguments2;
    Arguments[200 + I] := ReadArguments3;
  end;

  WriteLn;
  WriteLn('Read the variables and wait 1 second, 60 times...');
  for J := 1 to 60 do
  begin
    TVarData(Results).VType := varArray or varVariant;
    TVarData(Results).VArray := PVarArray(Client.ReadMultiple(Arguments));

    SuccessCount := 0;
    FailureCount := 0;
    for I := 0 to 299 do
       if Results[I].Succeeded then
         SuccessCount := SuccessCount + 1
       else
         FailureCount := FailureCount + 1;
    WriteLn(Format('Success count: %d, failure count: %d', [SuccessCount, FailureCount]));

    PumpSleep(1000);
  end;

  WriteLn;
  WriteLn('Finished.');
  VarClear(Results);
  VarClear(Arguments);
  FreeAndNil(Client);
end;
//#endregion Example
