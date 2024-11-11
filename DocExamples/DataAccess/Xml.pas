// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

unit Xml;

interface

type
  BrowseNodes = class
    class procedure RecursiveXml;
  end;

type
  ChangeItemSubscription = class
    class procedure MainXml;
  end;

type
  GetMultiplePropertyValues = class
    class procedure DataTypeXml;
  end;

type
  PullItemChanged = class
    class procedure MainXml;
  end;

type
  ReadMultipleItems = class
    class procedure MainXml;
  end;

type
  SubscribeItem = class
    class procedure MainXml;
  end;

type
  WriteItemValue = class
    class procedure MainXml;
  end;

implementation
uses
  ComObj,
  IdGlobal,
  MessagePump,
  OpcLabs_BaseLib_TLB,
  OpcLabs_EasyOpcClassic_TLB,
  OpcLabs_EasyOpcClassicComponents_TLB,
  OpcLabs_EasyOpcClassicCore_TLB,
  System.SysUtils,
  Variants,
  WinApi.ActiveX;

{$I Xml/BrowseNodes.RecursiveXml.inc }
{$I Xml/ChangeItemSubscription.MainXml.inc }
{$I Xml/GetMultiplePropertyValues.DataTypeXml.inc }
{$I Xml/PullItemChanged.MainXml.inc }
{$I Xml/ReadMultipleItems.MainXml.inc}
{$I Xml/SubscribeItem.MainXml.inc}
{$I Xml/WriteItemValue.MainXml.inc}

end.
