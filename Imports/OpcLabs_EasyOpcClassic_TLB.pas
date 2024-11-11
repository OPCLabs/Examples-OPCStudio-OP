unit OpcLabs_EasyOpcClassic_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 98336 $
// File generated on 11/3/2024 2:19:23 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\OPC Labs OPC Studio 2024.2\SDK\lib\OpcLabs.EasyOpcClassic.tlb (1)
// LIBID: {1F165598-2F77-41C8-A9F9-EAF00C943F9F}
// LCID: 0
// Helpfile: 
// HelpString: OPC Labs EasyOPC �Classic� Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
//   (3) v5.81 OpcLabs_BaseLib, (C:\Program Files (x86)\OPC Labs OPC Studio 2024.2\SDK\lib\OpcLabs.BaseLib.tlb)
//   (4) v5.81 OpcLabs_EasyOpcClassicCore, (C:\Program Files (x86)\OPC Labs OPC Studio 2024.2\SDK\lib\OpcLabs.EasyOpcClassicCore.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, mscorlib_TLB, OpcLabs_BaseLib_TLB, OpcLabs_EasyOpcClassicCore_TLB, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, 
Vcl.OleServer, Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  OpcLabs_EasyOpcClassicMajorVersion = 5;
  OpcLabs_EasyOpcClassicMinorVersion = 81;

  LIBID_OpcLabs_EasyOpcClassic: TGUID = '{1F165598-2F77-41C8-A9F9-EAF00C943F9F}';

  IID__EasyDAClientSelector: TGUID = '{C1D8CCF6-C125-4260-B107-21EA0E6C04C2}';
  DIID_DEasyDAClientEvents: TGUID = '{39278DFA-06A0-4630-BFF3-91F66901C9DF}';
  DIID_DEasyDAClientManagementEvents: TGUID = '{DE3C7FD8-98F1-4CAB-A246-F629F3759A92}';
  IID__EasyDAClient: TGUID = '{5D8A341A-863F-41D3-90D5-E88A714CF956}';
  IID__EasyDAClientManagement: TGUID = '{FAAC2728-8C9B-4D62-9C05-5FF3B7D3F4BC}';
  CLASS_EasyDAClientSelector: TGUID = '{4EBCE08F-82BB-4685-AC7F-D597BD956B41}';
  IID__EasyAEClientSelector: TGUID = '{DA365255-31E9-42BC-9B01-EDDA70CA285A}';
  DIID_DEasyAEClientEvents: TGUID = '{AAEE83E0-A730-47AE-95D1-B3748432A8AD}';
  DIID_DEasyAEClientManagementEvents: TGUID = '{997848ED-916C-4253-903B-0BB63AC9995A}';
  IID__EasyAEClient: TGUID = '{F8A67414-B0C8-4F78-BFE5-968A7ED0E81E}';
  IID__EasyAEClientManagement: TGUID = '{FD09B613-84E3-4DC4-8BA8-0AB6C2A0801D}';
  CLASS_EasyAEClientSelector: TGUID = '{3D27401A-D104-4C09-96A6-372D63671A7B}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _EasyDAClientSelector = interface;
  _EasyDAClientSelectorDisp = dispinterface;
  DEasyDAClientEvents = dispinterface;
  DEasyDAClientManagementEvents = dispinterface;
  _EasyDAClient = interface;
  _EasyDAClientDisp = dispinterface;
  _EasyDAClientManagement = interface;
  _EasyDAClientManagementDisp = dispinterface;
  _EasyAEClientSelector = interface;
  _EasyAEClientSelectorDisp = dispinterface;
  DEasyAEClientEvents = dispinterface;
  DEasyAEClientManagementEvents = dispinterface;
  _EasyAEClient = interface;
  _EasyAEClientDisp = dispinterface;
  _EasyAEClientManagement = interface;
  _EasyAEClientManagementDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  EasyDAClientSelector = _EasyDAClientSelector;
  EasyAEClientSelector = _EasyAEClientSelector;


// *********************************************************************//
// Interface: _EasyDAClientSelector
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C1D8CCF6-C125-4260-B107-21EA0E6C04C2}
// *********************************************************************//
  _EasyDAClientSelector = interface(IDispatch)
    ['{C1D8CCF6-C125-4260-B107-21EA0E6C04C2}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_Differentiator: WideString; safecall;
    procedure Set_Differentiator(const pRetVal: WideString); safecall;
    function Get_InstanceParameters: _EasyDAInstanceParameters; safecall;
    procedure _Set_InstanceParameters(const pRetVal: _EasyDAInstanceParameters); safecall;
    function Get_Isolated: WordBool; safecall;
    procedure Set_Isolated(pRetVal: WordBool); safecall;
    function Get_IsolatedParameters: _EasyDAAdaptableParameters; safecall;
    procedure _Set_IsolatedParameters(const pRetVal: _EasyDAAdaptableParameters); safecall;
    procedure Reset; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property Differentiator: WideString read Get_Differentiator write Set_Differentiator;
    property InstanceParameters: _EasyDAInstanceParameters read Get_InstanceParameters write _Set_InstanceParameters;
    property Isolated: WordBool read Get_Isolated write Set_Isolated;
    property IsolatedParameters: _EasyDAAdaptableParameters read Get_IsolatedParameters write _Set_IsolatedParameters;
  end;

// *********************************************************************//
// DispIntf:  _EasyDAClientSelectorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C1D8CCF6-C125-4260-B107-21EA0E6C04C2}
// *********************************************************************//
  _EasyDAClientSelectorDisp = dispinterface
    ['{C1D8CCF6-C125-4260-B107-21EA0E6C04C2}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property Differentiator: WideString dispid 1610743816;
    property InstanceParameters: _EasyDAInstanceParameters dispid 1610743818;
    property Isolated: WordBool dispid 1610743820;
    property IsolatedParameters: _EasyDAAdaptableParameters dispid 1610743822;
    procedure Reset; dispid 1610743824;
  end;

// *********************************************************************//
// DispIntf:  DEasyDAClientEvents
// Flags:     (4096) Dispatchable
// GUID:      {39278DFA-06A0-4630-BFF3-91F66901C9DF}
// *********************************************************************//
  DEasyDAClientEvents = dispinterface
    ['{39278DFA-06A0-4630-BFF3-91F66901C9DF}']
    procedure EventingFailure(sender0: OleVariant; const eventArgs: _FailureEventArgs); dispid 1001;
    procedure ItemChanged(sender0: OleVariant; const eventArgs: _EasyDAItemChangedEventArgs); dispid 1002;
  end;

// *********************************************************************//
// DispIntf:  DEasyDAClientManagementEvents
// Flags:     (4096) Dispatchable
// GUID:      {DE3C7FD8-98F1-4CAB-A246-F629F3759A92}
// *********************************************************************//
  DEasyDAClientManagementEvents = dispinterface
    ['{DE3C7FD8-98F1-4CAB-A246-F629F3759A92}']
    procedure LogEntry(sender0: OleVariant; const eventArgs: _LogEntryEventArgs); dispid 1001;
  end;

// *********************************************************************//
// Interface: _EasyDAClient
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5D8A341A-863F-41D3-90D5-E88A714CF956}
// *********************************************************************//
  _EasyDAClient = interface(IDispatch)
    ['{5D8A341A-863F-41D3-90D5-E88A714CF956}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_CustomReference: WideString; safecall;
    procedure Set_CustomReference(const pRetVal: WideString); safecall;
    function Clone: OleVariant; safecall;
    function GetService(const serviceType: _Type): OleVariant; safecall;
    function GetServiceByName(const serviceTypeName: WideString): OleVariant; safecall;
    function ValueEquals(other: OleVariant): WordBool; safecall;
    function Get_NotificationQueueCapacity: Integer; safecall;
    procedure Set_NotificationQueueCapacity(pRetVal: Integer); safecall;
    function Get_NotificationQueueIdleTimeToSleep: Integer; safecall;
    procedure Set_NotificationQueueIdleTimeToSleep(pRetVal: Integer); safecall;
    function Get_QueueNotifications: WordBool; safecall;
    procedure Set_QueueNotifications(pRetVal: WordBool); safecall;
    function Get_AliasProvider: _AliasProvider; safecall;
    procedure _Set_AliasProvider(const pRetVal: _AliasProvider); safecall;
    function Get_InstanceParameters: _EasyDAInstanceParameters; safecall;
    procedure _Set_InstanceParameters(const pRetVal: _EasyDAInstanceParameters); safecall;
    function Get_Isolated: WordBool; safecall;
    procedure Set_Isolated(pRetVal: WordBool); safecall;
    function Get_IsolatedParameters: _EasyDAAdaptableParameters; safecall;
    procedure _Set_IsolatedParameters(const pRetVal: _EasyDAAdaptableParameters); safecall;
    function Get_LicenseInfo: _StringObjectDictionary; safecall;
    function Get_PullItemChangedQueueCapacity: Integer; safecall;
    procedure Set_PullItemChangedQueueCapacity(pRetVal: Integer); safecall;
    function Get_SupportedTechnologies: OpcTechnologies; safecall;
    function BrowseAccessPaths(serverDescriptor: OleVariant; nodeDescriptor: OleVariant): PSafeArray; safecall;
    function BrowseAccessPathList(serverDescriptor: OleVariant; nodeDescriptor: OleVariant): _ElasticVector; safecall;
    function BrowseBranches(const machineName: WideString; const serverClass: WideString; 
                            const parentItemId: WideString): _DANodeElementCollection; safecall;
    function BrowseLeaves(const machineName: WideString; const serverClass: WideString; 
                          const parentItemId: WideString): _DANodeElementCollection; safecall;
    function BrowseNodes(serverDescriptor: OleVariant; parentNodeDescriptor: OleVariant; 
                         browseParameters: OleVariant): _DANodeElementCollection; safecall;
    function BrowseProperties(serverDescriptor: OleVariant; nodeDescriptor: OleVariant): _DAPropertyElementCollection; safecall;
    function BrowseServers(const location: WideString): _ServerElementCollection; safecall;
    procedure ChangeItemSubscription(handle: Integer; requestedUpdateRate: Integer); safecall;
    procedure ChangeItemSubscriptionList(const argumentsList: IList); safecall;
    procedure ChangeMultipleItemSubscriptions(argumentsArray: OleVariant); safecall;
    function GetItemSubscriptionArguments(handle: Integer): _EasyDAItemSubscriptionArguments; safecall;
    function GetMultiplePropertyValues(argumentsArray: OleVariant): PSafeArray; safecall;
    function GetPropertyValue(const machineName: WideString; const serverClass: WideString; 
                              const itemId: WideString; propertyId: Integer): OleVariant; safecall;
    function GetPropertyValueList(const argumentsList: IList): _ElasticVector; safecall;
    function IsKnownItemSubscriptionHandle(handle: Integer): WordBool; safecall;
    function ReadItem(const machineName: WideString; const serverClass: WideString; 
                      const itemId: WideString): _DAVtq; safecall;
    function ReadItemList(const argumentsList: IList): _ElasticVector; safecall;
    function ReadItemValue(const machineName: WideString; const serverClass: WideString; 
                           const itemId: WideString): OleVariant; safecall;
    function ReadItemValueList(const argumentsList: IList): _ElasticVector; safecall;
    function ReadMultipleItems(argumentsArray: OleVariant): PSafeArray; safecall;
    function ReadMultipleItemValues(argumentsArray: OleVariant): PSafeArray; safecall;
    function SubscribeItem(const machineName: WideString; const serverClass: WideString; 
                           const itemId: WideString; requestedUpdateRate: Integer): Integer; safecall;
    function SubscribeItemList(const itemSubscriptionArgumentsList: IList): _ElasticVector; safecall;
    function SubscribeMultipleItems(itemSubscriptionArgumentsArray: OleVariant): PSafeArray; safecall;
    procedure UnsubscribeAllItems; safecall;
    procedure UnsubscribeItem(handle: Integer); safecall;
    procedure UnsubscribeItemList(const handlesToUnsubscribe: IList); safecall;
    procedure UnsubscribeMultipleItems(handlesToUnsubscribe: OleVariant); safecall;
    function WaitForMultipleItemValueList(const itemGroupArgumentsList: IList; 
                                          minimumQuality: OleVariant; millisecondsTimeout: Integer): _ElasticVector; safecall;
    function WaitForMultipleItemValues(itemGroupArgumentsArray: OleVariant; 
                                       minimumQuality: OleVariant; millisecondsTimeout: Integer): PSafeArray; safecall;
    function WaitForItemValue(const machineName: WideString; const serverClass: WideString; 
                              const itemId: WideString; requestedUpdateRate: Integer; 
                              millisecondsTimeout: Integer): OleVariant; safecall;
    procedure WriteItem(const machineName: WideString; const serverClass: WideString; 
                        const itemId: WideString; value: OleVariant; timestamp: TDateTime; 
                        quality: DAQualities); safecall;
    function WriteItemList(const argumentsList: IList): _ElasticVector; safecall;
    procedure WriteItemValue(const machineName: WideString; const serverClass: WideString; 
                             const itemId: WideString; value: OleVariant); safecall;
    function WriteItemValueList(const argumentsList: IList): _ElasticVector; safecall;
    function WriteMultipleItems(argumentsArray: OleVariant): PSafeArray; safecall;
    function WriteMultipleItemValues(argumentsArray: OleVariant): PSafeArray; safecall;
    function PullItemChanged(millisecondsTimeout: Integer): _EasyDAItemChangedEventArgs; safecall;
    function PullItemChangeList(maximumCount: Integer; millisecondsTimeout: Integer): _ElasticVector; safecall;
    function PullMultipleItemChanges(maximumCount: Integer; millisecondsTimeout: Integer): PSafeArray; safecall;
    procedure Reset; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property CustomReference: WideString read Get_CustomReference write Set_CustomReference;
    property NotificationQueueCapacity: Integer read Get_NotificationQueueCapacity write Set_NotificationQueueCapacity;
    property NotificationQueueIdleTimeToSleep: Integer read Get_NotificationQueueIdleTimeToSleep write Set_NotificationQueueIdleTimeToSleep;
    property QueueNotifications: WordBool read Get_QueueNotifications write Set_QueueNotifications;
    property AliasProvider: _AliasProvider read Get_AliasProvider write _Set_AliasProvider;
    property InstanceParameters: _EasyDAInstanceParameters read Get_InstanceParameters write _Set_InstanceParameters;
    property Isolated: WordBool read Get_Isolated write Set_Isolated;
    property IsolatedParameters: _EasyDAAdaptableParameters read Get_IsolatedParameters write _Set_IsolatedParameters;
    property LicenseInfo: _StringObjectDictionary read Get_LicenseInfo;
    property PullItemChangedQueueCapacity: Integer read Get_PullItemChangedQueueCapacity write Set_PullItemChangedQueueCapacity;
    property SupportedTechnologies: OpcTechnologies read Get_SupportedTechnologies;
  end;

// *********************************************************************//
// DispIntf:  _EasyDAClientDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5D8A341A-863F-41D3-90D5-E88A714CF956}
// *********************************************************************//
  _EasyDAClientDisp = dispinterface
    ['{5D8A341A-863F-41D3-90D5-E88A714CF956}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property CustomReference: WideString dispid 1610743813;
    function Clone: OleVariant; dispid 1610743815;
    function GetService(const serviceType: _Type): OleVariant; dispid 1610743816;
    function GetServiceByName(const serviceTypeName: WideString): OleVariant; dispid 1610743817;
    function ValueEquals(other: OleVariant): WordBool; dispid 1610743818;
    property NotificationQueueCapacity: Integer dispid 1610743819;
    property NotificationQueueIdleTimeToSleep: Integer dispid 1610743821;
    property QueueNotifications: WordBool dispid 1610743823;
    property AliasProvider: _AliasProvider dispid 1610743825;
    property InstanceParameters: _EasyDAInstanceParameters dispid 1610743827;
    property Isolated: WordBool dispid 1610743829;
    property IsolatedParameters: _EasyDAAdaptableParameters dispid 1610743831;
    property LicenseInfo: _StringObjectDictionary readonly dispid 1610743833;
    property PullItemChangedQueueCapacity: Integer dispid 1610743834;
    property SupportedTechnologies: OpcTechnologies readonly dispid 1610743836;
    function BrowseAccessPaths(serverDescriptor: OleVariant; nodeDescriptor: OleVariant): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743837;
    function BrowseAccessPathList(serverDescriptor: OleVariant; nodeDescriptor: OleVariant): _ElasticVector; dispid 1610743838;
    function BrowseBranches(const machineName: WideString; const serverClass: WideString; 
                            const parentItemId: WideString): _DANodeElementCollection; dispid 1610743839;
    function BrowseLeaves(const machineName: WideString; const serverClass: WideString; 
                          const parentItemId: WideString): _DANodeElementCollection; dispid 1610743840;
    function BrowseNodes(serverDescriptor: OleVariant; parentNodeDescriptor: OleVariant; 
                         browseParameters: OleVariant): _DANodeElementCollection; dispid 1610743841;
    function BrowseProperties(serverDescriptor: OleVariant; nodeDescriptor: OleVariant): _DAPropertyElementCollection; dispid 1610743842;
    function BrowseServers(const location: WideString): _ServerElementCollection; dispid 1610743843;
    procedure ChangeItemSubscription(handle: Integer; requestedUpdateRate: Integer); dispid 1610743844;
    procedure ChangeItemSubscriptionList(const argumentsList: IList); dispid 1610743845;
    procedure ChangeMultipleItemSubscriptions(argumentsArray: OleVariant); dispid 1610743846;
    function GetItemSubscriptionArguments(handle: Integer): _EasyDAItemSubscriptionArguments; dispid 1610743847;
    function GetMultiplePropertyValues(argumentsArray: OleVariant): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743848;
    function GetPropertyValue(const machineName: WideString; const serverClass: WideString; 
                              const itemId: WideString; propertyId: Integer): OleVariant; dispid 1610743849;
    function GetPropertyValueList(const argumentsList: IList): _ElasticVector; dispid 1610743850;
    function IsKnownItemSubscriptionHandle(handle: Integer): WordBool; dispid 1610743851;
    function ReadItem(const machineName: WideString; const serverClass: WideString; 
                      const itemId: WideString): _DAVtq; dispid 1610743852;
    function ReadItemList(const argumentsList: IList): _ElasticVector; dispid 1610743853;
    function ReadItemValue(const machineName: WideString; const serverClass: WideString; 
                           const itemId: WideString): OleVariant; dispid 1610743854;
    function ReadItemValueList(const argumentsList: IList): _ElasticVector; dispid 1610743855;
    function ReadMultipleItems(argumentsArray: OleVariant): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743856;
    function ReadMultipleItemValues(argumentsArray: OleVariant): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743857;
    function SubscribeItem(const machineName: WideString; const serverClass: WideString; 
                           const itemId: WideString; requestedUpdateRate: Integer): Integer; dispid 1610743858;
    function SubscribeItemList(const itemSubscriptionArgumentsList: IList): _ElasticVector; dispid 1610743859;
    function SubscribeMultipleItems(itemSubscriptionArgumentsArray: OleVariant): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743860;
    procedure UnsubscribeAllItems; dispid 1610743861;
    procedure UnsubscribeItem(handle: Integer); dispid 1610743862;
    procedure UnsubscribeItemList(const handlesToUnsubscribe: IList); dispid 1610743863;
    procedure UnsubscribeMultipleItems(handlesToUnsubscribe: OleVariant); dispid 1610743864;
    function WaitForMultipleItemValueList(const itemGroupArgumentsList: IList; 
                                          minimumQuality: OleVariant; millisecondsTimeout: Integer): _ElasticVector; dispid 1610743865;
    function WaitForMultipleItemValues(itemGroupArgumentsArray: OleVariant; 
                                       minimumQuality: OleVariant; millisecondsTimeout: Integer): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743866;
    function WaitForItemValue(const machineName: WideString; const serverClass: WideString; 
                              const itemId: WideString; requestedUpdateRate: Integer; 
                              millisecondsTimeout: Integer): OleVariant; dispid 1610743867;
    procedure WriteItem(const machineName: WideString; const serverClass: WideString; 
                        const itemId: WideString; value: OleVariant; timestamp: TDateTime; 
                        quality: DAQualities); dispid 1610743868;
    function WriteItemList(const argumentsList: IList): _ElasticVector; dispid 1610743869;
    procedure WriteItemValue(const machineName: WideString; const serverClass: WideString; 
                             const itemId: WideString; value: OleVariant); dispid 1610743870;
    function WriteItemValueList(const argumentsList: IList): _ElasticVector; dispid 1610743871;
    function WriteMultipleItems(argumentsArray: OleVariant): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743872;
    function WriteMultipleItemValues(argumentsArray: OleVariant): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743873;
    function PullItemChanged(millisecondsTimeout: Integer): _EasyDAItemChangedEventArgs; dispid 1610743874;
    function PullItemChangeList(maximumCount: Integer; millisecondsTimeout: Integer): _ElasticVector; dispid 1610743875;
    function PullMultipleItemChanges(maximumCount: Integer; millisecondsTimeout: Integer): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743876;
    procedure Reset; dispid 1610743877;
  end;

// *********************************************************************//
// Interface: _EasyDAClientManagement
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FAAC2728-8C9B-4D62-9C05-5FF3B7D3F4BC}
// *********************************************************************//
  _EasyDAClientManagement = interface(IDispatch)
    ['{FAAC2728-8C9B-4D62-9C05-5FF3B7D3F4BC}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_CustomReference: WideString; safecall;
    procedure Set_CustomReference(const pRetVal: WideString); safecall;
    function Clone: OleVariant; safecall;
    function GetService(const serviceType: _Type): OleVariant; safecall;
    function GetServiceByName(const serviceTypeName: WideString): OleVariant; safecall;
    function ValueEquals(other: OleVariant): WordBool; safecall;
    procedure BeginInit; safecall;
    procedure EndInit; safecall;
    function Get_AdaptableParameters: _EasyDAAdaptableParameters; safecall;
    procedure _Set_AdaptableParameters(const pRetVal: _EasyDAAdaptableParameters); safecall;
    function Get_ServiceProviderEndpointDescriptor: _EndpointDescriptor; safecall;
    procedure _Set_ServiceProviderEndpointDescriptor(const pRetVal: _EndpointDescriptor); safecall;
    function Get_SharedInstance: _EasyDAClient; safecall;
    function Get_SharedParameters: _EasyDASharedParameters; safecall;
    procedure _Set_SharedParameters(const pRetVal: _EasyDASharedParameters); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property CustomReference: WideString read Get_CustomReference write Set_CustomReference;
    property AdaptableParameters: _EasyDAAdaptableParameters read Get_AdaptableParameters write _Set_AdaptableParameters;
    property ServiceProviderEndpointDescriptor: _EndpointDescriptor read Get_ServiceProviderEndpointDescriptor write _Set_ServiceProviderEndpointDescriptor;
    property SharedInstance: _EasyDAClient read Get_SharedInstance;
    property SharedParameters: _EasyDASharedParameters read Get_SharedParameters write _Set_SharedParameters;
  end;

// *********************************************************************//
// DispIntf:  _EasyDAClientManagementDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FAAC2728-8C9B-4D62-9C05-5FF3B7D3F4BC}
// *********************************************************************//
  _EasyDAClientManagementDisp = dispinterface
    ['{FAAC2728-8C9B-4D62-9C05-5FF3B7D3F4BC}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property CustomReference: WideString dispid 1610743813;
    function Clone: OleVariant; dispid 1610743815;
    function GetService(const serviceType: _Type): OleVariant; dispid 1610743816;
    function GetServiceByName(const serviceTypeName: WideString): OleVariant; dispid 1610743817;
    function ValueEquals(other: OleVariant): WordBool; dispid 1610743818;
    procedure BeginInit; dispid 1610743819;
    procedure EndInit; dispid 1610743820;
    property AdaptableParameters: _EasyDAAdaptableParameters dispid 1610743821;
    property ServiceProviderEndpointDescriptor: _EndpointDescriptor dispid 1610743823;
    property SharedInstance: _EasyDAClient readonly dispid 1610743825;
    property SharedParameters: _EasyDASharedParameters dispid 1610743826;
  end;

// *********************************************************************//
// Interface: _EasyAEClientSelector
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DA365255-31E9-42BC-9B01-EDDA70CA285A}
// *********************************************************************//
  _EasyAEClientSelector = interface(IDispatch)
    ['{DA365255-31E9-42BC-9B01-EDDA70CA285A}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_Differentiator: WideString; safecall;
    procedure Set_Differentiator(const pRetVal: WideString); safecall;
    function Get_InstanceParameters: _EasyAEInstanceParameters; safecall;
    procedure _Set_InstanceParameters(const pRetVal: _EasyAEInstanceParameters); safecall;
    function Get_Isolated: WordBool; safecall;
    procedure Set_Isolated(pRetVal: WordBool); safecall;
    function Get_IsolatedParameters: _EasyAEAdaptableParameters; safecall;
    procedure _Set_IsolatedParameters(const pRetVal: _EasyAEAdaptableParameters); safecall;
    procedure Reset; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property Differentiator: WideString read Get_Differentiator write Set_Differentiator;
    property InstanceParameters: _EasyAEInstanceParameters read Get_InstanceParameters write _Set_InstanceParameters;
    property Isolated: WordBool read Get_Isolated write Set_Isolated;
    property IsolatedParameters: _EasyAEAdaptableParameters read Get_IsolatedParameters write _Set_IsolatedParameters;
  end;

// *********************************************************************//
// DispIntf:  _EasyAEClientSelectorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DA365255-31E9-42BC-9B01-EDDA70CA285A}
// *********************************************************************//
  _EasyAEClientSelectorDisp = dispinterface
    ['{DA365255-31E9-42BC-9B01-EDDA70CA285A}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property Differentiator: WideString dispid 1610743816;
    property InstanceParameters: _EasyAEInstanceParameters dispid 1610743818;
    property Isolated: WordBool dispid 1610743820;
    property IsolatedParameters: _EasyAEAdaptableParameters dispid 1610743822;
    procedure Reset; dispid 1610743824;
  end;

// *********************************************************************//
// DispIntf:  DEasyAEClientEvents
// Flags:     (4096) Dispatchable
// GUID:      {AAEE83E0-A730-47AE-95D1-B3748432A8AD}
// *********************************************************************//
  DEasyAEClientEvents = dispinterface
    ['{AAEE83E0-A730-47AE-95D1-B3748432A8AD}']
    procedure EventingFailure(sender0: OleVariant; const eventArgs: _FailureEventArgs); dispid 1001;
    procedure Notification(sender0: OleVariant; const eventArgs: _EasyAENotificationEventArgs); dispid 1002;
  end;

// *********************************************************************//
// DispIntf:  DEasyAEClientManagementEvents
// Flags:     (4096) Dispatchable
// GUID:      {997848ED-916C-4253-903B-0BB63AC9995A}
// *********************************************************************//
  DEasyAEClientManagementEvents = dispinterface
    ['{997848ED-916C-4253-903B-0BB63AC9995A}']
    procedure LogEntry(sender0: OleVariant; const eventArgs: _LogEntryEventArgs); dispid 1001;
  end;

// *********************************************************************//
// Interface: _EasyAEClient
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F8A67414-B0C8-4F78-BFE5-968A7ED0E81E}
// *********************************************************************//
  _EasyAEClient = interface(IDispatch)
    ['{F8A67414-B0C8-4F78-BFE5-968A7ED0E81E}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_CustomReference: WideString; safecall;
    procedure Set_CustomReference(const pRetVal: WideString); safecall;
    function Clone: OleVariant; safecall;
    function GetService(const serviceType: _Type): OleVariant; safecall;
    function GetServiceByName(const serviceTypeName: WideString): OleVariant; safecall;
    function ValueEquals(other: OleVariant): WordBool; safecall;
    function Get_NotificationQueueCapacity: Integer; safecall;
    procedure Set_NotificationQueueCapacity(pRetVal: Integer); safecall;
    function Get_NotificationQueueIdleTimeToSleep: Integer; safecall;
    procedure Set_NotificationQueueIdleTimeToSleep(pRetVal: Integer); safecall;
    function Get_QueueNotifications: WordBool; safecall;
    procedure Set_QueueNotifications(pRetVal: WordBool); safecall;
    function Get_AliasProvider: _AliasProvider; safecall;
    procedure _Set_AliasProvider(const pRetVal: _AliasProvider); safecall;
    function Get_InstanceParameters: _EasyAEInstanceParameters; safecall;
    procedure _Set_InstanceParameters(const pRetVal: _EasyAEInstanceParameters); safecall;
    function Get_Isolated: WordBool; safecall;
    procedure Set_Isolated(pRetVal: WordBool); safecall;
    function Get_IsolatedParameters: _EasyAEAdaptableParameters; safecall;
    procedure _Set_IsolatedParameters(const pRetVal: _EasyAEAdaptableParameters); safecall;
    function Get_LicenseInfo: _StringObjectDictionary; safecall;
    function Get_PullNotificationQueueCapacity: Integer; safecall;
    procedure Set_PullNotificationQueueCapacity(pRetVal: Integer); safecall;
    function Get_SupportedTechnologies: OpcTechnologies; safecall;
    procedure AcknowledgeCondition(serverDescriptor: OleVariant; sourceDescriptor: OleVariant; 
                                   const conditionName: WideString; activeTime: TDateTime; 
                                   cookie: Integer; const acknowledgerId: WideString; 
                                   const comment: WideString); safecall;
    function BrowseAreas(const machineName: WideString; const serverClass: WideString; 
                         const parentQualifiedName: WideString): _AENodeElementCollection; safecall;
    function BrowseNodes(serverDescriptor: OleVariant; parentNodeDescriptor: OleVariant; 
                         browseParameters: OleVariant): _AENodeElementCollection; safecall;
    function BrowseServers(const location: WideString): _ServerElementCollection; safecall;
    function BrowseSources(const machineName: WideString; const serverClass: WideString; 
                           const parentQualifiedName: WideString): _AENodeElementCollection; safecall;
    procedure ChangeEventSubscription(handle: Integer; notificationRate: Integer; 
                                      filter: OleVariant; active: WordBool); safecall;
    function GetConditionState(serverDescriptor: OleVariant; sourceDescriptor: OleVariant; 
                               const conditionName: WideString; attributes: OleVariant): _AEConditionState; safecall;
    function GetConditionStateList(serverDescriptor: OleVariant; sourceDescriptor: OleVariant; 
                                   const conditionName: WideString; const attributes: IList): _AEConditionState; safecall;
    function GetEventsSubscriptionArguments(handle: Integer): _EasyAEEventsSubscriptionArguments; safecall;
    function IsKnownEventsSubscriptionHandle(handle: Integer): WordBool; safecall;
    function QueryEventCategories(serverDescriptor: OleVariant; eventTypes: Integer): _AECategoryElementCollection; safecall;
    function QuerySourceConditions(serverDescriptor: OleVariant; sourceNodeDescriptor: OleVariant): _AEConditionElementCollection; safecall;
    procedure RefreshEventSubscription(handle: Integer); safecall;
    procedure Reset; safecall;
    function SubscribeEvents(serverDescriptor: OleVariant; subscriptionParameters: OleVariant; 
                             refreshWhenActive: WordBool; state: OleVariant): Integer; safecall;
    procedure UnsubscribeAllEvents; safecall;
    procedure UnsubscribeEvents(handle: Integer); safecall;
    function PullNotification(millisecondsTimeout: Integer): _EasyAENotificationEventArgs; safecall;
    function PullNotificationList(maximumCount: Integer; millisecondsTimeout: Integer): _ElasticVector; safecall;
    function PullMultipleNotifications(maximumCount: Integer; millisecondsTimeout: Integer): PSafeArray; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property CustomReference: WideString read Get_CustomReference write Set_CustomReference;
    property NotificationQueueCapacity: Integer read Get_NotificationQueueCapacity write Set_NotificationQueueCapacity;
    property NotificationQueueIdleTimeToSleep: Integer read Get_NotificationQueueIdleTimeToSleep write Set_NotificationQueueIdleTimeToSleep;
    property QueueNotifications: WordBool read Get_QueueNotifications write Set_QueueNotifications;
    property AliasProvider: _AliasProvider read Get_AliasProvider write _Set_AliasProvider;
    property InstanceParameters: _EasyAEInstanceParameters read Get_InstanceParameters write _Set_InstanceParameters;
    property Isolated: WordBool read Get_Isolated write Set_Isolated;
    property IsolatedParameters: _EasyAEAdaptableParameters read Get_IsolatedParameters write _Set_IsolatedParameters;
    property LicenseInfo: _StringObjectDictionary read Get_LicenseInfo;
    property PullNotificationQueueCapacity: Integer read Get_PullNotificationQueueCapacity write Set_PullNotificationQueueCapacity;
    property SupportedTechnologies: OpcTechnologies read Get_SupportedTechnologies;
  end;

// *********************************************************************//
// DispIntf:  _EasyAEClientDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F8A67414-B0C8-4F78-BFE5-968A7ED0E81E}
// *********************************************************************//
  _EasyAEClientDisp = dispinterface
    ['{F8A67414-B0C8-4F78-BFE5-968A7ED0E81E}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property CustomReference: WideString dispid 1610743813;
    function Clone: OleVariant; dispid 1610743815;
    function GetService(const serviceType: _Type): OleVariant; dispid 1610743816;
    function GetServiceByName(const serviceTypeName: WideString): OleVariant; dispid 1610743817;
    function ValueEquals(other: OleVariant): WordBool; dispid 1610743818;
    property NotificationQueueCapacity: Integer dispid 1610743819;
    property NotificationQueueIdleTimeToSleep: Integer dispid 1610743821;
    property QueueNotifications: WordBool dispid 1610743823;
    property AliasProvider: _AliasProvider dispid 1610743825;
    property InstanceParameters: _EasyAEInstanceParameters dispid 1610743827;
    property Isolated: WordBool dispid 1610743829;
    property IsolatedParameters: _EasyAEAdaptableParameters dispid 1610743831;
    property LicenseInfo: _StringObjectDictionary readonly dispid 1610743833;
    property PullNotificationQueueCapacity: Integer dispid 1610743834;
    property SupportedTechnologies: OpcTechnologies readonly dispid 1610743836;
    procedure AcknowledgeCondition(serverDescriptor: OleVariant; sourceDescriptor: OleVariant; 
                                   const conditionName: WideString; activeTime: TDateTime; 
                                   cookie: Integer; const acknowledgerId: WideString; 
                                   const comment: WideString); dispid 1610743837;
    function BrowseAreas(const machineName: WideString; const serverClass: WideString; 
                         const parentQualifiedName: WideString): _AENodeElementCollection; dispid 1610743838;
    function BrowseNodes(serverDescriptor: OleVariant; parentNodeDescriptor: OleVariant; 
                         browseParameters: OleVariant): _AENodeElementCollection; dispid 1610743839;
    function BrowseServers(const location: WideString): _ServerElementCollection; dispid 1610743840;
    function BrowseSources(const machineName: WideString; const serverClass: WideString; 
                           const parentQualifiedName: WideString): _AENodeElementCollection; dispid 1610743841;
    procedure ChangeEventSubscription(handle: Integer; notificationRate: Integer; 
                                      filter: OleVariant; active: WordBool); dispid 1610743842;
    function GetConditionState(serverDescriptor: OleVariant; sourceDescriptor: OleVariant; 
                               const conditionName: WideString; attributes: OleVariant): _AEConditionState; dispid 1610743843;
    function GetConditionStateList(serverDescriptor: OleVariant; sourceDescriptor: OleVariant; 
                                   const conditionName: WideString; const attributes: IList): _AEConditionState; dispid 1610743844;
    function GetEventsSubscriptionArguments(handle: Integer): _EasyAEEventsSubscriptionArguments; dispid 1610743845;
    function IsKnownEventsSubscriptionHandle(handle: Integer): WordBool; dispid 1610743846;
    function QueryEventCategories(serverDescriptor: OleVariant; eventTypes: Integer): _AECategoryElementCollection; dispid 1610743847;
    function QuerySourceConditions(serverDescriptor: OleVariant; sourceNodeDescriptor: OleVariant): _AEConditionElementCollection; dispid 1610743848;
    procedure RefreshEventSubscription(handle: Integer); dispid 1610743849;
    procedure Reset; dispid 1610743850;
    function SubscribeEvents(serverDescriptor: OleVariant; subscriptionParameters: OleVariant; 
                             refreshWhenActive: WordBool; state: OleVariant): Integer; dispid 1610743851;
    procedure UnsubscribeAllEvents; dispid 1610743852;
    procedure UnsubscribeEvents(handle: Integer); dispid 1610743853;
    function PullNotification(millisecondsTimeout: Integer): _EasyAENotificationEventArgs; dispid 1610743854;
    function PullNotificationList(maximumCount: Integer; millisecondsTimeout: Integer): _ElasticVector; dispid 1610743855;
    function PullMultipleNotifications(maximumCount: Integer; millisecondsTimeout: Integer): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743856;
  end;

// *********************************************************************//
// Interface: _EasyAEClientManagement
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FD09B613-84E3-4DC4-8BA8-0AB6C2A0801D}
// *********************************************************************//
  _EasyAEClientManagement = interface(IDispatch)
    ['{FD09B613-84E3-4DC4-8BA8-0AB6C2A0801D}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_CustomReference: WideString; safecall;
    procedure Set_CustomReference(const pRetVal: WideString); safecall;
    function Clone: OleVariant; safecall;
    function GetService(const serviceType: _Type): OleVariant; safecall;
    function GetServiceByName(const serviceTypeName: WideString): OleVariant; safecall;
    function ValueEquals(other: OleVariant): WordBool; safecall;
    function Get_AdaptableParameters: _EasyAEAdaptableParameters; safecall;
    procedure _Set_AdaptableParameters(const pRetVal: _EasyAEAdaptableParameters); safecall;
    function Get_SharedInstance: _EasyAEClient; safecall;
    function Get_SharedParameters: _EasyAESharedParameters; safecall;
    procedure _Set_SharedParameters(const pRetVal: _EasyAESharedParameters); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property CustomReference: WideString read Get_CustomReference write Set_CustomReference;
    property AdaptableParameters: _EasyAEAdaptableParameters read Get_AdaptableParameters write _Set_AdaptableParameters;
    property SharedInstance: _EasyAEClient read Get_SharedInstance;
    property SharedParameters: _EasyAESharedParameters read Get_SharedParameters write _Set_SharedParameters;
  end;

// *********************************************************************//
// DispIntf:  _EasyAEClientManagementDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FD09B613-84E3-4DC4-8BA8-0AB6C2A0801D}
// *********************************************************************//
  _EasyAEClientManagementDisp = dispinterface
    ['{FD09B613-84E3-4DC4-8BA8-0AB6C2A0801D}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property CustomReference: WideString dispid 1610743813;
    function Clone: OleVariant; dispid 1610743815;
    function GetService(const serviceType: _Type): OleVariant; dispid 1610743816;
    function GetServiceByName(const serviceTypeName: WideString): OleVariant; dispid 1610743817;
    function ValueEquals(other: OleVariant): WordBool; dispid 1610743818;
    property AdaptableParameters: _EasyAEAdaptableParameters dispid 1610743819;
    property SharedInstance: _EasyAEClient readonly dispid 1610743821;
    property SharedParameters: _EasyAESharedParameters dispid 1610743822;
  end;

// *********************************************************************//
// The Class CoEasyDAClientSelector provides a Create and CreateRemote method to          
// create instances of the default interface _EasyDAClientSelector exposed by              
// the CoClass EasyDAClientSelector. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyDAClientSelector = class
    class function Create: _EasyDAClientSelector;
    class function CreateRemote(const MachineName: string): _EasyDAClientSelector;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TEasyDAClientSelector
// Help String      : Describes how to select the EasyDAClient object.
// Default Interface: _EasyDAClientSelector
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TEasyDAClientSelector = class(TOleServer)
  private
    FIntf: _EasyDAClientSelector;
    function GetDefaultInterface: _EasyDAClientSelector;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_StandardName: WideString;
    procedure Set_StandardName(const pRetVal: WideString);
    function Get_Differentiator: WideString;
    procedure Set_Differentiator(const pRetVal: WideString);
    function Get_InstanceParameters: _EasyDAInstanceParameters;
    procedure _Set_InstanceParameters(const pRetVal: _EasyDAInstanceParameters);
    function Get_Isolated: WordBool;
    procedure Set_Isolated(pRetVal: WordBool);
    function Get_IsolatedParameters: _EasyDAAdaptableParameters;
    procedure _Set_IsolatedParameters(const pRetVal: _EasyDAAdaptableParameters);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _EasyDAClientSelector);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    procedure Reset;
    property DefaultInterface: _EasyDAClientSelector read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property InstanceParameters: _EasyDAInstanceParameters read Get_InstanceParameters write _Set_InstanceParameters;
    property IsolatedParameters: _EasyDAAdaptableParameters read Get_IsolatedParameters write _Set_IsolatedParameters;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property Differentiator: WideString read Get_Differentiator write Set_Differentiator;
    property Isolated: WordBool read Get_Isolated write Set_Isolated;
  published
  end;

// *********************************************************************//
// The Class CoEasyAEClientSelector provides a Create and CreateRemote method to          
// create instances of the default interface _EasyAEClientSelector exposed by              
// the CoClass EasyAEClientSelector. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyAEClientSelector = class
    class function Create: _EasyAEClientSelector;
    class function CreateRemote(const MachineName: string): _EasyAEClientSelector;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TEasyAEClientSelector
// Help String      : Describes how to select the EasyAEClient object.
// Default Interface: _EasyAEClientSelector
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TEasyAEClientSelector = class(TOleServer)
  private
    FIntf: _EasyAEClientSelector;
    function GetDefaultInterface: _EasyAEClientSelector;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_StandardName: WideString;
    procedure Set_StandardName(const pRetVal: WideString);
    function Get_Differentiator: WideString;
    procedure Set_Differentiator(const pRetVal: WideString);
    function Get_InstanceParameters: _EasyAEInstanceParameters;
    procedure _Set_InstanceParameters(const pRetVal: _EasyAEInstanceParameters);
    function Get_Isolated: WordBool;
    procedure Set_Isolated(pRetVal: WordBool);
    function Get_IsolatedParameters: _EasyAEAdaptableParameters;
    procedure _Set_IsolatedParameters(const pRetVal: _EasyAEAdaptableParameters);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _EasyAEClientSelector);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    procedure Reset;
    property DefaultInterface: _EasyAEClientSelector read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property InstanceParameters: _EasyAEInstanceParameters read Get_InstanceParameters write _Set_InstanceParameters;
    property IsolatedParameters: _EasyAEAdaptableParameters read Get_IsolatedParameters write _Set_IsolatedParameters;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property Differentiator: WideString read Get_Differentiator write Set_Differentiator;
    property Isolated: WordBool read Get_Isolated write Set_Isolated;
  published
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses System.Win.ComObj;

class function CoEasyDAClientSelector.Create: _EasyDAClientSelector;
begin
  Result := CreateComObject(CLASS_EasyDAClientSelector) as _EasyDAClientSelector;
end;

class function CoEasyDAClientSelector.CreateRemote(const MachineName: string): _EasyDAClientSelector;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyDAClientSelector) as _EasyDAClientSelector;
end;

procedure TEasyDAClientSelector.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{4EBCE08F-82BB-4685-AC7F-D597BD956B41}';
    IntfIID:   '{C1D8CCF6-C125-4260-B107-21EA0E6C04C2}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TEasyDAClientSelector.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _EasyDAClientSelector;
  end;
end;

procedure TEasyDAClientSelector.ConnectTo(svrIntf: _EasyDAClientSelector);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TEasyDAClientSelector.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TEasyDAClientSelector.GetDefaultInterface: _EasyDAClientSelector;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TEasyDAClientSelector.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TEasyDAClientSelector.Destroy;
begin
  inherited Destroy;
end;

function TEasyDAClientSelector.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TEasyDAClientSelector.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TEasyDAClientSelector.Get_StandardName: WideString;
begin
  Result := DefaultInterface.StandardName;
end;

procedure TEasyDAClientSelector.Set_StandardName(const pRetVal: WideString);
begin
  DefaultInterface.StandardName := pRetVal;
end;

function TEasyDAClientSelector.Get_Differentiator: WideString;
begin
  Result := DefaultInterface.Differentiator;
end;

procedure TEasyDAClientSelector.Set_Differentiator(const pRetVal: WideString);
begin
  DefaultInterface.Differentiator := pRetVal;
end;

function TEasyDAClientSelector.Get_InstanceParameters: _EasyDAInstanceParameters;
begin
  Result := DefaultInterface.InstanceParameters;
end;

procedure TEasyDAClientSelector._Set_InstanceParameters(const pRetVal: _EasyDAInstanceParameters);
begin
  DefaultInterface.InstanceParameters := pRetVal;
end;

function TEasyDAClientSelector.Get_Isolated: WordBool;
begin
  Result := DefaultInterface.Isolated;
end;

procedure TEasyDAClientSelector.Set_Isolated(pRetVal: WordBool);
begin
  DefaultInterface.Isolated := pRetVal;
end;

function TEasyDAClientSelector.Get_IsolatedParameters: _EasyDAAdaptableParameters;
begin
  Result := DefaultInterface.IsolatedParameters;
end;

procedure TEasyDAClientSelector._Set_IsolatedParameters(const pRetVal: _EasyDAAdaptableParameters);
begin
  DefaultInterface.IsolatedParameters := pRetVal;
end;

function TEasyDAClientSelector.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TEasyDAClientSelector.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TEasyDAClientSelector.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TEasyDAClientSelector.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

procedure TEasyDAClientSelector.Reset;
begin
  DefaultInterface.Reset;
end;

class function CoEasyAEClientSelector.Create: _EasyAEClientSelector;
begin
  Result := CreateComObject(CLASS_EasyAEClientSelector) as _EasyAEClientSelector;
end;

class function CoEasyAEClientSelector.CreateRemote(const MachineName: string): _EasyAEClientSelector;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyAEClientSelector) as _EasyAEClientSelector;
end;

procedure TEasyAEClientSelector.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{3D27401A-D104-4C09-96A6-372D63671A7B}';
    IntfIID:   '{DA365255-31E9-42BC-9B01-EDDA70CA285A}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TEasyAEClientSelector.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _EasyAEClientSelector;
  end;
end;

procedure TEasyAEClientSelector.ConnectTo(svrIntf: _EasyAEClientSelector);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TEasyAEClientSelector.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TEasyAEClientSelector.GetDefaultInterface: _EasyAEClientSelector;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TEasyAEClientSelector.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TEasyAEClientSelector.Destroy;
begin
  inherited Destroy;
end;

function TEasyAEClientSelector.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TEasyAEClientSelector.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TEasyAEClientSelector.Get_StandardName: WideString;
begin
  Result := DefaultInterface.StandardName;
end;

procedure TEasyAEClientSelector.Set_StandardName(const pRetVal: WideString);
begin
  DefaultInterface.StandardName := pRetVal;
end;

function TEasyAEClientSelector.Get_Differentiator: WideString;
begin
  Result := DefaultInterface.Differentiator;
end;

procedure TEasyAEClientSelector.Set_Differentiator(const pRetVal: WideString);
begin
  DefaultInterface.Differentiator := pRetVal;
end;

function TEasyAEClientSelector.Get_InstanceParameters: _EasyAEInstanceParameters;
begin
  Result := DefaultInterface.InstanceParameters;
end;

procedure TEasyAEClientSelector._Set_InstanceParameters(const pRetVal: _EasyAEInstanceParameters);
begin
  DefaultInterface.InstanceParameters := pRetVal;
end;

function TEasyAEClientSelector.Get_Isolated: WordBool;
begin
  Result := DefaultInterface.Isolated;
end;

procedure TEasyAEClientSelector.Set_Isolated(pRetVal: WordBool);
begin
  DefaultInterface.Isolated := pRetVal;
end;

function TEasyAEClientSelector.Get_IsolatedParameters: _EasyAEAdaptableParameters;
begin
  Result := DefaultInterface.IsolatedParameters;
end;

procedure TEasyAEClientSelector._Set_IsolatedParameters(const pRetVal: _EasyAEAdaptableParameters);
begin
  DefaultInterface.IsolatedParameters := pRetVal;
end;

function TEasyAEClientSelector.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TEasyAEClientSelector.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TEasyAEClientSelector.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TEasyAEClientSelector.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

procedure TEasyAEClientSelector.Reset;
begin
  DefaultInterface.Reset;
end;

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TEasyDAClientSelector, TEasyAEClientSelector]);
end;

end.
