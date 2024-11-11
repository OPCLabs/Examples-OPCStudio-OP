// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to subscribe to dataset messages with RawData field encoding, specifying the metadata necessary
// for their decoding directly in the code.
//
// In order to produce network messages for this example, run the UADemoPublisher tool. For documentation, see
// https://kb.opclabs.com/UADemoPublisher_Basics . In some cases, you may have to specify the interface name to be used.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  TSubscriberEventHandlers78 = class
    procedure OnDataSetMessage(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyUADataSetMessageEventArgs);
  end;

class procedure SubscribeDataSet.Metadata;
var
  ConnectionDescriptor: _UAPubSubConnectionDescriptor;
  Field1, Field2, Field3, Field4: _UAFieldMetaData;
  MetaData: _UADataSetMetaData;
  SubscribeDataSetArguments: _EasyUASubscribeDataSetArguments;
  Subscriber: TEasyUASubscriber;
  SubscriberEventHandlers: TSubscriberEventHandlers78;
begin
  // Define the PubSub connection we will work with.
  SubscribeDataSetArguments := CoEasyUASubscribeDataSetArguments.Create;
  ConnectionDescriptor := SubscribeDataSetArguments.DataSetSubscriptionDescriptor.ConnectionDescriptor;
  ConnectionDescriptor.ResourceAddress.ResourceDescriptor.UrlString := 'opc.udp://239.0.0.1';
  // In some cases you may have to set the interface (network adapter) name that needs to be used, similarly to
  // the statement below. Your actual interface name may differ, of course.
  //ConnectionDescriptor.ResourceAddress.InterfaceName := 'Ethernet';

  // Define the filter. Publisher Id (unsigned 16-bits) is 30, and the writer group Id is 101.
  // The dataset writer Id (1) must not be specified in the filter, because it does not appear in the message.
  SubscribeDataSetArguments.DataSetSubscriptionDescriptor.Filter.PublisherId.SetUint16Identifier(30);
  SubscribeDataSetArguments.DataSetSubscriptionDescriptor.Filter.WriterGroupDescriptor.WriterGroupId := 101;

  // Define the metadata. For UADP, the order of field metadata must correspond to the order of fields in the dataset message.
  MetaData := CoUADataSetMetaData.Create;
  //
  Field1 := CoUAFieldMetaData.Create;
  Field1.BuiltInType := UABuiltInType_Boolean;
  Field1.Name := 'BoolToggle';
  MetaData.Add(Field1);
  //
  Field2 := CoUAFieldMetaData.Create;
  Field2.BuiltInType := UABuiltInType_Int32;
  Field2.Name := 'Int32';
  MetaData.Add(Field2);
  //
  Field3 := CoUAFieldMetaData.Create;
  Field3.BuiltInType := UABuiltInType_Int32;
  Field3.Name := 'Int32Fast';
  MetaData.Add(Field3);
  //
  Field4 := CoUAFieldMetaData.Create;
  Field4.BuiltInType := UABuiltInType_DateTime;
  Field4.Name := 'DateTime';
  MetaData.Add(Field4);
  //
  SubscribeDataSetArguments.DataSetSubscriptionDescriptor.DataSetMetaData := MetaData;

  // Define the specific communication parameters for the dataset subscription.
  // The dataset offset is needed with messages that do not contain dataset writer Ids and use RawData field
  // encoding. An exception to this rule is when the dataset is the only or first in the dataset message payload,
  // which is also the case here, but we are specifying the dataset offset anyway, for illustration.
  SubscribeDataSetArguments.DataSetSubscriptionDescriptor.CommunicationParameters.UadpDataSetReaderMessageParameters.DataSetOffset := 15;

  // Instantiate the subscriber object and hook events.
  Subscriber := TEasyUASubscriber.Create(nil);
  SubscriberEventHandlers := TSubscriberEventHandlers78.Create;
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

procedure TSubscriberEventHandlers78.OnDataSetMessage(
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
