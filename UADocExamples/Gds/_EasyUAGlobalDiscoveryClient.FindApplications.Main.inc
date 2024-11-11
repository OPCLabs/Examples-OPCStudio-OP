// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// Shows how to find all registrations in the GDS.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure FindApplications.Main;
var
  ApplicationDescription: _UAApplicationDescription;
  ApplicationDescriptionArray: OleVariant;
  ApplicationName: WideString;
  ApplicationRecord: _UAApplicationRecordDataType;
  ApplicationRecordArray: OleVariant;
  ApplicationUriString: WideString;
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

  // For each application returned by the query, find its registrations in the GDS.
  for I := VarArrayLowBound(ApplicationDescriptionArray,1) to VarArrayHighBound(ApplicationDescriptionArray,1) do
  begin
    ApplicationDescription := IUnknown(ApplicationDescriptionArray[I]) as _UAApplicationDescription;
    WriteLn;
    WriteLn('Application URI string: ', ApplicationDescription.ApplicationUriString);
    try
    TVarData(ApplicationRecordArray).VType := varArray or varVariant;
    TVarData(ApplicationRecordArray).VArray := PVarArray(
      GlobalDiscoveryClient.FindApplications(
        GdsEndpointDescriptor,
        ApplicationDescription.ApplicationUriString));
    except
      on E: EOleException do
      begin
        WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
        Continue;
      end;
    end;
      for J := VarArrayLowBound(ApplicationRecordArray, 1) to VarArrayHighBound(ApplicationRecordArray, 1) do
      begin
        // Display results
        ApplicationRecord := IUnknown(ApplicationRecordArray[J]) as _UAApplicationRecordDataType;
        WriteLn('  Application ID: ', ApplicationRecord.ApplicationId.ToString);
      end;
  end;

  // Example output:
  //
  //Application URI string: urn:sampleserver
  //  Application ID: nsu=http://opcfoundation.org/UA/GDS/applications/ ;ns=2;g=09ecaa08-6ec6-462c-a214-1e66a3099107
  //
  //Application URI string: urn:alarmconditionserver
  //  Application ID: nsu=http://opcfoundation.org/UA/GDS/applications/ ;ns=2;g=783e1e9a-8036-43b6-928f-97488c460266
  //
  //Application URI string: urn:PC:MultiTargetUADocExamples:5.54.1026.1:neutral:null
  //  Application ID: nsu=http://opcfoundation.org/UA/GDS/applications/ ;ns=2;g=9e700ea5-55a6-4c3c-ba9f-b91c890dc519
  //
  //Application URI string: urn:PC:UADocExamples:5.56.0.16:neutral:null
  //  Application ID: nsu=http://opcfoundation.org/UA/GDS/applications/ ;ns=2;g=e182e28c-086b-4fc7-82c7-70ca7cda3033
  //
  //Application URI string: urn:PC:cscript:5.812.10240.16384
  //  Application ID: nsu=http://opcfoundation.org/UA/GDS/applications/ ;ns=2;g=aec94459-f513-4979-8619-8383555fca61

end;
//#endregion Example
