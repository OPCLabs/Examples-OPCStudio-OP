// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

unit _IEasyUAClientServerApplication;

interface

type
  FindGdsRegistrations = class
  public
    class procedure Main(); static;
end;

type
  GetApplicationElement = class
  public
    class procedure Main(); static;
end;

type
  GetCertificateSubjectName = class
  public
    class procedure Main(); static;
end;

type
  ObtainNewCertificate = class
  public
    class procedure Main(); static;
end;

type
  RefreshTrustLists = class
  public
    class procedure Main(); static;
end;

type
  RegisterToGds = class
  public
    class procedure Main(); static;
end;

type
  UnregisterFromGds = class
  public
    class procedure Main(); static;
end;

type
  UpdateGdsRegistration = class
  public
    class procedure Main(); static;
end;

implementation
uses
  ActiveX,
  ComObj,
  MessagePump,
  mscorlib_TLB,
  OpcLabs_BaseLib_TLB,
  OpcLabs_EasyOpcUA_TLB,
  OpcLabs_EasyOpcUAComponents_TLB,
  System.SysUtils;

{$I _IEasyUAClientServerApplication.FindGdsRegistrations.Main.inc}
{$I _IEasyUAClientServerApplication.GetApplicationElement.Main.inc}
{$I _IEasyUAClientServerApplication.GetCertificateSubjectName.Main.inc}
{$I _IEasyUAClientServerApplication.ObtainNewCertificate.Main.inc}
{$I _IEasyUAClientServerApplication.RefreshTrustLists.Main.inc}
{$I _IEasyUAClientServerApplication.RegisterToGds.Main.inc}
{$I _IEasyUAClientServerApplication.UnregisterFromGds.Main.inc}
{$I _IEasyUAClientServerApplication.UpdateGdsRegistration.Main.inc}

end.
