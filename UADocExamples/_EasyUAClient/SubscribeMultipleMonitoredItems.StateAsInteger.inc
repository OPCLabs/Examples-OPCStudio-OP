// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to subscribe to changes of multiple monitored items
// and display each change, identifying the different subscriptions by an
// integer.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  TIntegerClientEventHandlers124 = class
    procedure OnDataChangeNotification(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyUADataChangeNotificationEventArgs);
  end;

procedure TIntegerClientEventHandlers124.OnDataChangeNotification(
  ASender: TObject;
  sender: OleVariant;
  const eventArgs: _EasyUADataChangeNotificationEventArgs);
var
  stateAsInteger: Integer;
begin
  // Obtain the integer state we have passed in.
  stateAsInteger := eventArgs.Arguments.State;
  if eventArgs.Succeeded then
  	WriteLn(stateAsInteger, ': ', eventArgs.AttributeData.ToString)
  else
  	WriteLn(stateAsInteger, ' *** Failure: ', eventArgs.ErrorMessageBrief);
end;


class procedure SubscribeMultipleMonitoredItems.StateAsInteger;
var
  Arguments: OleVariant;
  Client: TEasyUAClient;
  ClientEventHandlers: TIntegerClientEventHandlers124;
  Handle: Cardinal;
  HandleArray: OleVariant;
  I: Cardinal;
  MonitoredItemArguments1, MonitoredItemArguments2, MonitoredItemArguments3:
    _EasyUAMonitoredItemArguments;
  MonitoringParameters: _UAMonitoringParameters;
begin
  // Instantiate the client object and hook events
  Client := TEasyUAClient.Create(nil);
  ClientEventHandlers := TIntegerClientEventHandlers124.Create;
  Client.OnDataChangeNotification := ClientEventHandlers.OnDataChangeNotification;

  WriteLn('Subscribing...');
  MonitoringParameters := CoUAMonitoringParameters.Create;
  MonitoringParameters.SamplingInterval := 1000;

  MonitoredItemArguments1 := CoEasyUAMonitoredItemArguments.Create;
  MonitoredItemArguments1.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  MonitoredItemArguments1.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10845';
  MonitoredItemArguments1.MonitoringParameters := MonitoringParameters;
  MonitoredItemArguments1.SetState(1);  // An integer we have chosen to identify the subscription

  MonitoredItemArguments2 := CoEasyUAMonitoredItemArguments.Create;
  MonitoredItemArguments2.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  MonitoredItemArguments2.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10853';
  MonitoredItemArguments2.MonitoringParameters := MonitoringParameters;
  MonitoredItemArguments2.SetState(2);  // An integer we have chosen to identify the subscription

  MonitoredItemArguments3 := CoEasyUAMonitoredItemArguments.Create;
  MonitoredItemArguments3.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  MonitoredItemArguments3.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10855';
  MonitoredItemArguments3.MonitoringParameters := MonitoringParameters;
  MonitoredItemArguments3.SetState(3);  // An integer we have chosen to identify the subscription

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
