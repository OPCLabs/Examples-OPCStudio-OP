// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

unit _EasyUASubscriber;

interface

type
  PullDataSetMessage = class
    class procedure Main1; static;
  end;

type
  SubscribeDataSet = class
    class procedure CaptureFile; static;
    class procedure Ethernet; static;
    class procedure ExtractField; static;
    class procedure FieldNames; static;
    class procedure Filter; static;
    class procedure Main1; static;
    class procedure Metadata; static;
    class procedure PublishedDataSet; static;
    class procedure PublisherId; static;
    class procedure ResolveFromFile; static;
  end;

type
  UnsubscribeDataSet = class
    class procedure Main1; static;
  end;

implementation
uses
  IdGlobal,
  MessagePump,
  mscorlib_TLB,
  OpcLabs_BaseLib_TLB,
  OpcLabs_BaseLibForms_TLB,
  OpcLabs_EasyOpcUA_TLB,
  OpcLabs_EasyOpcUAComponents_TLB,
  System.SysUtils,
  Variants,
  WinApi.ActiveX,
  Windows;

{$I PubSub/_EasyUASubscriber/PullDataSetMessage.Main1.inc}
{$I PubSub/_EasyUASubscriber/SubscribeDataSet.CaptureFile.inc}
{$I PubSub/_EasyUASubscriber/SubscribeDataSet.Ethernet.inc}
{$I PubSub/_EasyUASubscriber/SubscribeDataSet.ExtractField.inc}
{$I PubSub/_EasyUASubscriber/SubscribeDataSet.FieldNames.inc}
{$I PubSub/_EasyUASubscriber/SubscribeDataSet.Filter.inc}
{$I PubSub/_EasyUASubscriber/SubscribeDataSet.Main1.inc}
{$I PubSub/_EasyUASubscriber/SubscribeDataSet.Metadata.inc}
{$I PubSub/_EasyUASubscriber/SubscribeDataSet.PublishedDataSet.inc}
{$I PubSub/_EasyUASubscriber/SubscribeDataSet.PublisherId.inc}
{$I PubSub/_EasyUASubscriber/SubscribeDataSet.ResolveFromFile.inc}
{$I PubSub/_EasyUASubscriber/UnsubscribeDataSet.Main1.inc}

end.
