// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to subscribe to all dataset messages with specific publisher Id, on an OPC-UA PubSub connection
// with UDP UADP mapping.
//
// In order to produce network messages for this example, run the UADemoPublisher tool. For documentation, see
// https://kb.opclabs.com/UADemoPublisher_Basics . In some cases, you may have to specify the interface name to be used.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  TSubscriberEventHandlers80 = class
    procedure OnDataSetMessage(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyUADataSetMessageEventArgs);
  end;

class procedure SubscribeDataSet.PublisherId;
var
  ConnectionDescriptor: _UAPubSubConnectionDescriptor;
  SubscribeDataSetArguments: _EasyUASubscribeDataSetArguments;
  Subscriber: TEasyUASubscriber;
  SubscriberEventHandlers: TSubscriberEventHandlers80;
begin
  // Define the PubSub connection we will work with.
  SubscribeDataSetArguments := CoEasyUASubscribeDataSetArguments.Create;
  ConnectionDescriptor := SubscribeDataSetArguments.DataSetSubscriptionDescriptor.ConnectionDescriptor;
  ConnectionDescriptor.ResourceAddress.ResourceDescriptor.UrlString := 'opc.udp://239.0.0.1';
  // In some cases you may have to set the interface (network adapter) name that needs to be used, similarly to
  // the statement below. Your actual interface name may differ, of course.
  //ConnectionDescriptor.ResourceAddress.InterfaceName := 'Ethernet';

  // Define the arguments for subscribing to the dataset, where the filter is (unsigned 64-bit) publisher Id 31.
  SubscribeDataSetArguments.DataSetSubscriptionDescriptor.Filter.PublisherId.SetIdentifier(UAPublisherIdType_UInt64, 31);

  // Instantiate the subscriber object and hook events.
  Subscriber := TEasyUASubscriber.Create(nil);
  SubscriberEventHandlers := TSubscriberEventHandlers80.Create;
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

procedure TSubscriberEventHandlers80.OnDataSetMessage(
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
//Dataset data: Good; Event; publisher=(UInt64)31, writer=51, fields: 4
//[#0, True {System.Boolean}; Good]
//[#1, 1237 {System.Int32}; Good]
//[#2, 2514 {System.Int32}; Good]
//[#3, 10/1/2019 9:03:59 AM {System.DateTime}; Good]
//
//Dataset data: Good; Data; publisher=(UInt64)31, writer=1, fields: 4
//[#0, False {System.Boolean}; Good]
//[#1, 1239 {System.Int32}; Good]
//[#2, 2703 {System.Int32}; Good]
//[#3, 10/1/2019 9:04:01 AM {System.DateTime}; Good]
//
//Dataset data: Good; Data; publisher=(UInt64)31, writer=4, fields: 16
//[#0, False {System.Boolean}; Good]
//[#1, 215 {System.Byte}; Good]
//[#2, 1239 {System.Int16}; Good]
//[#3, 1239 {System.Int32}; Good]
//[#4, 1239 {System.Int64}; Good]
//[#5, 87 {System.Int16}; Good]
//[#6, 1239 {System.Int32}; Good]
//[#7, 1239 {System.Int64}; Good]
//[#8, 1239 {System.Decimal}; Good]
//[#9, 1239 {System.Single}; Good]
//[#10, 1239 {System.Double}; Good]
//[#11, Romeo {System.String}; Good]
//[#12, [20] {175, 186, 248, 246, 215, ...} {System.Byte[]}; Good]
//[#13, d4492ca8-35c8-4b98-8edf-6ffa5ca041ca {System.Guid}; Good]
//[#14, 10/1/2019 9:04:01 AM {System.DateTime}; Good]
//[#15, [10] {1239, 1240, 1241, 1242, 1243, ...} {System.Int64[]}; Good]
//
//Dataset data: Good; Data; publisher=(UInt64)31, writer=1, fields: 4
//[#2, 2722 {System.Int32}; Good]
//[#3, 10/1/2019 9:04:01 AM {System.DateTime}; Good]
//[#0, False {System.Boolean}; Good]
//[#1, 1239 {System.Int32}; Good]
//
//Dataset data: Good; Data; publisher=(UInt64)31, writer=3, fields: 100
//[#0, 39 {System.Int64}; Good]
//[#1, 139 {System.Int64}; Good]
//[#2, 239 {System.Int64}; Good]
//[#3, 339 {System.Int64}; Good]
//[#4, 439 {System.Int64}; Good]
//[#5, 539 {System.Int64}; Good]
//[#6, 639 {System.Int64}; Good]
//[#7, 739 {System.Int64}; Good]
//[#8, 839 {System.Int64}; Good]
//[#9, 939 {System.Int64}; Good]
//[#10, 1039 {System.Int64}; Good]
//...

//#endregion Example
