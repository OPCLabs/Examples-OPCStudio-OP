// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// Shows how to subscribe to complex data with OPC UA Complex Data plug-in.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  TClientEventHandlers33 = class
    procedure OnDataChangeNotification(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyUADataChangeNotificationEventArgs);
  end;

procedure TClientEventHandlers33.OnDataChangeNotification(
  ASender: TObject;
  sender: OleVariant;
  const eventArgs: _EasyUADataChangeNotificationEventArgs);
begin
  // Display value
  if eventArgs.Succeeded then
  	WriteLn('Value: ', eventArgs.AttributeData.Value.ToString)
  else
  	WriteLn('*** Failure: ', eventArgs.ErrorMessageBrief);

  // For processing the internals of the data, refer to examples for GenericData and DataType classes.
end;

class procedure SubscribeDataChange.Main;
var
  Client: TEasyUAClient;
  ClientEventHandlers: TClientEventHandlers33;
  EndpointDescriptor: string;
  NodeDescriptor: string;
begin
  // Define which server and node we will work with.
  EndpointDescriptor := 
    //'http://opcua.demo-this.com:51211/UA/SampleServer';
    //'https://opcua.demo-this.com:51212/UA/SampleServer/';
    'opc.tcp://opcua.demo-this.com:51210/UA/SampleServer';
  NodeDescriptor := 'nsu=http://test.org/UA/Data/ ;i=10867';  // [ObjectsFolder]/Data.Dynamic.Scalar.StructureValue

  // Instantiate the client object and hook events
  Client := TEasyUAClient.Create(nil);
  ClientEventHandlers := TClientEventHandlers33.Create;
  Client.OnDataChangeNotification := ClientEventHandlers.OnDataChangeNotification;

  // Subscribe to a node which returns complex data. This is done in the same way as regular subscribes - just
  // the data returned is different.
  WriteLn('Subscribing...');
  Client.SubscribeDataChange(EndpointDescriptor, NodeDescriptor, 1000);

  WriteLn('Processing data change events for 20 seconds...');
  PumpSleep(20*1000);

  WriteLn('Unsubscribing...');
  Client.UnsubscribeAllMonitoredItems;

  WriteLn('Waiting for 5 seconds...');
  PumpSleep(5*1000);

  WriteLn('Finished.');
  FreeAndNil(Client);
  FreeAndNil(ClientEventHandlers);

  // Example output:
  //
  //Subscribing...
  //Processing data change events for 20 seconds...
  //(ScalarValueDataType) structured
  //(ArrayValueDataType) structured
  //(ArrayValueDataType) structured
  //(ArrayValueDataType) structured
  //(ArrayValueDataType) structured
  //(ArrayValueDataType) structured
  //(ArrayValueDataType) structured
  //(ArrayValueDataType) structured
  //(ScalarValueDataType) structured
  //(ScalarValueDataType) structured
  //(ArrayValueDataType) structured
  //(ArrayValueDataType) structured
  //(ScalarValueDataType) structured
  //(ArrayValueDataType) structured
  //(ArrayValueDataType) structured
  //(ScalarValueDataType) structured
  //(ScalarValueDataType) structured
  //(ScalarValueDataType) structured
  //Unsubscribing...
  //Waiting for 5 seconds...
end;
//#endregion Example
