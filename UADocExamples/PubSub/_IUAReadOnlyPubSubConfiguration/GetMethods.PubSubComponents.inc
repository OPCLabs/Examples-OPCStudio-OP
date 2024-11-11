// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example obtains and prints out information about PubSub connections, writer groups, and dataset writers in the
// OPC UA PubSub configuration.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure GetMethods.PubSubComponents;
var
  //DataSetWriterElement: _UADataSetWriterElement;
  DataSetWriterName: string;
  DataSetWriterNames: _StringCollection;
  //EndpointDescriptor: _UAEndpointDescriptor;
  I, J, K: Integer;
  //PubSubConnectionElement: _UAPubSubConnectionElement;
  PubSubConnectionName: string;
  ConnectionNames: _StringCollection;
  PublishSubscribeClient: _EasyUAPublishSubscribeClient;
  PubSubConfiguration: _UAReadOnlyPubSubConfiguration;
  //WriterGroupElement: _UAWriterGroupElement;
  WriterGroupName: string;
  WriterGroupNames: _StringCollection;
begin
  // Instantiate the publish-subscribe client object.
  PublishSubscribeClient := CoEasyUAPublishSubscribeClient.Create;

  try
    WriteLn('Loading the configuration...');
    // Load the PubSub configuration from a file. The file itself is included alongside the script.
    PubSubConfiguration := PublishSubscribeClient.LoadReadOnlyConfiguration('UADemoPublisher-Default.uabinary');

    // Alternatively, using the statements below, you can access a live configuration residing in an OPC UA Server
    // with appropriate information model.
    //EndpointDescriptor := CoUAEndpointDescriptor.Create;
    //EndpointDescriptor.UrlString := 'opc.tcp://localhost:48010';
    //PubSubConfiguration := PublishSubscribeClient.AccessReadOnlyConfiguration(EndpointDescriptor);

    // Get the names of PubSub connections in the configuration.
    ConnectionNames := PubSubConfiguration.ListConnectionNames;

    for I := 0 to ConnectionNames.Count-1 do
    begin
      PubSubConnectionName := ConnectionNames[I];
      WriteLn('PubSub connection: ', PubSubConnectionName);

      // You can use the statement below to obtain parameters of the PubSub connection.
      //PubSubConnectionElement := PubSubConfiguration.GetConnectionElement(PubSubConnectionName);

      // Get names of the writer groups on this PubSub connection.
      WriterGroupNames := PubSubConfiguration.ListWriterGroupNames(PubSubConnectionName);
      for J := 0 to WriterGroupNames.Count-1 do
      begin
        WriterGroupName := WriterGroupNames[J];
        WriteLn('  Writer group: ', WriterGroupName);

        // You can use the statement below to obtain parameters of the writer group.
        //WriterGroupElement := PubSubConfiguration.GetWriterGroupElement(PubSubConnectionName, WriterGroupName);

        // Get names of the dataset writers on this writer group.
        DataSetWriterNames := PubSubConfiguration.ListDataSetWriterNames(PubSubConnectionName, WriterGroupName);
        for K := 0 to DataSetWriterNames.Count-1 do
        begin
          DataSetWriterName := DataSetWriterNames[K];
          WriteLn('    Dataset writer: ', DataSetWriterName);

          // You can use the statement below to obtain parameters of the dataset writer.
          //DataSetWriterElement := PubSubConfiguration.GetDataSetWriterElement(PubSubConnectionName, WriterGroupName, DataSetWriterName);
        end;
      end;
    end;
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
    end;
  end;

  WriteLn('Finished.');
end;

// Example output:
//
//Loading the configuration...
//PubSub connection: FixedLayoutConnection
//  Writer group: FixedLayoutGroup
//    Dataset writer: SimpleWriter
//    Dataset writer: AllTypesWriter
//    Dataset writer: MassTestWriter
//PubSub connection: DynamicLayoutConnection
//  Writer group: DynamicLayoutGroup
//    Dataset writer: SimpleWriter
//    Dataset writer: MassTestWriter
//    Dataset writer: AllTypes-DynamicWriter
//    Dataset writer: EventSimpleWriter
//PubSub connection: FlexibleLayoutConnection
//  Writer group: FlexibleLayoutGroup
//    Dataset writer: SimpleWriter
//    Dataset writer: MassTestWriter
//    Dataset writer: AllTypes-DynamicWriter
//Finished.

//#endregion Example
