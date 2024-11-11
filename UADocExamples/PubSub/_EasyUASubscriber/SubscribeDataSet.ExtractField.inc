// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to subscribe to dataset messages and extract data of a specific field.
//
// In order to produce network messages for this example, run the UADemoPublisher tool. For documentation, see
// https://kb.opclabs.com/UADemoPublisher_Basics . In some cases, you may have to specify the interface name to be used.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

type
  TSubscriberEventHandlers74 = class
    procedure OnDataSetMessage(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyUADataSetMessageEventArgs);
  end;

class procedure SubscribeDataSet.ExtractField;
var
  ConnectionDescriptor: _UAPubSubConnectionDescriptor;
  Field1, Field2, Field3, Field4: _UAFieldMetaData;
  MetaData: _UADataSetMetaData;
  SubscribeDataSetArguments: _EasyUASubscribeDataSetArguments;
  Subscriber: TEasyUASubscriber;
  SubscriberEventHandlers: TSubscriberEventHandlers74;
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

  // Define the metadata. For UADP, the order of field metadata must correspond to the order of fields in the dataset message.
  // If the field names were contained in the dataset message (such as in JSON), or if we knew the metadata from some other
  // source, this step would not be needed.
  // Since the encoding is not RawData, we do not have to specify the type information for the fields.
  MetaData := CoUADataSetMetaData.Create;
  //
  Field1 := CoUAFieldMetaData.Create;
  Field1.Name := 'BoolToggle';
  MetaData.Add(Field1);
  //
  Field2 := CoUAFieldMetaData.Create;
  Field2.Name := 'Int32';
  MetaData.Add(Field2);
  //
  Field3 := CoUAFieldMetaData.Create;
  Field3.Name := 'Int32Fast';
  MetaData.Add(Field3);
  //
  Field4 := CoUAFieldMetaData.Create;
  Field4.Name := 'DateTime';
  MetaData.Add(Field4);
  //
  SubscribeDataSetArguments.DataSetSubscriptionDescriptor.DataSetMetaData := MetaData;

  // Instantiate the subscriber object and hook events.
  Subscriber := TEasyUASubscriber.Create(nil);
  SubscriberEventHandlers := TSubscriberEventHandlers74.Create;
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

procedure TSubscriberEventHandlers74.OnDataSetMessage(
  ASender: TObject;
  sender: OleVariant;
  const eventArgs: _EasyUADataSetMessageEventArgs);
var
  Dnt32FastValueData: _UADataSetFieldData;
begin
  // Display the dataset.
  if eventArgs.Succeeded then
  begin
    // An event with null DataSetData just indicates a successful connection.
    if eventArgs.DataSetData <> nil then
    begin
      // Extract field data, looking up the field by its name.
      Dnt32FastValueData := eventArgs.DataSetData.FieldDataDictionary.Item['Int32Fast'];
      WriteLn(Dnt32FastValueData.ToString);
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
//6502 {System.Int32} @2019-10-06T10:02:01.254,647,600,00; Good
//6538 {System.Int32} @2019-10-06T10:02:01.755,010,700,00; Good
//6615 {System.Int32} @2019-10-06T10:02:02.255,780,200,00; Good
//6687 {System.Int32} @2019-10-06T10:02:02.756,495,900,00; Good
//6769 {System.Int32} @2019-10-06T10:02:03.257,320,200,00; Good
//6804 {System.Int32} @2019-10-06T10:02:03.757,667,300,00; Good
//6877 {System.Int32} @2019-10-06T10:02:04.258,405,000,00; Good
//6990 {System.Int32} @2019-10-06T10:02:04.759,532,900,00; Good
//7063 {System.Int32} @2019-10-06T10:02:05.260,257,200,00; Good
//7163 {System.Int32} @2019-10-06T10:02:05.761,261,800,00; Good
//7255 {System.Int32} @2019-10-06T10:02:06.262,176,800,00; Good
//7321 {System.Int32} @2019-10-06T10:02:06.762,839,800,00; Good
//7397 {System.Int32} @2019-10-06T10:02:07.263,598,900,00; Good
//7454 {System.Int32} @2019-10-06T10:02:07.764,168,900,00; Good
//7472 {System.Int32} @2019-10-06T10:02:08.264,350,400,00; Good
//...

//#endregion Example
