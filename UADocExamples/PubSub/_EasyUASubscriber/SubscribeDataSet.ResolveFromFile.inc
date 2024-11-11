// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to subscribe to dataset messages and specify a filter, resolving logical parameters to physical
// from an OPC-UA PubSub configuration file in binary format. The metadata obtained through the resolution is used to decode
// fixed layout messages with RawData field encoding.
//
// In order to produce network messages for this example, run the UADemoPublisher tool. For documentation, see
// https://kb.opclabs.com/UADemoPublisher_Basics . In some cases, you may have to specify the interface name to be used.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  TSubscriberEventHandlers81 = class
    procedure OnDataSetMessage(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyUADataSetMessageEventArgs);
    procedure OnResolverAccess(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyUAResolverAccessEventArgs);
  end;

class procedure SubscribeDataSet.ResolveFromFile;
var
  SubscribeDataSetArguments: _EasyUASubscribeDataSetArguments;
  Subscriber: TEasyUASubscriber;
  SubscriberEventHandlers: TSubscriberEventHandlers81;
begin
  SubscribeDataSetArguments := CoEasyUASubscribeDataSetArguments.Create;

  // Define the PubSub connection we will work with, using its logical name in the PubSub configuration.
  SubscribeDataSetArguments.DataSetSubscriptionDescriptor.ConnectionDescriptor.Name := 'FixedLayoutConnection';
  // In some cases you may have to set the interface (network adapter) name that needs to be used, similarly to
  // the statement below. Your actual interface name may differ, of course.
  SubscribeDataSetArguments.DataSetSubscriptionDescriptor.ConnectionDescriptor.ResourceAddress.InterfaceName := 'Ethernet';

  // Define the filter. The writer group and the dataset writer are specified using their logical names in the
  // PubSub configuration. The publisher Id in the filter will be taken from the logical PubSub connection.
  SubscribeDataSetArguments.DataSetSubscriptionDescriptor.Filter.WriterGroupDescriptor.Name := 'FixedLayoutGroup';
  SubscribeDataSetArguments.DataSetSubscriptionDescriptor.Filter.DataSetWriterDescriptor.Name := 'SimpleWriter';

  // Define the PubSub resolver. We want the information be resolved from a PubSub binary configuration file that
  // we have. The file itself is included alongside the script.
  SubscribeDataSetArguments.DataSetSubscriptionDescriptor.ResolverDescriptor.PublisherFileResourceDescriptor.UrlString := 'UADemoPublisher-Default.uabinary';
  SubscribeDataSetArguments.DataSetSubscriptionDescriptor.ResolverDescriptor.ResolverKind := UAPubSubResolverKind_PublisherFile;

  // Instantiate the subscriber object and hook events.
  Subscriber := TEasyUASubscriber.Create(nil);
  SubscriberEventHandlers := TSubscriberEventHandlers81.Create;
  Subscriber.OnDataSetMessage := SubscriberEventHandlers.OnDataSetMessage;
  Subscriber.OnResolverAccess := SubscriberEventHandlers.OnResolverAccess;

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

procedure TSubscriberEventHandlers81.OnDataSetMessage(
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

procedure TSubscriberEventHandlers81.OnResolverAccess(
  ASender: TObject;
  sender: OleVariant;
  const eventArgs: _EasyUAResolverAccessEventArgs);
begin
  // Display resolution information.
  WriteLn(eventArgs.ToString);
end;

// Example output:
//
//Subscribing...
//Processing dataset message events for 20 seconds...
//[PublisherFile: UADemoPublisher-Default.uabinary] (no exception)
//
//Dataset data: Good; Data; publisher=(UInt16)30, group=101, fields: 4
//[BoolToggle, False {System.Boolean}; Good]
//[Int32, 3072 {System.Int32}; Good]
//[Int32Fast, 894 {System.Int32}; Good]
//[DateTime, 10/1/2019 12:21:14 PM {System.DateTime}; Good]
//
//Dataset data: Good; Data; publisher=(UInt16)30, group=101, fields: 4
//[BoolToggle, False {System.Boolean}; Good]
//[Int32, 3072 {System.Int32}; Good]
//[Int32Fast, 920 {System.Int32}; Good]
//[DateTime, 10/1/2019 12:21:14 PM {System.DateTime}; Good]
//
//Dataset data: Good; Data; publisher=(UInt16)30, group=101, fields: 4
//[BoolToggle, False {System.Boolean}; Good]
//[Int32, 3073 {System.Int32}; Good]
//[Int32Fast, 1003 {System.Int32}; Good]
//[DateTime, 10/1/2019 12:21:15 PM {System.DateTime}; Good]
//
//Dataset data: Good; Data; publisher=(UInt16)30, group=101, fields: 4
//[BoolToggle, False {System.Boolean}; Good]
//[Int32, 3073 {System.Int32}; Good]
//[Int32Fast, 1074 {System.Int32}; Good]
//[DateTime, 10/1/2019 12:21:15 PM {System.DateTime}; Good]
//
//Dataset data: Good; Data; publisher=(UInt16)30, group=101, fields: 4
//[BoolToggle, True {System.Boolean}; Good]
//[Int32, 3074 {System.Int32}; Good]
//[Int32Fast, 1140 {System.Int32}; Good]
//[DateTime, 10/1/2019 12:21:16 PM {System.DateTime}; Good]
//
//...

//#endregion Example
