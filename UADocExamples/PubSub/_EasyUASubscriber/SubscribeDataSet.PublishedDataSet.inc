// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to subscribe to dataset messages, specifying just the published dataset name, and resolving all
// the dataset subscription arguments from an OPC-UA PubSub configuration file.
//
// In order to produce network messages for this example, run the UADemoPublisher tool. For documentation, see
// https://kb.opclabs.com/UADemoPublisher_Basics . In some cases, you may have to specify the interface name to be used.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  TSubscriberEventHandlers79 = class
    procedure OnDataSetMessage(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyUADataSetMessageEventArgs);
  end;

class procedure SubscribeDataSet.PublishedDataSet;
var
  SubscribeDataSetArguments: _EasyUASubscribeDataSetArguments;
  Subscriber: TEasyUASubscriber;
  SubscriberEventHandlers: TSubscriberEventHandlers79;
begin
  SubscribeDataSetArguments := CoEasyUASubscribeDataSetArguments.Create;

  // Specify the published dataset name, and let all other subscription arguments be resolved automatically.
  SubscribeDataSetArguments.DataSetSubscriptionDescriptor.PublishedDataSetName := 'AllTypes-Dynamic';

  // Define the PubSub resolver. We want the information be resolved from a PubSub binary configuration file that
  // we have. The file itself is included alongside the script.

  SubscribeDataSetArguments.DataSetSubscriptionDescriptor.ResolverDescriptor.PublisherFileResourceDescriptor.UrlString := 'UADemoPublisher-Default.uabinary';
  SubscribeDataSetArguments.DataSetSubscriptionDescriptor.ResolverDescriptor.ResolverKind := UAPubSubResolverKind_PublisherFile;

  // Instantiate the subscriber object and hook events.
  Subscriber := TEasyUASubscriber.Create(nil);
  SubscriberEventHandlers := TSubscriberEventHandlers79.Create;
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

procedure TSubscriberEventHandlers79.OnDataSetMessage(
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
//Dataset data: Good; Data; publisher=(UInt64)31, writer=4, fields: 16
//[BoolToggle, False {System.Boolean}; Good]
//[Byte, 137 {System.Byte}; Good]
//[Int16, 10377 {System.Int16}; Good]
//[Int32, 43145 {System.Int32}; Good]
//[Int64, 43145 {System.Int64}; Good]
//[SByte, 9 {System.Int16}; Good]
//[UInt16, 43145 {System.Int32}; Good]
//[UInt32, 43145 {System.Int64}; Good]
//[UInt64, 43145 {System.Decimal}; Good]
//[Float, 43145 {System.Single}; Good]
//[Double, 43145 {System.Double}; Good]
//[String, Lima {System.String}; Good]
//[ByteString, [20] {176, 63, 39, 37, 31, ...} {System.Byte[]}; Good]
//[Guid, 45a99b50-e265-41f2-adea-d0bcedc3ff4b {System.Guid}; Good]
//[DateTime, 10/3/2019 7:15:34 AM {System.DateTime}; Good]
//[UInt32Array, [10] {43145, 43146, 43147, 43148, 43149, ...} {System.Int64[]}; Good]
//
//Dataset data: Good; Data; publisher=(UInt64)31, writer=4, fields: 16
//[BoolToggle, True {System.Boolean}; Good]
//[Byte, 138 {System.Byte}; Good]
//[Int16, 10378 {System.Int16}; Good]
//[Int32, 43146 {System.Int32}; Good]
//[Int64, 43146 {System.Int64}; Good]
//[SByte, 10 {System.Int16}; Good]
//[UInt16, 43146 {System.Int32}; Good]
//[UInt32, 43146 {System.Int64}; Good]
//[UInt64, 43146 {System.Decimal}; Good]
//[Float, 43146 {System.Single}; Good]
//[Double, 43146 {System.Double}; Good]
//[String, Mike {System.String}; Good]
//[Guid, a0f06d75-9896-4fa3-9724-b564359da21b {System.Guid}; Good]
//[DateTime, 10/3/2019 7:15:34 AM {System.DateTime}; Good]
//[UInt32Array, [10] {43146, 43147, 43148, 43149, 43150, ...} {System.Int64[]}; Good]
//[ByteString, [20] {176, 63, 39, 37, 31, ...} {System.Byte[]}; Good]
//
//Dataset data: Good; Data; publisher=(UInt64)31, writer=4, fields: 16
//[DateTime, 10/3/2019 7:15:35 AM {System.DateTime}; Good]
//[BoolToggle, True {System.Boolean}; Good]
//[Byte, 138 {System.Byte}; Good]
//[Int16, 10378 {System.Int16}; Good]
//[Int32, 43146 {System.Int32}; Good]
//[Int64, 43146 {System.Int64}; Good]
//[SByte, 10 {System.Int16}; Good]
//[UInt16, 43146 {System.Int32}; Good]
//[UInt32, 43146 {System.Int64}; Good]
//[UInt64, 43146 {System.Decimal}; Good]
//[Float, 43146 {System.Single}; Good]
//[Double, 43146 {System.Double}; Good]
//[String, Mike {System.String}; Good]
//[ByteString, [20] {176, 63, 39, 37, 31, ...} {System.Byte[]}; Good]
//[Guid, a0f06d75-9896-4fa3-9724-b564359da21b {System.Guid}; Good]
//[UInt32Array, [10] {43146, 43147, 43148, 43149, 43150, ...} {System.Int64[]}; Good]
//
//...

//#endregion Example
