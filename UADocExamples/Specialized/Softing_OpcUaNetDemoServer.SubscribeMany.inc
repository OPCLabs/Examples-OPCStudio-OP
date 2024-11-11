// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to subscribe to 300 monitored items from Softing OPC UA .NET Demo Server.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  TClientEventHandlers1 = class
    FailureCount: Cardinal;
    SuccessCount: Cardinal;
    procedure OnDataChangeNotification(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyUADataChangeNotificationEventArgs);
  end;

procedure TClientEventHandlers1.OnDataChangeNotification(
  ASender: TObject;
  sender: OleVariant;
  const eventArgs: _EasyUADataChangeNotificationEventArgs);
begin
  // Process the data.
  if eventArgs.Succeeded then
    SuccessCount := SuccessCount + 1
  else
    FailureCount := FailureCount + 1;
end;

class procedure Softing_OpcUaNetDemoServer.SubscribeMany;
const
  EndpointDescriptorUrlString = 'opc.tcp://TEST-OPC-3:51510/UA/DemoServer';
  NamespaceUriString = 'nsu=http://opcfoundation.org/Quickstarts/ReferenceApplications';
var
  Arguments: OleVariant;
  Client: TEasyUAClient;
  ClientEventHandlers: TClientEventHandlers1;
  HandleArray: OleVariant;
  I: Cardinal;
  MonitoredItemArguments1, MonitoredItemArguments2, MonitoredItemArguments3: _EasyUAMonitoredItemArguments;
  MonitoringParameters: _UAMonitoringParameters;
begin
  // Instantiate the client object and hook events
  Client := TEasyUAClient.Create(nil);
  ClientEventHandlers := TClientEventHandlers1.Create;
  Client.OnDataChangeNotification := ClientEventHandlers.OnDataChangeNotification;

  //
  MonitoringParameters := CoUAMonitoringParameters.Create;
  MonitoringParameters.SamplingInterval := 1000;
  Arguments := VarArrayCreate([0, 299], varVariant);
  for I := 0 to 99 do
  begin
    MonitoredItemArguments1 := CoEasyUAMonitoredItemArguments.Create;
    MonitoredItemArguments1.EndpointDescriptor.UrlString := EndpointDescriptorUrlString;
    MonitoredItemArguments1.NodeDescriptor.NodeId.ExpandedText := NamespaceUriString +
      Format(' ;s=/Dynamic/All Profiles/Scalar Mass/Boolean/Boolean%.3d', [I]);
    MonitoredItemArguments1.MonitoringParameters := MonitoringParameters;

    MonitoredItemArguments2 := CoEasyUAMonitoredItemArguments.Create;
    MonitoredItemArguments2.EndpointDescriptor.UrlString := EndpointDescriptorUrlString;
    MonitoredItemArguments2.NodeDescriptor.NodeId.ExpandedText := NamespaceUriString +
      Format(' ;s=/Dynamic/All Profiles/Scalar Mass/Int16/Int16%.3d', [I]);
    MonitoredItemArguments2.MonitoringParameters := MonitoringParameters;

    MonitoredItemArguments3 := CoEasyUAMonitoredItemArguments.Create;
    MonitoredItemArguments3.EndpointDescriptor.UrlString := EndpointDescriptorUrlString;
    MonitoredItemArguments3.NodeDescriptor.NodeId.ExpandedText := NamespaceUriString +
      Format(' ;s=/Dynamic/All Profiles/Scalar Mass/Float/Float%.3d', [I]);
    MonitoredItemArguments3.MonitoringParameters := MonitoringParameters;

    Arguments[I] := MonitoredItemArguments1;
    Arguments[100 + I] := MonitoredItemArguments2;
    Arguments[200 + I] := MonitoredItemArguments3;
  end;

  WriteLn('Subscribing...');
  TVarData(HandleArray).VType := varArray or varVariant;
  TVarData(HandleArray).VArray := PVarArray(Client.SubscribeMultipleMonitoredItems(Arguments));

  WriteLn('Processing monitored item changed events for 60 seconds...');
  PumpSleep(60*1000);

  WriteLn('Unsubscribing...');
  Client.UnsubscribeAllMonitoredItems;

  WriteLn('Waiting for 5 seconds...');
  Sleep(5*1000);

  WriteLn;
  WriteLn(Format('Success count: %d', [ClientEventHandlers.SuccessCount]));
  WriteLn(Format('Failure count: %d', [ClientEventHandlers.FailureCount]));
  WriteLn(Format('Total count: %d', [ClientEventHandlers.SuccessCount + ClientEventHandlers.FailureCount]));

  WriteLn;
  WriteLn('Finished.');
  VarClear(HandleArray);
  VarClear(Arguments);
  FreeAndNil(Client);
  FreeAndNil(ClientEventHandlers);
end;
//#endregion Example
