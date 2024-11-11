// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to subscribe to dataset messages on an OPC-UA PubSub connection, and then unsubscribe from that
// dataset.
//
// In order to produce network messages for this example, run the UADemoPublisher tool. For documentation, see
// https://kb.opclabs.com/UADemoPublisher_Basics . In some cases, you may have to specify the interface name to be used.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  TSubscriberEventHandlers82 = class
    procedure OnDataSetMessage(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyUADataSetMessageEventArgs);
  end;

class procedure UnsubscribeDataSet.Main1;
var
  ConnectionDescriptor: _UAPubSubConnectionDescriptor;
  SubscribeDataSetArguments: _EasyUASubscribeDataSetArguments;
  Subscriber: TEasyUASubscriber;
  SubscriberEventHandlers: TSubscriberEventHandlers82;
begin
  // Define the PubSub connection we will work with.
  SubscribeDataSetArguments := CoEasyUASubscribeDataSetArguments.Create;
  ConnectionDescriptor := SubscribeDataSetArguments.DataSetSubscriptionDescriptor.ConnectionDescriptor;
  ConnectionDescriptor.ResourceAddress.ResourceDescriptor.UrlString := 'opc.udp://239.0.0.1';
  // In some cases you may have to set the interface (network adapter) name that needs to be used, similarly to
  // the statement below. Your actual interface name may differ, of course.
  //ConnectionDescriptor.ResourceAddress.InterfaceName := 'Ethernet';

  // Define the filter. Publisher Id (unsigned 64-bits) is 31, and the dataset writer Id is 1.
  SubscribeDataSetArguments.DataSetSubscriptionDescriptor.Filter.PublisherId.SetIdentifier(UAPublisherIdType_UInt64, 31);
  SubscribeDataSetArguments.DataSetSubscriptionDescriptor.Filter.DataSetWriterDescriptor.DataSetWriterId := 1;

  // Instantiate the subscriber object and hook events.
  Subscriber := TEasyUASubscriber.Create(nil);
  SubscriberEventHandlers := TSubscriberEventHandlers82.Create;
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

procedure TSubscriberEventHandlers82.OnDataSetMessage(
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
//Dataset data: Good; Data; publisher=(UInt64)31, writer=1, fields: 4
//[#0, True {System.Boolean}; Good]
//[#1, 7134 {System.Int32}; Good]
//[#2, 7364 {System.Int32}; Good]
//[#3, 10/1/2019 10:42:16 AM {System.DateTime}; Good]
//
//Dataset data: Good; Data; publisher=(UInt64)31, writer=1, fields: 4
//[#1, 7135 {System.Int32}; Good]
//[#2, 7429 {System.Int32}; Good]
//[#3, 10/1/2019 10:42:17 AM {System.DateTime}; Good]
//[#0, True {System.Boolean}; Good]
//
//Dataset data: Good; Data; publisher=(UInt64)31, writer=1, fields: 4
//[#2, 7495 {System.Int32}; Good]
//[#3, 10/1/2019 10:42:17 AM {System.DateTime}; Good]
//[#0, True {System.Boolean}; Good]
//[#1, 7135 {System.Int32}; Good]
//
//Dataset data: Good; Data; publisher=(UInt64)31, writer=1, fields: 4
//[#1, 7136 {System.Int32}; Good]
//[#2, 7560 {System.Int32}; Good]
//[#3, 10/1/2019 10:42:18 AM {System.DateTime}; Good]
//[#0, True {System.Boolean}; Good]
//
//Dataset data: Good; Data; publisher=(UInt64)31, writer=1, fields: 4
//[#2, 7626 {System.Int32}; Good]
//[#3, 10/1/2019 10:42:18 AM {System.DateTime}; Good]
//[#0, True {System.Boolean}; Good]
//[#1, 7136 {System.Int32}; Good]
//
//...

//#endregion Example
