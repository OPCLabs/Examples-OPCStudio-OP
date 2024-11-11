// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to obtain dictionary of parameters of all monitored item subscriptions.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  TClientEventHandlers116 = class
    procedure Client_DataChangeNotification(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyUADataChangeNotificationEventArgs);
  end;

procedure TClientEventHandlers116.Client_DataChangeNotification(
  ASender: TObject;
  sender: OleVariant;
  const eventArgs: _EasyUADataChangeNotificationEventArgs);
begin
  // Your code would do the processing here
end;

class procedure GetMonitoredItemArgumentsDictionary.Main;
var
  Arguments: OleVariant;
  Client: TEasyUAClient;
  ClientEventHandlers: TClientEventHandlers116;
  Count: Cardinal;
  Element: OleVariant;
  HandleArray: OleVariant;
  MonitoredItemArguments1, MonitoredItemArguments2, MonitoredItemArguments3:
    _EasyUAMonitoredItemArguments;
  MonitoredItemArguments: _EasyUAMonitoredItemArguments;
  MonitoredItemArgumentsDictionary: _EasyUAMonitoredItemArgumentsDictionary;
  MonitoredItemArgumentsEnumerator: IEnumVARIANT;
begin
  // Instantiate the client object and hook events
  Client := TEasyUAClient.Create(nil);
  ClientEventHandlers := TClientEventHandlers116.Create;
  Client.OnDataChangeNotification := ClientEventHandlers.Client_DataChangeNotification;

  WriteLn('Subscribing...');
  MonitoredItemArguments1 := CoEasyUAMonitoredItemArguments.Create;
  MonitoredItemArguments1.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  MonitoredItemArguments1.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10845';
  MonitoredItemArguments2 := CoEasyUAMonitoredItemArguments.Create;
  MonitoredItemArguments2.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  MonitoredItemArguments2.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10853';
  MonitoredItemArguments3 := CoEasyUAMonitoredItemArguments.Create;
  MonitoredItemArguments3.EndpointDescriptor.UrlString := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  MonitoredItemArguments3.NodeDescriptor.NodeId.ExpandedText := 'nsu=http://test.org/UA/Data/ ;i=10855';

  Arguments := VarArrayCreate([0, 2], varVariant);
  Arguments[0] := MonitoredItemArguments1;
  Arguments[1] := MonitoredItemArguments2;
  Arguments[2] := MonitoredItemArguments3;

  TVarData(HandleArray).VType := varArray or varVariant;
  TVarData(HandleArray).VArray := PVarArray(
    Client.SubscribeMultipleMonitoredItems(Arguments));

  WriteLn('Getting monitored item arguments dictionary...');
  MonitoredItemArgumentsDictionary := Client.GetMonitoredItemArgumentsDictionary;

  MonitoredItemArgumentsEnumerator := MonitoredItemArgumentsDictionary.GetEnumerator;
  while (MonitoredItemArgumentsEnumerator.Next(1, Element, Count) = S_OK) do
  begin
    MonitoredItemArguments := IUnknown(Element.Value) as _EasyUAMonitoredItemArguments;
    WriteLn;
    WriteLn('NodeDescriptor: ', MonitoredItemArguments.NodeDescriptor.ToString);
    WriteLn('SamplingInterval: ', MonitoredItemArguments.MonitoringParameters.ToString);
    WriteLn('PublishingInterval: ', MonitoredItemArguments.SubscriptionParameters.ToString);
  end;

  WriteLn('Waiting for 5 seconds...');
  PumpSleep(5*1000);

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
