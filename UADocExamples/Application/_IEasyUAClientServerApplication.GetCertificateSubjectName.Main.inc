// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// Shows how to get the subject name of application certificates.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure GetCertificateSubjectName.Main;
var
  Application: TEasyUAApplication;
  CertificateSubjectName: string;
begin
  // Obtain the application interface.
  Application := TEasyUAApplication.Create(nil);

  // Get the subject name of application certificates.
  CertificateSubjectName := Application.GetCertificateSubjectName('');

  // Display results
  WriteLn('Certificate subject name: ', CertificateSubjectName);
end;
//#endregion Example
