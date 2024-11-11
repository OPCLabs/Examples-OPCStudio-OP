// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// Shows how to unregister all clients from a GDS.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure UnregisterApplication.Main;
var
  ApplicationDescription: _UAApplicationDescription;
  ApplicationDescriptionArray: OleVariant;
  ApplicationId: _UANodeId;
  ApplicationName: WideString;
  ApplicationRecord: _UAApplicationRecordDataType;
  ApplicationRecordArray: OleVariant;
  ApplicationUriString: WideString;
  ClientApplicationIds: TList<_UANodeID>;
  GlobalDiscoveryClient: OpcLabs_EasyOpcUA_TLB._EasyUAGlobalDiscoveryClient;
  GdsEndpointDescriptor: _UAEndpointDescriptor;
  I, J: integer;
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
  GdsEndpointDescriptor.UserIdentity.UserNameTokenInfo.UserName := 'appadmin';
  GdsEndpointDescriptor.UserIdentity.UserNameTokenInfo.Password := 'demo';

  // Instantiate the global discovery client object
  GlobalDiscoveryClient := CoEasyUAGlobalDiscoveryClient.Create;

  // Find application IDs of all client applications registered in the GDS.
  ClientApplicationIds := TList<_UANodeID>.Create();
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
      UAApplicationTypes_Client,
      ProductUriString,
      ServerCapabilities,
      LastCounterResetTime,
      NextRecordId,
      ApplicationDescriptionArray);

    for I := VarArrayLowBound(ApplicationDescriptionArray,1) to VarArrayHighBound(ApplicationDescriptionArray,1) do
    begin
      ApplicationDescription := IUnknown(ApplicationDescriptionArray[I]) as _UAApplicationDescription;
      TVarData(ApplicationRecordArray).VType := varArray or varVariant;
      TVarData(ApplicationRecordArray).VArray := PVarArray(GlobalDiscoveryClient.FindApplications(
        GdsEndpointDescriptor, ApplicationDescription.ApplicationUriString));
      for J := VarArrayLowBound(ApplicationRecordArray,1) to VarArrayHighBound(ApplicationRecordArray,1) do
      begin
        ApplicationRecord := IUnknown(ApplicationRecordArray[J]) as _UAApplicationRecordDataType;
        ClientApplicationIds.Add(ApplicationRecord.ApplicationId);
      end;
    end;
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
    end;
  end;

  // Unregister all client applications found.
  for ApplicationId in ClientApplicationIds do
  begin
    WriteLn;
    WriteLn('Application ID: ', ApplicationId.ToString);
    try
      GlobalDiscoveryClient.UnregisterApplication(
        GdsEndpointDescriptor, ApplicationId);
    except
      on E: EOleException do
      begin
        WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
        Continue;
      end;
    end;
    WriteLn('Unregistered.');
  end;
  FreeAndNil(ClientApplicationIds);
end;
//#endregion Example
