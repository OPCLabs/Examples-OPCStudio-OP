// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to feed the packet capture file into the PubSub subscriber, instead of connecting to the message
// oriented middleware (receiving the messages from the network).
//
// In order to produce network messages for this example, run the UADemoPublisher tool. For documentation, see
// https://kb.opclabs.com/UADemoPublisher_Basics . In some cases, you may have to specify the interface name to be used.
//
// The OpcLabs.Pcap assembly needs to be referenced in your project (or otherwise made available, together with its
// dependencies) for the capture files to work. Refer to the documentation for more information.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  TSubscriberEventHandlers72 = class
    procedure OnDataSetMessage(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyUADataSetMessageEventArgs);
  end;

class procedure SubscribeDataSet.CaptureFile;
var
  ConnectionDescriptor: _UAPubSubConnectionDescriptor;
  SubscribeDataSetArguments: _EasyUASubscribeDataSetArguments;
  Subscriber: TEasyUASubscriber;
  SubscriberEventHandlers: TSubscriberEventHandlers72;
begin
  // Define the PubSub connection we will work with.
  SubscribeDataSetArguments := CoEasyUASubscribeDataSetArguments.Create;
  ConnectionDescriptor := SubscribeDataSetArguments.DataSetSubscriptionDescriptor.ConnectionDescriptor;
  ConnectionDescriptor.ResourceAddress.ResourceDescriptor.UrlString := 'opc.eth://FF-FF-FF-FF-FF-FF';
  // Use packets from the specified Ethernet capture file. The file itself is at the root of the project, and we
  // have specified that it has to be copied to the project's output directory.
  // Note that .pcap is the default file name extension, and can thus be omitted.
  ConnectionDescriptor.UseEthernetCaptureFile('UADemoPublisher-Ethernet.pcap');

  // Alternative setup for Ethernet with VLAN tagging:
  //ConnectionDescriptor.ResourceAddress.ResourceDescriptor.UrlString = 'opc.eth://FF-FF-FF-FF-FF-FF:2';
  //ConnectionDescriptor.UseEthernetCaptureFile('UADemoPublisher-EthernetVlan.pcap');

  // Alternative setup for UDP over IPv4:
  //ConnectionDescriptor.ResourceAddress.ResourceDescriptor.UrlString = 'opc.udp://239.0.0.1';
  //ConnectionDescriptor.UseUdpCaptureFile('UADemoPublisher-UDP.pcap');

  // Alternative setup for UDP over IPv6:
  //ConnectionDescriptor.ResourceAddress.ResourceDescriptor.UrlString = 'opc.udp://[ff02::1]';
  //ConnectionDescriptor.UseUdpCaptureFile('UADemoPublisher-UDP6.pcap');

  // Define the arguments for subscribing to the dataset, where the filter is (unsigned 64-bit) publisher Id 31.
  SubscribeDataSetArguments.DataSetSubscriptionDescriptor.Filter.PublisherId.SetIdentifier(UAPublisherIdType_UInt64, 31);

  // Instantiate the subscriber object and hook events.
  Subscriber := TEasyUASubscriber.Create(nil);
  SubscriberEventHandlers := TSubscriberEventHandlers72.Create;
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

procedure TSubscriberEventHandlers72.OnDataSetMessage(
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
//Dataset data: 2019-10-31T16:04:59.145,266,700,00; Good; Data; publisher=(UInt64)31, writer=1, fields: 4
//[#0, True {System.Boolean} @2019-10-31T16:04:59.145,266,700,00; Good]
//[#1, 0 {System.Int32} @2019-10-31T16:04:59.145,266,700,00; Good]
//[#2, 767 {System.Int32} @2019-10-31T16:04:59.145,266,700,00; Good]
//[#3, 10/31/2019 4:04:59 PM {System.DateTime} @2019-10-31T16:04:59.145,266,700,00; Good]
//
//Dataset data: 2019-10-31T16:04:59.170,047,500,00; Good; Data; publisher=(UInt64)31, writer=3, fields: 100
//[#0, 0 {System.Int64} @2019-10-31T16:04:59.170,047,500,00; Good]
//[#1, 100 {System.Int64} @2019-10-31T16:04:59.170,047,500,00; Good]
//[#2, 200 {System.Int64} @2019-10-31T16:04:59.170,047,500,00; Good]
//[#3, 300 {System.Int64} @2019-10-31T16:04:59.170,047,500,00; Good]
//[#4, 400 {System.Int64} @2019-10-31T16:04:59.170,047,500,00; Good]
//[#5, 500 {System.Int64} @2019-10-31T16:04:59.170,047,500,00; Good]
//[#6, 600 {System.Int64} @2019-10-31T16:04:59.170,047,500,00; Good]
//[#7, 700 {System.Int64} @2019-10-31T16:04:59.170,047,500,00; Good]
//[#8, 800 {System.Int64} @2019-10-31T16:04:59.170,047,500,00; Good]
//[#9, 900 {System.Int64} @2019-10-31T16:04:59.170,047,500,00; Good]
//[#10, 1000 {System.Int64} @2019-10-31T16:04:59.170,047,500,00; Good]
//...

//#endregion Example
