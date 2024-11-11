// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// Shows how to get the OPC UA registration information for this application.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure GetApplicationElement.Main;
var
  Application: TEasyUAApplication;
  ApplicationElement: _UAApplicationElement;
begin
  // Obtain the application interface.
  Application := TEasyUAApplication.Create(nil);

  // Get the OPC UA registration information for this application.
  ApplicationElement := Application.GetApplicationElement;

  // Display results
  WriteLn('Application element:');
  WriteLn('  Application name: ', ApplicationElement.ApplicationName);
  WriteLn('  Application type: ', ApplicationElement.ApplicationType);
  WriteLn('  Application URI string: ', ApplicationElement.ApplicationUriString);
  WriteLn('  Discovery URI string: ', ApplicationElement.DiscoveryUriString);
  WriteLn('  Product URI string: ', ApplicationElement.ProductUriString);
end;
//#endregion Example
