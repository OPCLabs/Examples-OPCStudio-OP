// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to subscribe to all dataset messages on an OPC-UA PubSub connection with Ethernet UADP mapping.
//
// In order to produce network messages for this example, run the UADemoPublisher tool. For documentation, see
// https://kb.opclabs.com/UADemoPublisher_Basics . In some cases, you may have to specify the interface name to be used.
// The UADemoPublisher must be told to use the Ethernet transport: run it with the -eth switch on the command line.
//
// The OpcLabs.Pcap assembly needs to be referenced in your project (or otherwise made available, together with its
// dependencies) for the Ethernet transport to work, and additional software installation may be needed as well. Refer to
// the documentation for more information.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  TSubscriberEventHandlers73 = class
    procedure OnDataSetMessage(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyUADataSetMessageEventArgs);
  end;

class procedure SubscribeDataSet.Ethernet;
var
  ConnectionDescriptor: _UAPubSubConnectionDescriptor;
  SubscribeDataSetArguments: _EasyUASubscribeDataSetArguments;
  Subscriber: TEasyUASubscriber;
  SubscriberEventHandlers: TSubscriberEventHandlers73;
begin
  // Define the PubSub connection we will work with.
  SubscribeDataSetArguments := CoEasyUASubscribeDataSetArguments.Create;
  ConnectionDescriptor := SubscribeDataSetArguments.DataSetSubscriptionDescriptor.ConnectionDescriptor;
  // "opc.eth" is the scheme for OPC UA Ethernet. "FF-FF-FF-FF-FF-FF" is the Ethernet broadcast address.
  ConnectionDescriptor.ResourceAddress.ResourceDescriptor.UrlString := 'opc.eth://FF-FF-FF-FF-FF-FF';
  // In some cases you may have to set the interface (network adapter) name that needs to be used, similarly to
  // the statement below. Your actual interface name may differ, of course.
  //ConnectionDescriptor.ResourceAddress.InterfaceName := 'Ethernet';

  // Instantiate the subscriber object and hook events.
  Subscriber := TEasyUASubscriber.Create(nil);
  SubscriberEventHandlers := TSubscriberEventHandlers73.Create;
  Subscriber.OnDataSetMessage := SubscriberEventHandlers.OnDataSetMessage;

  WriteLn('Subscribing...');
  Subscriber.SubscribeDataSet(SubscribeDataSetArguments);

  WriteLn('Processing dataset message for 20 seconds...');
  PumpSleep(20*1000);

  WriteLn('Unsubscribing...');
  Subscriber.UnsubscribeAllDataSets;

  WriteLn('Waiting for 1 second...');
  // Unsubscribe operation is asynchronous, messages may still come for a short while.
  PumpSleep(1*1000);

  WriteLn('Finished.');
  FreeAndNil(Subscriber);
  FreeAndNil(SubscriberEventHandlers);
end;

procedure TSubscriberEventHandlers73.OnDataSetMessage(
  ASender: TObject;
  sender: OleVariant;
  const eventArgs: _EasyUADataSetMessageEventArgs);
var
  Count: Cardinal;
  DictionaryEntry2: _DictionaryEntry2;
  Element: OleVariant;
  FieldDataDictionaryEnumerator: IEnumVariant;
begin
  // Display the dataset.
  if eventArgs.Succeeded then
  begin
    // An event with null DataSetData just indicates a successful connection.
    if eventArgs.DataSetData <> nil then
    begin
      WriteLn;
      WriteLn('Dataset data: ', eventArgs.DataSetData.ToString);
      FieldDataDictionaryEnumerator := eventArgs.DataSetData.FieldDataDictionary.GetEnumerator;
      while (FieldDataDictionaryEnumerator.Next(1, Element, Count) = S_OK) do
      begin
        DictionaryEntry2 := IUnknown(Element) as _DictionaryEntry2;
        WriteLn(DictionaryEntry2.ToString);
      end;
    end;
  end
  else begin
    WriteLn;
	  WriteLn('*** Failure: ', eventArgs.ErrorMessageBrief);
  end;
end;

// Example output:
//
//Subscribing...
//Processing dataset message events for 20 seconds...
//
////Dataset data: Good; Data; publisher="32", writer=1, class=eae79794-1af7-4f96-8401-4096cd1d8908, fields: 4
//[#0, True {System.Boolean} @0001-01-01T00:00:00.000 @@0001-01-01T00:00:00.000; Good]
//[#1, 7945 {System.Int32} @0001-01-01T00:00:00.000 @@0001-01-01T00:00:00.000; Good]
//[#2, 5246 {System.Int32} @0001-01-01T00:00:00.000 @@0001-01-01T00:00:00.000; Good]
//[#3, 9/30/2019 11:19:14 AM {System.DateTime} @0001-01-01T00:00:00.000 @@0001-01-01T00:00:00.000; Good]
//
//Dataset data: Good; Data; publisher="32", writer=3, class=96976b7b-0db7-46c3-a715-0979884b55ae, fields: 100
//[#0, 45 {System.Int64} @0001-01-01T00:00:00.000 @@0001-01-01T00:00:00.000; Good]
//[#1, 145 {System.Int64} @0001-01-01T00:00:00.000 @@0001-01-01T00:00:00.000; Good]
//[#2, 245 {System.Int64} @0001-01-01T00:00:00.000 @@0001-01-01T00:00:00.000; Good]
//[#3, 345 {System.Int64} @0001-01-01T00:00:00.000 @@0001-01-01T00:00:00.000; Good]
//[#4, 445 {System.Int64} @0001-01-01T00:00:00.000 @@0001-01-01T00:00:00.000; Good]
//[#5, 545 {System.Int64} @0001-01-01T00:00:00.000 @@0001-01-01T00:00:00.000; Good]
//[#6, 645 {System.Int64} @0001-01-01T00:00:00.000 @@0001-01-01T00:00:00.000; Good]
//[#7, 745 {System.Int64} @0001-01-01T00:00:00.000 @@0001-01-01T00:00:00.000; Good]
//[#8, 845 {System.Int64} @0001-01-01T00:00:00.000 @@0001-01-01T00:00:00.000; Good]
//[#9, 945 {System.Int64} @0001-01-01T00:00:00.000 @@0001-01-01T00:00:00.000; Good]
//[#10, 1045 {System.Int64} @0001-01-01T00:00:00.000 @@0001-01-01T00:00:00.000; Good]
//...

//#endregion Example
