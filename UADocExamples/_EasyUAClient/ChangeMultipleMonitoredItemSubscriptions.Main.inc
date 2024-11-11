// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how change the sampling rate of multiple existing monitored item subscriptions.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.


type
  TClientEventHandlers111 = class
    procedure OnDataChangeNotification(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyUADataChangeNotificationEventArgs);
  end;

procedure TClientEventHandlers111.OnDataChangeNotification(
  ASender: TObject;
  sender: OleVariant;
  const eventArgs: _EasyUADataChangeNotificationEventArgs);
begin
  // Display the data
  if eventArgs.Succeeded then
  	WriteLn(eventArgs.Arguments.NodeDescriptor.ToString, ': ',
      eventArgs.AttributeData.ToString)
  else
  	WriteLn(eventArgs.Arguments.NodeDescriptor.ToString, ' *** Failure: ',
      eventArgs.ErrorMessageBrief);
end;

class procedure ChangeMultipleMonitoredItemSubscriptions.Main;
var
  Arguments: OleVariant;
  Client: TEasyUAClient;
  ClientEventHandlers: TClientEventHandlers111;
  Handle: Cardinal;
  HandleArray: OleVariant;
  I: Cardinal;
  MonitoredItemArguments1, MonitoredItemArguments2, MonitoredItemArguments3:
    _EasyUAMonitoredItemArguments;
  OldMonitoringParameters, NewMonitoringParameters: _UAMonitoringParameters;
  SubscriptionChangeArguments: OleVariant;
  SubscriptionChangeArguments1, SubscriptionChangeArguments2, SubscriptionChangeArguments3:
    _EasyUASubscriptionChangeArguments;
begin
  // Instantiate the client object and hook events
  Client := TEasyUAClient.Create(nil);
  ClientEventHandlers := TClientEventHandlers111.Create;
  Client.OnDataChangeNotification := ClientEventHandlers.OnDataChangeNotification;

  WriteLn('Subscribing...');
  OldMonitoringParameters := CoUAMonitoringParameters.Create;
  OldMonitoringParameters.SamplingInterval := 1000;
  MonitoredItemArguments1 := CoEasyUAMonitoredItemArguments.Create;
  MonitoredItemArguments1.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  MonitoredItemArguments1.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10845';
  MonitoredItemArguments1.MonitoringParameters := OldMonitoringParameters;
  MonitoredItemArguments2 := CoEasyUAMonitoredItemArguments.Create;
  MonitoredItemArguments2.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  MonitoredItemArguments2.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10853';
  MonitoredItemArguments2.MonitoringParameters := OldMonitoringParameters;
  MonitoredItemArguments3 := CoEasyUAMonitoredItemArguments.Create;
  MonitoredItemArguments3.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  MonitoredItemArguments3.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10855';
  MonitoredItemArguments3.MonitoringParameters := OldMonitoringParameters;
  Arguments := VarArrayCreate([0, 2], varVariant);
  Arguments[0] := MonitoredItemArguments1;
  Arguments[1] := MonitoredItemArguments2;
  Arguments[2] := MonitoredItemArguments3;

  TVarData(HandleArray).VType := varArray or varVariant;
  TVarData(HandleArray).VArray := PVarArray(
    Client.SubscribeMultipleMonitoredItems(Arguments));

  for I := VarArrayLowBound(HandleArray, 1) to VarArrayHighBound(HandleArray, 1) do
  begin
      Handle := Cardinal(HandleArray[I]);
      WriteLn('HandleArray[', I, ']: ', Handle);
  end;

  WriteLn('Processing monitored item changed events for 10 seconds...');
  PumpSleep(10*1000);

  WriteLn('Changing subscriptions...');
  NewMonitoringParameters := CoUAMonitoringParameters.Create;
  NewMonitoringParameters.SamplingInterval := 100;
  SubscriptionChangeArguments1 := CoEasyUASubscriptionChangeArguments.Create;
  SubscriptionChangeArguments1.Handle := Cardinal(HandleArray[0]);
  SubscriptionChangeArguments1.MonitoringParameters := NewMonitoringParameters;
  SubscriptionChangeArguments2 := CoEasyUASubscriptionChangeArguments.Create;
  SubscriptionChangeArguments2.Handle := Cardinal(HandleArray[1]);
  SubscriptionChangeArguments2.MonitoringParameters := NewMonitoringParameters;
  SubscriptionChangeArguments3 := CoEasyUASubscriptionChangeArguments.Create;
  SubscriptionChangeArguments3.Handle := Cardinal(HandleArray[2]);
  SubscriptionChangeArguments3.MonitoringParameters := NewMonitoringParameters;
  SubscriptionChangeArguments := VarArrayCreate([0, 2], varVariant);
  SubscriptionChangeArguments[0] := SubscriptionChangeArguments1;
  SubscriptionChangeArguments[1] := SubscriptionChangeArguments2;
  SubscriptionChangeArguments[2] := SubscriptionChangeArguments3;

  Client.ChangeMultipleMonitoredItemSubscriptions(SubscriptionChangeArguments);

  WriteLn('Processing monitored item changed events for 10 seconds...');
  PumpSleep(10*1000);

  WriteLn('Unsubscribing...');
  Client.UnsubscribeAllMonitoredItems;

  WriteLn('Waiting for 5 seconds...');
  Sleep(5*1000);

  WriteLn('Finished.');
  VarClear(HandleArray);
  VarClear(Arguments);
  FreeAndNil(Client);
  FreeAndNil(ClientEventHandlers);
end;
//#endregion Example
