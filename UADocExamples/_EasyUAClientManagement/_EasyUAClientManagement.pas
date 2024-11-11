// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

unit _EasyUAClientManagement;

interface

type
  LogEntry = class
    class procedure Main;
  end;

implementation
uses
  ComObj,
  MessagePump,
  OpcLabs_BaseLibForms_TLB,
  OpcLabs_BaseLib_TLB,
  OpcLabs_EasyOpcUA_TLB,
  OpcLabs_EasyOpcUAComponents_TLB,
  System.SysUtils,
  Variants,
  WinApi.ActiveX;

{$I _EasyUAClientManagement/LogEntry.Main.inc}

end.
