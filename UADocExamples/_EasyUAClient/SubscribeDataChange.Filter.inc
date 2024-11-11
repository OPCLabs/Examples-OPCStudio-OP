// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to subscribe to changes of a monitored item
// with data change filter.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  TClientEventHandlers120 = class
    procedure Client_DataChangeNotification(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyUADataChangeNotificationEventArgs);
  end;

procedure TClientEventHandlers120.Client_DataChangeNotification(
  ASender: TObject;
  sender: OleVariant;
  const eventArgs: _EasyUADataChangeNotificationEventArgs);
begin
  // Display the data
  if eventArgs.Succeeded then
  begin
  	WriteLn(eventArgs.AttributeData.ToString);
  end
  else
  	WriteLn(' *** Failure: ', eventArgs.ErrorMessageBrief);
end;

class procedure SubscribeDataChange.Filter;
const
  UADataChangeFilter_StatusValue = 1;
var
  Arguments: OleVariant;
  Client: TEasyUAClient;
  ClientEventHandlers: TClientEventHandlers120;
  DataChangeFilter: _UADataChangeFilter;
  EndpointDescriptor: string;
  MonitoringItemArguments1: _EasyUAMonitoredItemArguments;
  MonitoringParameters:  _UAMonitoringParameters;
begin
  EndpointDescriptor := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';

  // Instantiate the client object and hook events
  Client := TEasyUAClient.Create(nil);
  ClientEventHandlers := TClientEventHandlers120.Create;
  Client.OnDataChangeNotification := ClientEventHandlers.Client_DataChangeNotification;

  // Prepare the arguments.
  // Report a notification if either the StatusCode or the value change.
  DataChangeFilter := CoUADataChangeFilter.Create;
  DataChangeFilter.Trigger := UADataChangeFilter_StatusValue;
  MonitoringParameters := CoUAMonitoringParameters.Create;
  MonitoringParameters.DataChangeFilter := DataChangeFilter;
  MonitoringParameters.SamplingInterval := 100;
  MonitoringItemArguments1 := CoEasyUAMonitoredItemArguments.Create;
  MonitoringItemArguments1.EndpointDescriptor.UrlString := EndpointDescriptor;
  MonitoringItemArguments1.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10853';
  MonitoringItemArguments1.MonitoringParameters := MonitoringParameters;

  Arguments := VarArrayCreate([0, 0], varVariant);
  Arguments[0] := MonitoringItemArguments1;

  WriteLn('Subscribing...');
  Client.SubscribeMultipleMonitoredItems(arguments);

  WriteLn('Processing monitored item changed events for 20 seconds...');
  PumpSleep(20*1000);

  WriteLn('Unsubscribing...');
  Client.UnsubscribeAllMonitoredItems;

  WriteLn('Waiting for 5 seconds...');
  PumpSleep(5*1000);

  WriteLn('Finished.');
  VarClear(Arguments);
  FreeAndNil(Client);
  FreeAndNil(ClientEventHandlers);
end;
//#endregion Example
