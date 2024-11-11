// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// Shows how to find client or server applications that meet the specified filters, using the global discovery client.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure QueryApplications.Main;
var
  ApplicationDescription: _UAApplicationDescription;
  ApplicationDescriptionArray: OleVariant;
  ApplicationName: WideString;
  ApplicationUriString: WideString;
  GlobalDiscoveryClient: OpcLabs_EasyOpcUA_TLB._EasyUAGlobalDiscoveryClient;
  GdsEndpointDescriptor: _UAEndpointDescriptor;
  I: integer;
  LastCounterResetTime: TDateTime;
  MaximumRecordsToReturn: Integer;
  NextRecordId: Integer;
  ProductUriString: WideString;
  ServerCapabilities: array of string;
  StartingRecordId: Integer;
begin
  // Define which GDS we will work with.
  GdsEndpointDescriptor := CoUAEndpointDescriptor.Create;
  GdsEndpointDescriptor.UrlString := 'opc.tcp://opcua.demo-this.com:58810/GlobalDiscoveryServer';

  // Instantiate the global discovery client object
  GlobalDiscoveryClient := CoEasyUAGlobalDiscoveryClient.Create;

  // Find all (client or server) applications registered in the GDS.
  StartingRecordId := 0;
  MaximumRecordsToReturn := 0;
  ApplicationName := '';
  ApplicationUriString := '';
  ProductUriString := '';
  try
    GlobalDiscoveryClient.QueryApplications(
      GdsEndpointDescriptor,
      StartingRecordId,
      MaximumRecordsToReturn,
      ApplicationName,
      ApplicationUriString,
      UAApplicationTypes_All,
      ProductUriString,
      ServerCapabilities,
      LastCounterResetTime,
      NextRecordId,
      ApplicationDescriptionArray);
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
    end;
  end;

  // Display results
  for I := VarArrayLowBound(ApplicationDescriptionArray,1) to VarArrayHighBound(ApplicationDescriptionArray,1) do
  begin
    ApplicationDescription := IUnknown(ApplicationDescriptionArray[I]) as _UAApplicationDescription;
    WriteLn;
    WriteLn('Application name: ', ApplicationDescription.ApplicationName);
    WriteLn('Application type: ', ApplicationDescription.ApplicationType);
    WriteLn('Application URI string: ', ApplicationDescription.ApplicationUriString);
    WriteLn('Discovery URI strings: ', ApplicationDescription.DiscoveryUriStrings.ToString);
  end;

end;
//#endregion Example
