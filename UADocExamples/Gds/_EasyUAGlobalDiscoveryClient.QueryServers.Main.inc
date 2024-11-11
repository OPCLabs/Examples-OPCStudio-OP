// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// Shows how to find server applications that meet the specified filters, using the global discovery client.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure QueryServers.Main;
var
  ApplicationName: WideString;
  ApplicationUriString: WideString;
  GlobalDiscoveryClient: OpcLabs_EasyOpcUA_TLB._EasyUAGlobalDiscoveryClient;
  GdsEndpointDescriptor: _UAEndpointDescriptor;
  I: integer;
  LastCounterResetTime: TDateTime;
  MaximumRecordsToReturn: Integer;
  ProductUriString: WideString;
  ServerCapabilities: array of string;
  ServerOnNetwork: _UAServerOnNetwork;
  ServerOnNetworkArray: OleVariant;
  StartingRecordId: Integer;
begin
  // Define which GDS we will work with.
  GdsEndpointDescriptor := CoUAEndpointDescriptor.Create;
  GdsEndpointDescriptor.UrlString := 'opc.tcp://opcua.demo-this.com:58810/GlobalDiscoveryServer';

  // Instantiate the global discovery client object
  GlobalDiscoveryClient := CoEasyUAGlobalDiscoveryClient.Create;

  // Find all servers registered in the GDS.
  StartingRecordId := 0;
  MaximumRecordsToReturn := 0;
  ApplicationName := '';
  ApplicationUriString := '';
  ProductUriString := '';
  try
    GlobalDiscoveryClient.QueryServers(
      GdsEndpointDescriptor,
      StartingRecordId,
      MaximumRecordsToReturn,
      ApplicationName,
      ApplicationUriString,
      ProductUriString,
      ServerCapabilities,
      LastCounterResetTime,
      ServerOnNetworkArray);
  except
    on E: EOleException do
    begin
      WriteLn(Format('*** Failure: %s', [E.GetBaseException.Message]));
    end;
  end;

  // Display results
  for I := VarArrayLowBound(ServerOnNetworkArray,1) to VarArrayHighBound(ServerOnNetworkArray,1) do
  begin
    ServerOnNetwork := IUnknown(ServerOnNetworkArray[I]) as _UAServerOnNetwork;
    WriteLn;
    WriteLn('Server name: ', ServerOnNetwork.ServerName);
    WriteLn('Discovery URL string: ', ServerOnNetwork.DiscoveryUrlString);
    WriteLn('Server capabilities: ', ServerOnNetwork.ServerCapabilities.ToString);
  end;

end;
//#endregion Example
