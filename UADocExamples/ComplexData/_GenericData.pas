// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

unit _GenericData;

interface

uses
  OpcLabs_BaseLib_TLB;

type
  _Construction = class
  public
    class procedure Main(); static;
end;

type
  DataTypeKind1 = class
  public
    class procedure Main(); static;
  private
    class procedure ProcessGenericData(GenericData: OpcLabs_BaseLib_TLB._GenericData; MaximumDepth: Cardinal); static;
end;

implementation
uses
  ActiveX,
  ComObj,
  MessagePump,
  mscorlib_TLB,
  OpcLabs_EasyOpcUA_TLB,
  OpcLabs_EasyOpcUAComponents_TLB,
  System.SysUtils,
  Variants;

{$I _GenericData._Construction.Main.inc}
{$I _GenericData.DataTypeKind1.Main.inc}

end.
