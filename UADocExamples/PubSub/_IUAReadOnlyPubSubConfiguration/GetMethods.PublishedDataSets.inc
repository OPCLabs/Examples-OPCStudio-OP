// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example obtains and prints out information about all published datasets in the OPC UA PubSub configuration.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure GetMethods.PublishedDataSets;
var
  //EndpointDescriptor: _UAEndpointDescriptor;
  I: Integer;
  PublishedDataSetName: string;
  PublishedDataSetNames: _StringCollection;
  //PublishedDataSetElement: _UAPublishedDataSetElement;
  PublishSubscribeClient: _EasyUAPublishSubscribeClient;
  PubSubConfiguration: _UAReadOnlyPubSubConfiguration;
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

    // Get the names of PubSub connections in the configuration, regardless of the folder they reside in.
    PublishedDataSetNames := PubSubConfiguration.ListAllPublishedDataSetNames;

    for I := 0 to PublishedDataSetNames.Count-1 do
    begin
      PublishedDataSetName := PublishedDataSetNames[I];
      WriteLn('Published dataset: ', PublishedDataSetName);

      // You can use the statement below to obtain parameters of the published dataset.
      //PublishedDataSetElement := PubSubConfiguration.GetPublishedDataSetElement(Unassigned, PublishedDataSetName);
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
//Published dataset: Simple
//Published dataset: AllTypes
//Published dataset: MassTest
//Published dataset: AllTypes-Dynamic
//Finished.

//#endregion Example
