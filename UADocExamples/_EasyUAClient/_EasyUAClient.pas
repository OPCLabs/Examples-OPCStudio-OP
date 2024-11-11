// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

unit _EasyUAClient;

interface

type
  BrowseDataNodes = class
    class procedure Main;
  end;

  BrowseDataVariables = class
    class procedure Main;
  end;

  BrowseMethods = class
    class procedure Main;
  end;

  BrowseObjects = class
    class procedure Main;
  end;

  BrowseProperties = class
    class procedure Main;
  end;

  Browse = class
    class procedure Main;
  end;

  CallMethod = class
    class procedure Main;
  end;

  CallMultipleMethods = class
    class procedure Main;
  end;

  ChangeMonitoredItemSubscription = class
    class procedure Main;
  end;

  ChangeMultipleMonitoredItemSubscriptions = class
    class procedure Main;
  end;

  DiscoverGlobalServers = class
    class procedure Main;
  end;

  DiscoverLocalServers = class
    class procedure Main;
  end;

  DiscoverNetworkServers = class
    class procedure Main;
  end;

  FindLocalApplications = class
    class procedure Main;
  end;

  GetMonitoredItemArguments = class
    class procedure Main;
  end;

  GetMonitoredItemArgumentsDictionary = class
    class procedure Main;
  end;

  PullDataChangeNotification = class
    class procedure Main;
  end;

  Read = class
    class procedure Main;
  end;

  ReadValue = class
    class procedure Main;
  end;

  ReadMultiple = class
    class procedure BrowsePath;
    class procedure Main;
  end;

  ReadMultipleValues = class
    class procedure DataType;
    class procedure Main;
  end;

  SubscribeDataChange = class
    class procedure Filter;
    class procedure Main;
  end;

  SubscribeMultipleMonitoredItems = class
    class procedure Filter;
    class procedure Main;
    class procedure StateAsInteger;
    class procedure StateAsObject;
  end;

  UnsubscribeAllMonitoredItems = class
    class procedure Main;
  end;

  UnsubscribeMultipleMonitoredItems = class
    class procedure Main;
    class procedure Some;
  end;

  Write = class
    class procedure Main;
  end;

  WriteMultipleValues = class
    class procedure TestSuccess;
    class procedure ValueTypeCode;
    class procedure ValueTypeFullName;
  end;

  WriteValue = class
    class procedure ByteString;
    class procedure Main;
    class procedure TypeCode;
  end;

implementation
uses
  ComObj,
  Generics.Collections,
  IdGlobal,
  MessagePump,
  mscorlib_TLB,
  OpcLabs_BaseLib_TLB,
  OpcLabs_BaseLibForms_TLB,
  OpcLabs_EasyOpcUA_TLB,
  OpcLabs_EasyOpcUAComponents_TLB,
  System.DateUtils,
  System.SysUtils,
  Variants,
  WinApi.ActiveX,
  Windows;

{$I _EasyUAClient/BrowseDataNodes.Main.inc}
{$I _EasyUAClient/BrowseDataVariables.Main.inc}
{$I _EasyUAClient/BrowseMethods.Main.inc}
{$I _EasyUAClient/BrowseObjects.Main.inc}
{$I _EasyUAClient/BrowseProperties.Main.inc}
{$I _EasyUAClient/Browse.Main.inc}
{$I _EasyUAClient/CallMethod.Main.inc}
{$I _EasyUAClient/CallMultipleMethods.Main.inc}
{$I _EasyUAClient/ChangeMonitoredItemSubscription.Main.inc}
{$I _EasyUAClient/ChangeMultipleMonitoredItemSubscriptions.Main.inc}
{$I _EasyUAClient/DiscoverGlobalServers.Main.inc}
{$I _EasyUAClient/DiscoverLocalServers.Main.inc}
{$I _EasyUAClient/DiscoverNetworkServers.Main.inc}
{$I _EasyUAClient/FindLocalApplications.Main.inc}
{$I _EasyUAClient/GetMonitoredItemArguments.Main.inc}
{$I _EasyUAClient/GetMonitoredItemArgumentsDictionary.Main.inc}
{$I _EasyUAClient/PullDataChangeNotification.Main.inc}
{$I _EasyUAClient/Read.Main.inc}
{$I _EasyUAClient/ReadMultiple.BrowsePath.inc}
{$I _EasyUAClient/ReadMultiple.Main.inc}
{$I _EasyUAClient/ReadMultipleValues.DataType.inc}
{$I _EasyUAClient/ReadMultipleValues.Main.inc}
{$I _EasyUAClient/ReadValue.Main.inc}
{$I _EasyUAClient/Write.Main.inc}
{$I _EasyUAClient/WriteMultipleValues.TestSuccess.inc}
{$I _EasyUAClient/WriteMultipleValues.ValueTypeCode.inc}
{$I _EasyUAClient/WriteMultipleValues.ValueTypeFullName.inc}
{$I _EasyUAClient/WriteValue.ByteString.inc}
{$I _EasyUAClient/WriteValue.Main.inc}
{$I _EasyUAClient/WriteValue.TypeCode.inc}
{$I _EasyUAClient/SubscribeDataChange.Filter.inc}
{$I _EasyUAClient/SubscribeDataChange.Main.inc}
{$I _EasyUAClient/SubscribeMultipleMonitoredItems.Filter.inc}
{$I _EasyUAClient/SubscribeMultipleMonitoredItems.Main.inc}
{$I _EasyUAClient/SubscribeMultipleMonitoredItems.StateAsInteger.inc}
{$I _EasyUAClient/SubscribeMultipleMonitoredItems.StateAsObject.inc}
{$I _EasyUAClient/UnsubscribeAllMonitoredItems.Main.inc}
{$I _EasyUAClient/UnsubscribeMultipleMonitoredItems.Main.inc}
{$I _EasyUAClient/UnsubscribeMultipleMonitoredItems.Some.inc}

end.
