// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// Shows how to obtain the serial number of the active license, and determine whether it is a stock demo or trial license.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure LicenseInfo.SerialNumber;
var
  Client: _EasyUAClient;
  SerialNumber: Int64;
begin
  // Instantiate the client object
  Client := CoEasyUAClient.Create;

  // Obtain the serial number from the license info.
  SerialNumber := Int64(client.LicenseInfo['Multipurpose.SerialNumber']);

  // Display the serial number.
  WriteLn('SerialNumber: ', SerialNumber);

  // Determine whether we are running as demo or trial.
  if ((1111110000 <= SerialNumber) and (SerialNumber <= 1111119999)) then
    WriteLn('This is a stock demo or trial license.')
  else
    WriteLn('This is not a stock demo or trial license.');
end;
//#endregion Example
