unit OpcLabs_EasyOpcClassicComponents_TLB;

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
// File generated on 11/3/2024 2:17:47 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\OPC Labs OPC Studio 2024.2\SDK\lib\OpcLabs.EasyOpcClassicComponents.tlb (1)
// LIBID: {A03AA108-3C6B-4CB0-A813-BCBBCD335DAE}
// LCID: 0
// Helpfile: 
// HelpString: OPC Labs EasyOPC �Classic� Components Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
//   (3) v5.81 OpcLabs_EasyOpcClassicCore, (C:\Program Files (x86)\OPC Labs OPC Studio 2024.2\SDK\lib\OpcLabs.EasyOpcClassicCore.tlb)
//   (4) v2.4 System, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.tlb)
//   (5) v5.81 OpcLabs_BaseLib, (C:\Program Files (x86)\OPC Labs OPC Studio 2024.2\SDK\lib\OpcLabs.BaseLib.tlb)
//   (6) v5.81 OpcLabs_EasyOpcClassic, (C:\Program Files (x86)\OPC Labs OPC Studio 2024.2\SDK\lib\OpcLabs.EasyOpcClassic.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, mscorlib_TLB, OpcLabs_BaseLib_TLB, OpcLabs_EasyOpcClassic_TLB, OpcLabs_EasyOpcClassicCore_TLB, System.Classes, System.Variants, System.Win.StdVCL, 
System_TLB, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  OpcLabs_EasyOpcClassicComponentsMajorVersion = 5;
  OpcLabs_EasyOpcClassicComponentsMinorVersion = 81;

  LIBID_OpcLabs_EasyOpcClassicComponents: TGUID = '{A03AA108-3C6B-4CB0-A813-BCBBCD335DAE}';

  IID___DummyClassForEasyOpcClassicCoreReference: TGUID = '{CD0E6599-7572-35BC-969D-EE8A738710E9}';
  CLASS_EasyDAClient: TGUID = '{6B0B5307-BCB6-4953-A832-BFCF952F7561}';
  CLASS_EasyDAClientManagement: TGUID = '{9E15DD64-80EF-4D69-85A0-C3CFECC89514}';
  CLASS_EasyAEClient: TGUID = '{3643545B-221F-4960-BF47-8A4DDEC81A67}';
  CLASS_EasyAEClientManagement: TGUID = '{E6D21611-6B20-4A3C-84C5-194A3C36D155}';
  CLASS__DummyClassForEasyOpcClassicCoreReference: TGUID = '{9FEF1024-EEB4-3BD4-8A5C-B2D36AA99079}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  __DummyClassForEasyOpcClassicCoreReference = interface;
  __DummyClassForEasyOpcClassicCoreReferenceDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  EasyDAClient = _EasyDAClient;
  EasyDAClientManagement = _EasyDAClientManagement;
  EasyAEClient = _EasyAEClient;
  EasyAEClientManagement = _EasyAEClientManagement;
  _DummyClassForEasyOpcClassicCoreReference = __DummyClassForEasyOpcClassicCoreReference;


// *********************************************************************//
// Interface: __DummyClassForEasyOpcClassicCoreReference
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {CD0E6599-7572-35BC-969D-EE8A738710E9}
// *********************************************************************//
  __DummyClassForEasyOpcClassicCoreReference = interface(IDispatch)
    ['{CD0E6599-7572-35BC-969D-EE8A738710E9}']
  end;

// *********************************************************************//
// DispIntf:  __DummyClassForEasyOpcClassicCoreReferenceDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {CD0E6599-7572-35BC-969D-EE8A738710E9}
// *********************************************************************//
  __DummyClassForEasyOpcClassicCoreReferenceDisp = dispinterface
    ['{CD0E6599-7572-35BC-969D-EE8A738710E9}']
  end;

// *********************************************************************//
// The Class CoEasyDAClient provides a Create and CreateRemote method to          
// create instances of the default interface _EasyDAClient exposed by              
// the CoClass EasyDAClient. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyDAClient = class
    class function Create: _EasyDAClient;
    class function CreateRemote(const MachineName: string): _EasyDAClient;
  end;

  TEasyDAClientEventingFailure = procedure(ASender: TObject; sender0: OleVariant; 
                                                             const eventArgs: _FailureEventArgs) of object;
  TEasyDAClientItemChanged = procedure(ASender: TObject; sender0: OleVariant; 
                                                         const eventArgs: _EasyDAItemChangedEventArgs) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TEasyDAClient
// Help String      : The EasyDAClient object is the main object that allows simple access to OPC Data Access servers.
// Default Interface: _EasyDAClient
// Def. Intf. DISP? : No
// Event   Interface: DEasyDAClientEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TEasyDAClient = class(TOleServer)
  private
    FOnEventingFailure: TEasyDAClientEventingFailure;
    FOnItemChanged: TEasyDAClientItemChanged;
    FIntf: _EasyDAClient;
    function GetDefaultInterface: _EasyDAClient;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_CustomReference: WideString;
    procedure Set_CustomReference(const pRetVal: WideString);
    function Get_NotificationQueueCapacity: Integer;
    procedure Set_NotificationQueueCapacity(pRetVal: Integer);
    function Get_NotificationQueueIdleTimeToSleep: Integer;
    procedure Set_NotificationQueueIdleTimeToSleep(pRetVal: Integer);
    function Get_QueueNotifications: WordBool;
    procedure Set_QueueNotifications(pRetVal: WordBool);
    function Get_AliasProvider: _AliasProvider;
    procedure _Set_AliasProvider(const pRetVal: _AliasProvider);
    function Get_InstanceParameters: _EasyDAInstanceParameters;
    procedure _Set_InstanceParameters(const pRetVal: _EasyDAInstanceParameters);
    function Get_Isolated: WordBool;
    procedure Set_Isolated(pRetVal: WordBool);
    function Get_IsolatedParameters: _EasyDAAdaptableParameters;
    procedure _Set_IsolatedParameters(const pRetVal: _EasyDAAdaptableParameters);
    function Get_LicenseInfo: _StringObjectDictionary;
    function Get_PullItemChangedQueueCapacity: Integer;
    procedure Set_PullItemChangedQueueCapacity(pRetVal: Integer);
    function Get_SupportedTechnologies: OpcTechnologies;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _EasyDAClient);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    function GetService(const serviceType: _Type): OleVariant;
    function GetServiceByName(const serviceTypeName: WideString): OleVariant;
    function ValueEquals(other: OleVariant): WordBool;
    function BrowseAccessPaths(serverDescriptor: OleVariant; nodeDescriptor: OleVariant): PSafeArray;
    function BrowseAccessPathList(serverDescriptor: OleVariant; nodeDescriptor: OleVariant): _ElasticVector;
    function BrowseBranches(const machineName: WideString; const serverClass: WideString; 
                            const parentItemId: WideString): _DANodeElementCollection;
    function BrowseLeaves(const machineName: WideString; const serverClass: WideString; 
                          const parentItemId: WideString): _DANodeElementCollection;
    function BrowseNodes(serverDescriptor: OleVariant; parentNodeDescriptor: OleVariant; 
                         browseParameters: OleVariant): _DANodeElementCollection;
    function BrowseProperties(serverDescriptor: OleVariant; nodeDescriptor: OleVariant): _DAPropertyElementCollection;
    function BrowseServers(const location: WideString): _ServerElementCollection;
    procedure ChangeItemSubscription(handle: Integer; requestedUpdateRate: Integer);
    procedure ChangeItemSubscriptionList(const argumentsList: IList);
    procedure ChangeMultipleItemSubscriptions(argumentsArray: OleVariant);
    function GetItemSubscriptionArguments(handle: Integer): _EasyDAItemSubscriptionArguments;
    function GetMultiplePropertyValues(argumentsArray: OleVariant): PSafeArray;
    function GetPropertyValue(const machineName: WideString; const serverClass: WideString; 
                              const itemId: WideString; propertyId: Integer): OleVariant;
    function GetPropertyValueList(const argumentsList: IList): _ElasticVector;
    function IsKnownItemSubscriptionHandle(handle: Integer): WordBool;
    function ReadItem(const machineName: WideString; const serverClass: WideString; 
                      const itemId: WideString): _DAVtq;
    function ReadItemList(const argumentsList: IList): _ElasticVector;
    function ReadItemValue(const machineName: WideString; const serverClass: WideString; 
                           const itemId: WideString): OleVariant;
    function ReadItemValueList(const argumentsList: IList): _ElasticVector;
    function ReadMultipleItems(argumentsArray: OleVariant): PSafeArray;
    function ReadMultipleItemValues(argumentsArray: OleVariant): PSafeArray;
    function SubscribeItem(const machineName: WideString; const serverClass: WideString; 
                           const itemId: WideString; requestedUpdateRate: Integer): Integer;
    function SubscribeItemList(const itemSubscriptionArgumentsList: IList): _ElasticVector;
    function SubscribeMultipleItems(itemSubscriptionArgumentsArray: OleVariant): PSafeArray;
    procedure UnsubscribeAllItems;
    procedure UnsubscribeItem(handle: Integer);
    procedure UnsubscribeItemList(const handlesToUnsubscribe: IList);
    procedure UnsubscribeMultipleItems(handlesToUnsubscribe: OleVariant);
    function WaitForMultipleItemValueList(const itemGroupArgumentsList: IList; 
                                          minimumQuality: OleVariant; millisecondsTimeout: Integer): _ElasticVector;
    function WaitForMultipleItemValues(itemGroupArgumentsArray: OleVariant; 
                                       minimumQuality: OleVariant; millisecondsTimeout: Integer): PSafeArray;
    function WaitForItemValue(const machineName: WideString; const serverClass: WideString; 
                              const itemId: WideString; requestedUpdateRate: Integer; 
                              millisecondsTimeout: Integer): OleVariant;
    procedure WriteItem(const machineName: WideString; const serverClass: WideString; 
                        const itemId: WideString; value: OleVariant; timestamp: TDateTime; 
                        quality: DAQualities);
    function WriteItemList(const argumentsList: IList): _ElasticVector;
    procedure WriteItemValue(const machineName: WideString; const serverClass: WideString; 
                             const itemId: WideString; value: OleVariant);
    function WriteItemValueList(const argumentsList: IList): _ElasticVector;
    function WriteMultipleItems(argumentsArray: OleVariant): PSafeArray;
    function WriteMultipleItemValues(argumentsArray: OleVariant): PSafeArray;
    function PullItemChanged(millisecondsTimeout: Integer): _EasyDAItemChangedEventArgs;
    function PullItemChangeList(maximumCount: Integer; millisecondsTimeout: Integer): _ElasticVector;
    function PullMultipleItemChanges(maximumCount: Integer; millisecondsTimeout: Integer): PSafeArray;
    procedure Reset;
    property DefaultInterface: _EasyDAClient read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property AliasProvider: _AliasProvider read Get_AliasProvider write _Set_AliasProvider;
    property InstanceParameters: _EasyDAInstanceParameters read Get_InstanceParameters write _Set_InstanceParameters;
    property IsolatedParameters: _EasyDAAdaptableParameters read Get_IsolatedParameters write _Set_IsolatedParameters;
    property LicenseInfo: _StringObjectDictionary read Get_LicenseInfo;
    property SupportedTechnologies: OpcTechnologies read Get_SupportedTechnologies;
    property CustomReference: WideString read Get_CustomReference write Set_CustomReference;
    property NotificationQueueCapacity: Integer read Get_NotificationQueueCapacity write Set_NotificationQueueCapacity;
    property NotificationQueueIdleTimeToSleep: Integer read Get_NotificationQueueIdleTimeToSleep write Set_NotificationQueueIdleTimeToSleep;
    property QueueNotifications: WordBool read Get_QueueNotifications write Set_QueueNotifications;
    property Isolated: WordBool read Get_Isolated write Set_Isolated;
    property PullItemChangedQueueCapacity: Integer read Get_PullItemChangedQueueCapacity write Set_PullItemChangedQueueCapacity;
  published
    property OnEventingFailure: TEasyDAClientEventingFailure read FOnEventingFailure write FOnEventingFailure;
    property OnItemChanged: TEasyDAClientItemChanged read FOnItemChanged write FOnItemChanged;
  end;

// *********************************************************************//
// The Class CoEasyDAClientManagement provides a Create and CreateRemote method to          
// create instances of the default interface _EasyDAClientManagement exposed by              
// the CoClass EasyDAClientManagement. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyDAClientManagement = class
    class function Create: _EasyDAClientManagement;
    class function CreateRemote(const MachineName: string): _EasyDAClientManagement;
  end;

  TEasyDAClientManagementLogEntry = procedure(ASender: TObject; sender0: OleVariant; 
                                                                const eventArgs: _LogEntryEventArgs) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TEasyDAClientManagement
// Help String      : Allows static management configuration of the EasyDAClient object.
// Default Interface: _EasyDAClientManagement
// Def. Intf. DISP? : No
// Event   Interface: DEasyDAClientManagementEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TEasyDAClientManagement = class(TOleServer)
  private
    FOnLogEntry: TEasyDAClientManagementLogEntry;
    FIntf: _EasyDAClientManagement;
    function GetDefaultInterface: _EasyDAClientManagement;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_CustomReference: WideString;
    procedure Set_CustomReference(const pRetVal: WideString);
    function Get_AdaptableParameters: _EasyDAAdaptableParameters;
    procedure _Set_AdaptableParameters(const pRetVal: _EasyDAAdaptableParameters);
    function Get_ServiceProviderEndpointDescriptor: _EndpointDescriptor;
    procedure _Set_ServiceProviderEndpointDescriptor(const pRetVal: _EndpointDescriptor);
    function Get_SharedInstance: _EasyDAClient;
    function Get_SharedParameters: _EasyDASharedParameters;
    procedure _Set_SharedParameters(const pRetVal: _EasyDASharedParameters);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _EasyDAClientManagement);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    function GetService(const serviceType: _Type): OleVariant;
    function GetServiceByName(const serviceTypeName: WideString): OleVariant;
    function ValueEquals(other: OleVariant): WordBool;
    procedure BeginInit;
    procedure EndInit;
    property DefaultInterface: _EasyDAClientManagement read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property AdaptableParameters: _EasyDAAdaptableParameters read Get_AdaptableParameters write _Set_AdaptableParameters;
    property ServiceProviderEndpointDescriptor: _EndpointDescriptor read Get_ServiceProviderEndpointDescriptor write _Set_ServiceProviderEndpointDescriptor;
    property SharedInstance: _EasyDAClient read Get_SharedInstance;
    property SharedParameters: _EasyDASharedParameters read Get_SharedParameters write _Set_SharedParameters;
    property CustomReference: WideString read Get_CustomReference write Set_CustomReference;
  published
    property OnLogEntry: TEasyDAClientManagementLogEntry read FOnLogEntry write FOnLogEntry;
  end;

// *********************************************************************//
// The Class CoEasyAEClient provides a Create and CreateRemote method to          
// create instances of the default interface _EasyAEClient exposed by              
// the CoClass EasyAEClient. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyAEClient = class
    class function Create: _EasyAEClient;
    class function CreateRemote(const MachineName: string): _EasyAEClient;
  end;

  TEasyAEClientEventingFailure = procedure(ASender: TObject; sender0: OleVariant; 
                                                             const eventArgs: _FailureEventArgs) of object;
  TEasyAEClientNotification = procedure(ASender: TObject; sender0: OleVariant; 
                                                          const eventArgs: _EasyAENotificationEventArgs) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TEasyAEClient
// Help String      : The EasyAEClient object is the main object that allows simple access to OPC Alarms and Events servers.
// Default Interface: _EasyAEClient
// Def. Intf. DISP? : No
// Event   Interface: DEasyAEClientEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TEasyAEClient = class(TOleServer)
  private
    FOnEventingFailure: TEasyAEClientEventingFailure;
    FOnNotification: TEasyAEClientNotification;
    FIntf: _EasyAEClient;
    function GetDefaultInterface: _EasyAEClient;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_CustomReference: WideString;
    procedure Set_CustomReference(const pRetVal: WideString);
    function Get_NotificationQueueCapacity: Integer;
    procedure Set_NotificationQueueCapacity(pRetVal: Integer);
    function Get_NotificationQueueIdleTimeToSleep: Integer;
    procedure Set_NotificationQueueIdleTimeToSleep(pRetVal: Integer);
    function Get_QueueNotifications: WordBool;
    procedure Set_QueueNotifications(pRetVal: WordBool);
    function Get_AliasProvider: _AliasProvider;
    procedure _Set_AliasProvider(const pRetVal: _AliasProvider);
    function Get_InstanceParameters: _EasyAEInstanceParameters;
    procedure _Set_InstanceParameters(const pRetVal: _EasyAEInstanceParameters);
    function Get_Isolated: WordBool;
    procedure Set_Isolated(pRetVal: WordBool);
    function Get_IsolatedParameters: _EasyAEAdaptableParameters;
    procedure _Set_IsolatedParameters(const pRetVal: _EasyAEAdaptableParameters);
    function Get_LicenseInfo: _StringObjectDictionary;
    function Get_PullNotificationQueueCapacity: Integer;
    procedure Set_PullNotificationQueueCapacity(pRetVal: Integer);
    function Get_SupportedTechnologies: OpcTechnologies;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _EasyAEClient);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    function GetService(const serviceType: _Type): OleVariant;
    function GetServiceByName(const serviceTypeName: WideString): OleVariant;
    function ValueEquals(other: OleVariant): WordBool;
    procedure AcknowledgeCondition(serverDescriptor: OleVariant; sourceDescriptor: OleVariant; 
                                   const conditionName: WideString; activeTime: TDateTime; 
                                   cookie: Integer; const acknowledgerId: WideString; 
                                   const comment: WideString);
    function BrowseAreas(const machineName: WideString; const serverClass: WideString; 
                         const parentQualifiedName: WideString): _AENodeElementCollection;
    function BrowseNodes(serverDescriptor: OleVariant; parentNodeDescriptor: OleVariant; 
                         browseParameters: OleVariant): _AENodeElementCollection;
    function BrowseServers(const location: WideString): _ServerElementCollection;
    function BrowseSources(const machineName: WideString; const serverClass: WideString; 
                           const parentQualifiedName: WideString): _AENodeElementCollection;
    procedure ChangeEventSubscription(handle: Integer; notificationRate: Integer; 
                                      filter: OleVariant; active: WordBool);
    function GetConditionState(serverDescriptor: OleVariant; sourceDescriptor: OleVariant; 
                               const conditionName: WideString; attributes: OleVariant): _AEConditionState;
    function GetConditionStateList(serverDescriptor: OleVariant; sourceDescriptor: OleVariant; 
                                   const conditionName: WideString; const attributes: IList): _AEConditionState;
    function GetEventsSubscriptionArguments(handle: Integer): _EasyAEEventsSubscriptionArguments;
    function IsKnownEventsSubscriptionHandle(handle: Integer): WordBool;
    function QueryEventCategories(serverDescriptor: OleVariant; eventTypes: Integer): _AECategoryElementCollection;
    function QuerySourceConditions(serverDescriptor: OleVariant; sourceNodeDescriptor: OleVariant): _AEConditionElementCollection;
    procedure RefreshEventSubscription(handle: Integer);
    procedure Reset;
    function SubscribeEvents(serverDescriptor: OleVariant; subscriptionParameters: OleVariant; 
                             refreshWhenActive: WordBool; state: OleVariant): Integer;
    procedure UnsubscribeAllEvents;
    procedure UnsubscribeEvents(handle: Integer);
    function PullNotification(millisecondsTimeout: Integer): _EasyAENotificationEventArgs;
    function PullNotificationList(maximumCount: Integer; millisecondsTimeout: Integer): _ElasticVector;
    function PullMultipleNotifications(maximumCount: Integer; millisecondsTimeout: Integer): PSafeArray;
    property DefaultInterface: _EasyAEClient read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property AliasProvider: _AliasProvider read Get_AliasProvider write _Set_AliasProvider;
    property InstanceParameters: _EasyAEInstanceParameters read Get_InstanceParameters write _Set_InstanceParameters;
    property IsolatedParameters: _EasyAEAdaptableParameters read Get_IsolatedParameters write _Set_IsolatedParameters;
    property LicenseInfo: _StringObjectDictionary read Get_LicenseInfo;
    property SupportedTechnologies: OpcTechnologies read Get_SupportedTechnologies;
    property CustomReference: WideString read Get_CustomReference write Set_CustomReference;
    property NotificationQueueCapacity: Integer read Get_NotificationQueueCapacity write Set_NotificationQueueCapacity;
    property NotificationQueueIdleTimeToSleep: Integer read Get_NotificationQueueIdleTimeToSleep write Set_NotificationQueueIdleTimeToSleep;
    property QueueNotifications: WordBool read Get_QueueNotifications write Set_QueueNotifications;
    property Isolated: WordBool read Get_Isolated write Set_Isolated;
    property PullNotificationQueueCapacity: Integer read Get_PullNotificationQueueCapacity write Set_PullNotificationQueueCapacity;
  published
    property OnEventingFailure: TEasyAEClientEventingFailure read FOnEventingFailure write FOnEventingFailure;
    property OnNotification: TEasyAEClientNotification read FOnNotification write FOnNotification;
  end;

// *********************************************************************//
// The Class CoEasyAEClientManagement provides a Create and CreateRemote method to          
// create instances of the default interface _EasyAEClientManagement exposed by              
// the CoClass EasyAEClientManagement. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyAEClientManagement = class
    class function Create: _EasyAEClientManagement;
    class function CreateRemote(const MachineName: string): _EasyAEClientManagement;
  end;

  TEasyAEClientManagementLogEntry = procedure(ASender: TObject; sender0: OleVariant; 
                                                                const eventArgs: _LogEntryEventArgs) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TEasyAEClientManagement
// Help String      : Allows static management and configuration of the EasyAEClient object.
// Default Interface: _EasyAEClientManagement
// Def. Intf. DISP? : No
// Event   Interface: DEasyAEClientManagementEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TEasyAEClientManagement = class(TOleServer)
  private
    FOnLogEntry: TEasyAEClientManagementLogEntry;
    FIntf: _EasyAEClientManagement;
    function GetDefaultInterface: _EasyAEClientManagement;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_CustomReference: WideString;
    procedure Set_CustomReference(const pRetVal: WideString);
    function Get_AdaptableParameters: _EasyAEAdaptableParameters;
    procedure _Set_AdaptableParameters(const pRetVal: _EasyAEAdaptableParameters);
    function Get_SharedInstance: _EasyAEClient;
    function Get_SharedParameters: _EasyAESharedParameters;
    procedure _Set_SharedParameters(const pRetVal: _EasyAESharedParameters);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _EasyAEClientManagement);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    function GetService(const serviceType: _Type): OleVariant;
    function GetServiceByName(const serviceTypeName: WideString): OleVariant;
    function ValueEquals(other: OleVariant): WordBool;
    property DefaultInterface: _EasyAEClientManagement read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property AdaptableParameters: _EasyAEAdaptableParameters read Get_AdaptableParameters write _Set_AdaptableParameters;
    property SharedInstance: _EasyAEClient read Get_SharedInstance;
    property SharedParameters: _EasyAESharedParameters read Get_SharedParameters write _Set_SharedParameters;
    property CustomReference: WideString read Get_CustomReference write Set_CustomReference;
  published
    property OnLogEntry: TEasyAEClientManagementLogEntry read FOnLogEntry write FOnLogEntry;
  end;

// *********************************************************************//
// The Class Co_DummyClassForEasyOpcClassicCoreReference provides a Create and CreateRemote method to          
// create instances of the default interface __DummyClassForEasyOpcClassicCoreReference exposed by              
// the CoClass _DummyClassForEasyOpcClassicCoreReference. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  Co_DummyClassForEasyOpcClassicCoreReference = class
    class function Create: __DummyClassForEasyOpcClassicCoreReference;
    class function CreateRemote(const MachineName: string): __DummyClassForEasyOpcClassicCoreReference;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : T_DummyClassForEasyOpcClassicCoreReference
// Help String      : Dummy class causing a direct reference to OpcLabs.EasyOpcClassicCore type library. Needed for Delphi type library importer.
// Default Interface: __DummyClassForEasyOpcClassicCoreReference
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  T_DummyClassForEasyOpcClassicCoreReference = class(TOleServer)
  private
    FIntf: __DummyClassForEasyOpcClassicCoreReference;
    function GetDefaultInterface: __DummyClassForEasyOpcClassicCoreReference;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: __DummyClassForEasyOpcClassicCoreReference);
    procedure Disconnect; override;
    property DefaultInterface: __DummyClassForEasyOpcClassicCoreReference read GetDefaultInterface;
  published
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses System.Win.ComObj;

class function CoEasyDAClient.Create: _EasyDAClient;
begin
  Result := CreateComObject(CLASS_EasyDAClient) as _EasyDAClient;
end;

class function CoEasyDAClient.CreateRemote(const MachineName: string): _EasyDAClient;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyDAClient) as _EasyDAClient;
end;

procedure TEasyDAClient.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{6B0B5307-BCB6-4953-A832-BFCF952F7561}';
    IntfIID:   '{5D8A341A-863F-41D3-90D5-E88A714CF956}';
    EventIID:  '{39278DFA-06A0-4630-BFF3-91F66901C9DF}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TEasyDAClient.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _EasyDAClient;
  end;
end;

procedure TEasyDAClient.ConnectTo(svrIntf: _EasyDAClient);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TEasyDAClient.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TEasyDAClient.GetDefaultInterface: _EasyDAClient;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TEasyDAClient.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TEasyDAClient.Destroy;
begin
  inherited Destroy;
end;

procedure TEasyDAClient.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    1001: if Assigned(FOnEventingFailure) then
         FOnEventingFailure(Self,
                            Params[0] {OleVariant},
                            IUnknown(TVarData(Params[1]).VPointer) as _FailureEventArgs {const _FailureEventArgs});
    1002: if Assigned(FOnItemChanged) then
         FOnItemChanged(Self,
                        Params[0] {OleVariant},
                        IUnknown(TVarData(Params[1]).VPointer) as _EasyDAItemChangedEventArgs {const _EasyDAItemChangedEventArgs});
  end; {case DispID}
end;

function TEasyDAClient.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TEasyDAClient.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TEasyDAClient.Get_CustomReference: WideString;
begin
  Result := DefaultInterface.CustomReference;
end;

procedure TEasyDAClient.Set_CustomReference(const pRetVal: WideString);
begin
  DefaultInterface.CustomReference := pRetVal;
end;

function TEasyDAClient.Get_NotificationQueueCapacity: Integer;
begin
  Result := DefaultInterface.NotificationQueueCapacity;
end;

procedure TEasyDAClient.Set_NotificationQueueCapacity(pRetVal: Integer);
begin
  DefaultInterface.NotificationQueueCapacity := pRetVal;
end;

function TEasyDAClient.Get_NotificationQueueIdleTimeToSleep: Integer;
begin
  Result := DefaultInterface.NotificationQueueIdleTimeToSleep;
end;

procedure TEasyDAClient.Set_NotificationQueueIdleTimeToSleep(pRetVal: Integer);
begin
  DefaultInterface.NotificationQueueIdleTimeToSleep := pRetVal;
end;

function TEasyDAClient.Get_QueueNotifications: WordBool;
begin
  Result := DefaultInterface.QueueNotifications;
end;

procedure TEasyDAClient.Set_QueueNotifications(pRetVal: WordBool);
begin
  DefaultInterface.QueueNotifications := pRetVal;
end;

function TEasyDAClient.Get_AliasProvider: _AliasProvider;
begin
  Result := DefaultInterface.AliasProvider;
end;

procedure TEasyDAClient._Set_AliasProvider(const pRetVal: _AliasProvider);
begin
  DefaultInterface.AliasProvider := pRetVal;
end;

function TEasyDAClient.Get_InstanceParameters: _EasyDAInstanceParameters;
begin
  Result := DefaultInterface.InstanceParameters;
end;

procedure TEasyDAClient._Set_InstanceParameters(const pRetVal: _EasyDAInstanceParameters);
begin
  DefaultInterface.InstanceParameters := pRetVal;
end;

function TEasyDAClient.Get_Isolated: WordBool;
begin
  Result := DefaultInterface.Isolated;
end;

procedure TEasyDAClient.Set_Isolated(pRetVal: WordBool);
begin
  DefaultInterface.Isolated := pRetVal;
end;

function TEasyDAClient.Get_IsolatedParameters: _EasyDAAdaptableParameters;
begin
  Result := DefaultInterface.IsolatedParameters;
end;

procedure TEasyDAClient._Set_IsolatedParameters(const pRetVal: _EasyDAAdaptableParameters);
begin
  DefaultInterface.IsolatedParameters := pRetVal;
end;

function TEasyDAClient.Get_LicenseInfo: _StringObjectDictionary;
begin
  Result := DefaultInterface.LicenseInfo;
end;

function TEasyDAClient.Get_PullItemChangedQueueCapacity: Integer;
begin
  Result := DefaultInterface.PullItemChangedQueueCapacity;
end;

procedure TEasyDAClient.Set_PullItemChangedQueueCapacity(pRetVal: Integer);
begin
  DefaultInterface.PullItemChangedQueueCapacity := pRetVal;
end;

function TEasyDAClient.Get_SupportedTechnologies: OpcTechnologies;
begin
  Result := DefaultInterface.SupportedTechnologies;
end;

function TEasyDAClient.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TEasyDAClient.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TEasyDAClient.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TEasyDAClient.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

function TEasyDAClient.GetService(const serviceType: _Type): OleVariant;
begin
  Result := DefaultInterface.GetService(serviceType);
end;

function TEasyDAClient.GetServiceByName(const serviceTypeName: WideString): OleVariant;
begin
  Result := DefaultInterface.GetServiceByName(serviceTypeName);
end;

function TEasyDAClient.ValueEquals(other: OleVariant): WordBool;
begin
  Result := DefaultInterface.ValueEquals(other);
end;

function TEasyDAClient.BrowseAccessPaths(serverDescriptor: OleVariant; nodeDescriptor: OleVariant): PSafeArray;
begin
  Result := DefaultInterface.BrowseAccessPaths(serverDescriptor, nodeDescriptor);
end;

function TEasyDAClient.BrowseAccessPathList(serverDescriptor: OleVariant; nodeDescriptor: OleVariant): _ElasticVector;
begin
  Result := DefaultInterface.BrowseAccessPathList(serverDescriptor, nodeDescriptor);
end;

function TEasyDAClient.BrowseBranches(const machineName: WideString; const serverClass: WideString; 
                                      const parentItemId: WideString): _DANodeElementCollection;
begin
  Result := DefaultInterface.BrowseBranches(machineName, serverClass, parentItemId);
end;

function TEasyDAClient.BrowseLeaves(const machineName: WideString; const serverClass: WideString; 
                                    const parentItemId: WideString): _DANodeElementCollection;
begin
  Result := DefaultInterface.BrowseLeaves(machineName, serverClass, parentItemId);
end;

function TEasyDAClient.BrowseNodes(serverDescriptor: OleVariant; parentNodeDescriptor: OleVariant; 
                                   browseParameters: OleVariant): _DANodeElementCollection;
begin
  Result := DefaultInterface.BrowseNodes(serverDescriptor, parentNodeDescriptor, browseParameters);
end;

function TEasyDAClient.BrowseProperties(serverDescriptor: OleVariant; nodeDescriptor: OleVariant): _DAPropertyElementCollection;
begin
  Result := DefaultInterface.BrowseProperties(serverDescriptor, nodeDescriptor);
end;

function TEasyDAClient.BrowseServers(const location: WideString): _ServerElementCollection;
begin
  Result := DefaultInterface.BrowseServers(location);
end;

procedure TEasyDAClient.ChangeItemSubscription(handle: Integer; requestedUpdateRate: Integer);
begin
  DefaultInterface.ChangeItemSubscription(handle, requestedUpdateRate);
end;

procedure TEasyDAClient.ChangeItemSubscriptionList(const argumentsList: IList);
begin
  DefaultInterface.ChangeItemSubscriptionList(argumentsList);
end;

procedure TEasyDAClient.ChangeMultipleItemSubscriptions(argumentsArray: OleVariant);
begin
  DefaultInterface.ChangeMultipleItemSubscriptions(argumentsArray);
end;

function TEasyDAClient.GetItemSubscriptionArguments(handle: Integer): _EasyDAItemSubscriptionArguments;
begin
  Result := DefaultInterface.GetItemSubscriptionArguments(handle);
end;

function TEasyDAClient.GetMultiplePropertyValues(argumentsArray: OleVariant): PSafeArray;
begin
  Result := DefaultInterface.GetMultiplePropertyValues(argumentsArray);
end;

function TEasyDAClient.GetPropertyValue(const machineName: WideString; 
                                        const serverClass: WideString; const itemId: WideString; 
                                        propertyId: Integer): OleVariant;
begin
  Result := DefaultInterface.GetPropertyValue(machineName, serverClass, itemId, propertyId);
end;

function TEasyDAClient.GetPropertyValueList(const argumentsList: IList): _ElasticVector;
begin
  Result := DefaultInterface.GetPropertyValueList(argumentsList);
end;

function TEasyDAClient.IsKnownItemSubscriptionHandle(handle: Integer): WordBool;
begin
  Result := DefaultInterface.IsKnownItemSubscriptionHandle(handle);
end;

function TEasyDAClient.ReadItem(const machineName: WideString; const serverClass: WideString; 
                                const itemId: WideString): _DAVtq;
begin
  Result := DefaultInterface.ReadItem(machineName, serverClass, itemId);
end;

function TEasyDAClient.ReadItemList(const argumentsList: IList): _ElasticVector;
begin
  Result := DefaultInterface.ReadItemList(argumentsList);
end;

function TEasyDAClient.ReadItemValue(const machineName: WideString; const serverClass: WideString; 
                                     const itemId: WideString): OleVariant;
begin
  Result := DefaultInterface.ReadItemValue(machineName, serverClass, itemId);
end;

function TEasyDAClient.ReadItemValueList(const argumentsList: IList): _ElasticVector;
begin
  Result := DefaultInterface.ReadItemValueList(argumentsList);
end;

function TEasyDAClient.ReadMultipleItems(argumentsArray: OleVariant): PSafeArray;
begin
  Result := DefaultInterface.ReadMultipleItems(argumentsArray);
end;

function TEasyDAClient.ReadMultipleItemValues(argumentsArray: OleVariant): PSafeArray;
begin
  Result := DefaultInterface.ReadMultipleItemValues(argumentsArray);
end;

function TEasyDAClient.SubscribeItem(const machineName: WideString; const serverClass: WideString; 
                                     const itemId: WideString; requestedUpdateRate: Integer): Integer;
begin
  Result := DefaultInterface.SubscribeItem(machineName, serverClass, itemId, requestedUpdateRate);
end;

function TEasyDAClient.SubscribeItemList(const itemSubscriptionArgumentsList: IList): _ElasticVector;
begin
  Result := DefaultInterface.SubscribeItemList(itemSubscriptionArgumentsList);
end;

function TEasyDAClient.SubscribeMultipleItems(itemSubscriptionArgumentsArray: OleVariant): PSafeArray;
begin
  Result := DefaultInterface.SubscribeMultipleItems(itemSubscriptionArgumentsArray);
end;

procedure TEasyDAClient.UnsubscribeAllItems;
begin
  DefaultInterface.UnsubscribeAllItems;
end;

procedure TEasyDAClient.UnsubscribeItem(handle: Integer);
begin
  DefaultInterface.UnsubscribeItem(handle);
end;

procedure TEasyDAClient.UnsubscribeItemList(const handlesToUnsubscribe: IList);
begin
  DefaultInterface.UnsubscribeItemList(handlesToUnsubscribe);
end;

procedure TEasyDAClient.UnsubscribeMultipleItems(handlesToUnsubscribe: OleVariant);
begin
  DefaultInterface.UnsubscribeMultipleItems(handlesToUnsubscribe);
end;

function TEasyDAClient.WaitForMultipleItemValueList(const itemGroupArgumentsList: IList; 
                                                    minimumQuality: OleVariant; 
                                                    millisecondsTimeout: Integer): _ElasticVector;
begin
  Result := DefaultInterface.WaitForMultipleItemValueList(itemGroupArgumentsList, minimumQuality, 
                                                          millisecondsTimeout);
end;

function TEasyDAClient.WaitForMultipleItemValues(itemGroupArgumentsArray: OleVariant; 
                                                 minimumQuality: OleVariant; 
                                                 millisecondsTimeout: Integer): PSafeArray;
begin
  Result := DefaultInterface.WaitForMultipleItemValues(itemGroupArgumentsArray, minimumQuality, 
                                                       millisecondsTimeout);
end;

function TEasyDAClient.WaitForItemValue(const machineName: WideString; 
                                        const serverClass: WideString; const itemId: WideString; 
                                        requestedUpdateRate: Integer; millisecondsTimeout: Integer): OleVariant;
begin
  Result := DefaultInterface.WaitForItemValue(machineName, serverClass, itemId, 
                                              requestedUpdateRate, millisecondsTimeout);
end;

procedure TEasyDAClient.WriteItem(const machineName: WideString; const serverClass: WideString; 
                                  const itemId: WideString; value: OleVariant; 
                                  timestamp: TDateTime; quality: DAQualities);
begin
  DefaultInterface.WriteItem(machineName, serverClass, itemId, value, timestamp, quality);
end;

function TEasyDAClient.WriteItemList(const argumentsList: IList): _ElasticVector;
begin
  Result := DefaultInterface.WriteItemList(argumentsList);
end;

procedure TEasyDAClient.WriteItemValue(const machineName: WideString; 
                                       const serverClass: WideString; const itemId: WideString; 
                                       value: OleVariant);
begin
  DefaultInterface.WriteItemValue(machineName, serverClass, itemId, value);
end;

function TEasyDAClient.WriteItemValueList(const argumentsList: IList): _ElasticVector;
begin
  Result := DefaultInterface.WriteItemValueList(argumentsList);
end;

function TEasyDAClient.WriteMultipleItems(argumentsArray: OleVariant): PSafeArray;
begin
  Result := DefaultInterface.WriteMultipleItems(argumentsArray);
end;

function TEasyDAClient.WriteMultipleItemValues(argumentsArray: OleVariant): PSafeArray;
begin
  Result := DefaultInterface.WriteMultipleItemValues(argumentsArray);
end;

function TEasyDAClient.PullItemChanged(millisecondsTimeout: Integer): _EasyDAItemChangedEventArgs;
begin
  Result := DefaultInterface.PullItemChanged(millisecondsTimeout);
end;

function TEasyDAClient.PullItemChangeList(maximumCount: Integer; millisecondsTimeout: Integer): _ElasticVector;
begin
  Result := DefaultInterface.PullItemChangeList(maximumCount, millisecondsTimeout);
end;

function TEasyDAClient.PullMultipleItemChanges(maximumCount: Integer; millisecondsTimeout: Integer): PSafeArray;
begin
  Result := DefaultInterface.PullMultipleItemChanges(maximumCount, millisecondsTimeout);
end;

procedure TEasyDAClient.Reset;
begin
  DefaultInterface.Reset;
end;

class function CoEasyDAClientManagement.Create: _EasyDAClientManagement;
begin
  Result := CreateComObject(CLASS_EasyDAClientManagement) as _EasyDAClientManagement;
end;

class function CoEasyDAClientManagement.CreateRemote(const MachineName: string): _EasyDAClientManagement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyDAClientManagement) as _EasyDAClientManagement;
end;

procedure TEasyDAClientManagement.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{9E15DD64-80EF-4D69-85A0-C3CFECC89514}';
    IntfIID:   '{FAAC2728-8C9B-4D62-9C05-5FF3B7D3F4BC}';
    EventIID:  '{DE3C7FD8-98F1-4CAB-A246-F629F3759A92}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TEasyDAClientManagement.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _EasyDAClientManagement;
  end;
end;

procedure TEasyDAClientManagement.ConnectTo(svrIntf: _EasyDAClientManagement);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TEasyDAClientManagement.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TEasyDAClientManagement.GetDefaultInterface: _EasyDAClientManagement;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TEasyDAClientManagement.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TEasyDAClientManagement.Destroy;
begin
  inherited Destroy;
end;

procedure TEasyDAClientManagement.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    1001: if Assigned(FOnLogEntry) then
         FOnLogEntry(Self,
                     Params[0] {OleVariant},
                     IUnknown(TVarData(Params[1]).VPointer) as _LogEntryEventArgs {const _LogEntryEventArgs});
  end; {case DispID}
end;

function TEasyDAClientManagement.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TEasyDAClientManagement.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TEasyDAClientManagement.Get_CustomReference: WideString;
begin
  Result := DefaultInterface.CustomReference;
end;

procedure TEasyDAClientManagement.Set_CustomReference(const pRetVal: WideString);
begin
  DefaultInterface.CustomReference := pRetVal;
end;

function TEasyDAClientManagement.Get_AdaptableParameters: _EasyDAAdaptableParameters;
begin
  Result := DefaultInterface.AdaptableParameters;
end;

procedure TEasyDAClientManagement._Set_AdaptableParameters(const pRetVal: _EasyDAAdaptableParameters);
begin
  DefaultInterface.AdaptableParameters := pRetVal;
end;

function TEasyDAClientManagement.Get_ServiceProviderEndpointDescriptor: _EndpointDescriptor;
begin
  Result := DefaultInterface.ServiceProviderEndpointDescriptor;
end;

procedure TEasyDAClientManagement._Set_ServiceProviderEndpointDescriptor(const pRetVal: _EndpointDescriptor);
begin
  DefaultInterface.ServiceProviderEndpointDescriptor := pRetVal;
end;

function TEasyDAClientManagement.Get_SharedInstance: _EasyDAClient;
begin
  Result := DefaultInterface.SharedInstance;
end;

function TEasyDAClientManagement.Get_SharedParameters: _EasyDASharedParameters;
begin
  Result := DefaultInterface.SharedParameters;
end;

procedure TEasyDAClientManagement._Set_SharedParameters(const pRetVal: _EasyDASharedParameters);
begin
  DefaultInterface.SharedParameters := pRetVal;
end;

function TEasyDAClientManagement.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TEasyDAClientManagement.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TEasyDAClientManagement.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TEasyDAClientManagement.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

function TEasyDAClientManagement.GetService(const serviceType: _Type): OleVariant;
begin
  Result := DefaultInterface.GetService(serviceType);
end;

function TEasyDAClientManagement.GetServiceByName(const serviceTypeName: WideString): OleVariant;
begin
  Result := DefaultInterface.GetServiceByName(serviceTypeName);
end;

function TEasyDAClientManagement.ValueEquals(other: OleVariant): WordBool;
begin
  Result := DefaultInterface.ValueEquals(other);
end;

procedure TEasyDAClientManagement.BeginInit;
begin
  DefaultInterface.BeginInit;
end;

procedure TEasyDAClientManagement.EndInit;
begin
  DefaultInterface.EndInit;
end;

class function CoEasyAEClient.Create: _EasyAEClient;
begin
  Result := CreateComObject(CLASS_EasyAEClient) as _EasyAEClient;
end;

class function CoEasyAEClient.CreateRemote(const MachineName: string): _EasyAEClient;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyAEClient) as _EasyAEClient;
end;

procedure TEasyAEClient.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{3643545B-221F-4960-BF47-8A4DDEC81A67}';
    IntfIID:   '{F8A67414-B0C8-4F78-BFE5-968A7ED0E81E}';
    EventIID:  '{AAEE83E0-A730-47AE-95D1-B3748432A8AD}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TEasyAEClient.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _EasyAEClient;
  end;
end;

procedure TEasyAEClient.ConnectTo(svrIntf: _EasyAEClient);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TEasyAEClient.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TEasyAEClient.GetDefaultInterface: _EasyAEClient;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TEasyAEClient.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TEasyAEClient.Destroy;
begin
  inherited Destroy;
end;

procedure TEasyAEClient.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    1001: if Assigned(FOnEventingFailure) then
         FOnEventingFailure(Self,
                            Params[0] {OleVariant},
                            IUnknown(TVarData(Params[1]).VPointer) as _FailureEventArgs {const _FailureEventArgs});
    1002: if Assigned(FOnNotification) then
         FOnNotification(Self,
                         Params[0] {OleVariant},
                         IUnknown(TVarData(Params[1]).VPointer) as _EasyAENotificationEventArgs {const _EasyAENotificationEventArgs});
  end; {case DispID}
end;

function TEasyAEClient.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TEasyAEClient.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TEasyAEClient.Get_CustomReference: WideString;
begin
  Result := DefaultInterface.CustomReference;
end;

procedure TEasyAEClient.Set_CustomReference(const pRetVal: WideString);
begin
  DefaultInterface.CustomReference := pRetVal;
end;

function TEasyAEClient.Get_NotificationQueueCapacity: Integer;
begin
  Result := DefaultInterface.NotificationQueueCapacity;
end;

procedure TEasyAEClient.Set_NotificationQueueCapacity(pRetVal: Integer);
begin
  DefaultInterface.NotificationQueueCapacity := pRetVal;
end;

function TEasyAEClient.Get_NotificationQueueIdleTimeToSleep: Integer;
begin
  Result := DefaultInterface.NotificationQueueIdleTimeToSleep;
end;

procedure TEasyAEClient.Set_NotificationQueueIdleTimeToSleep(pRetVal: Integer);
begin
  DefaultInterface.NotificationQueueIdleTimeToSleep := pRetVal;
end;

function TEasyAEClient.Get_QueueNotifications: WordBool;
begin
  Result := DefaultInterface.QueueNotifications;
end;

procedure TEasyAEClient.Set_QueueNotifications(pRetVal: WordBool);
begin
  DefaultInterface.QueueNotifications := pRetVal;
end;

function TEasyAEClient.Get_AliasProvider: _AliasProvider;
begin
  Result := DefaultInterface.AliasProvider;
end;

procedure TEasyAEClient._Set_AliasProvider(const pRetVal: _AliasProvider);
begin
  DefaultInterface.AliasProvider := pRetVal;
end;

function TEasyAEClient.Get_InstanceParameters: _EasyAEInstanceParameters;
begin
  Result := DefaultInterface.InstanceParameters;
end;

procedure TEasyAEClient._Set_InstanceParameters(const pRetVal: _EasyAEInstanceParameters);
begin
  DefaultInterface.InstanceParameters := pRetVal;
end;

function TEasyAEClient.Get_Isolated: WordBool;
begin
  Result := DefaultInterface.Isolated;
end;

procedure TEasyAEClient.Set_Isolated(pRetVal: WordBool);
begin
  DefaultInterface.Isolated := pRetVal;
end;

function TEasyAEClient.Get_IsolatedParameters: _EasyAEAdaptableParameters;
begin
  Result := DefaultInterface.IsolatedParameters;
end;

procedure TEasyAEClient._Set_IsolatedParameters(const pRetVal: _EasyAEAdaptableParameters);
begin
  DefaultInterface.IsolatedParameters := pRetVal;
end;

function TEasyAEClient.Get_LicenseInfo: _StringObjectDictionary;
begin
  Result := DefaultInterface.LicenseInfo;
end;

function TEasyAEClient.Get_PullNotificationQueueCapacity: Integer;
begin
  Result := DefaultInterface.PullNotificationQueueCapacity;
end;

procedure TEasyAEClient.Set_PullNotificationQueueCapacity(pRetVal: Integer);
begin
  DefaultInterface.PullNotificationQueueCapacity := pRetVal;
end;

function TEasyAEClient.Get_SupportedTechnologies: OpcTechnologies;
begin
  Result := DefaultInterface.SupportedTechnologies;
end;

function TEasyAEClient.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TEasyAEClient.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TEasyAEClient.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TEasyAEClient.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

function TEasyAEClient.GetService(const serviceType: _Type): OleVariant;
begin
  Result := DefaultInterface.GetService(serviceType);
end;

function TEasyAEClient.GetServiceByName(const serviceTypeName: WideString): OleVariant;
begin
  Result := DefaultInterface.GetServiceByName(serviceTypeName);
end;

function TEasyAEClient.ValueEquals(other: OleVariant): WordBool;
begin
  Result := DefaultInterface.ValueEquals(other);
end;

procedure TEasyAEClient.AcknowledgeCondition(serverDescriptor: OleVariant; 
                                             sourceDescriptor: OleVariant; 
                                             const conditionName: WideString; 
                                             activeTime: TDateTime; cookie: Integer; 
                                             const acknowledgerId: WideString; 
                                             const comment: WideString);
begin
  DefaultInterface.AcknowledgeCondition(serverDescriptor, sourceDescriptor, conditionName, 
                                        activeTime, cookie, acknowledgerId, comment);
end;

function TEasyAEClient.BrowseAreas(const machineName: WideString; const serverClass: WideString; 
                                   const parentQualifiedName: WideString): _AENodeElementCollection;
begin
  Result := DefaultInterface.BrowseAreas(machineName, serverClass, parentQualifiedName);
end;

function TEasyAEClient.BrowseNodes(serverDescriptor: OleVariant; parentNodeDescriptor: OleVariant; 
                                   browseParameters: OleVariant): _AENodeElementCollection;
begin
  Result := DefaultInterface.BrowseNodes(serverDescriptor, parentNodeDescriptor, browseParameters);
end;

function TEasyAEClient.BrowseServers(const location: WideString): _ServerElementCollection;
begin
  Result := DefaultInterface.BrowseServers(location);
end;

function TEasyAEClient.BrowseSources(const machineName: WideString; const serverClass: WideString; 
                                     const parentQualifiedName: WideString): _AENodeElementCollection;
begin
  Result := DefaultInterface.BrowseSources(machineName, serverClass, parentQualifiedName);
end;

procedure TEasyAEClient.ChangeEventSubscription(handle: Integer; notificationRate: Integer; 
                                                filter: OleVariant; active: WordBool);
begin
  DefaultInterface.ChangeEventSubscription(handle, notificationRate, filter, active);
end;

function TEasyAEClient.GetConditionState(serverDescriptor: OleVariant; 
                                         sourceDescriptor: OleVariant; 
                                         const conditionName: WideString; attributes: OleVariant): _AEConditionState;
begin
  Result := DefaultInterface.GetConditionState(serverDescriptor, sourceDescriptor, conditionName, 
                                               attributes);
end;

function TEasyAEClient.GetConditionStateList(serverDescriptor: OleVariant; 
                                             sourceDescriptor: OleVariant; 
                                             const conditionName: WideString; 
                                             const attributes: IList): _AEConditionState;
begin
  Result := DefaultInterface.GetConditionStateList(serverDescriptor, sourceDescriptor, 
                                                   conditionName, attributes);
end;

function TEasyAEClient.GetEventsSubscriptionArguments(handle: Integer): _EasyAEEventsSubscriptionArguments;
begin
  Result := DefaultInterface.GetEventsSubscriptionArguments(handle);
end;

function TEasyAEClient.IsKnownEventsSubscriptionHandle(handle: Integer): WordBool;
begin
  Result := DefaultInterface.IsKnownEventsSubscriptionHandle(handle);
end;

function TEasyAEClient.QueryEventCategories(serverDescriptor: OleVariant; eventTypes: Integer): _AECategoryElementCollection;
begin
  Result := DefaultInterface.QueryEventCategories(serverDescriptor, eventTypes);
end;

function TEasyAEClient.QuerySourceConditions(serverDescriptor: OleVariant; 
                                             sourceNodeDescriptor: OleVariant): _AEConditionElementCollection;
begin
  Result := DefaultInterface.QuerySourceConditions(serverDescriptor, sourceNodeDescriptor);
end;

procedure TEasyAEClient.RefreshEventSubscription(handle: Integer);
begin
  DefaultInterface.RefreshEventSubscription(handle);
end;

procedure TEasyAEClient.Reset;
begin
  DefaultInterface.Reset;
end;

function TEasyAEClient.SubscribeEvents(serverDescriptor: OleVariant; 
                                       subscriptionParameters: OleVariant; 
                                       refreshWhenActive: WordBool; state: OleVariant): Integer;
begin
  Result := DefaultInterface.SubscribeEvents(serverDescriptor, subscriptionParameters, 
                                             refreshWhenActive, state);
end;

procedure TEasyAEClient.UnsubscribeAllEvents;
begin
  DefaultInterface.UnsubscribeAllEvents;
end;

procedure TEasyAEClient.UnsubscribeEvents(handle: Integer);
begin
  DefaultInterface.UnsubscribeEvents(handle);
end;

function TEasyAEClient.PullNotification(millisecondsTimeout: Integer): _EasyAENotificationEventArgs;
begin
  Result := DefaultInterface.PullNotification(millisecondsTimeout);
end;

function TEasyAEClient.PullNotificationList(maximumCount: Integer; millisecondsTimeout: Integer): _ElasticVector;
begin
  Result := DefaultInterface.PullNotificationList(maximumCount, millisecondsTimeout);
end;

function TEasyAEClient.PullMultipleNotifications(maximumCount: Integer; millisecondsTimeout: Integer): PSafeArray;
begin
  Result := DefaultInterface.PullMultipleNotifications(maximumCount, millisecondsTimeout);
end;

class function CoEasyAEClientManagement.Create: _EasyAEClientManagement;
begin
  Result := CreateComObject(CLASS_EasyAEClientManagement) as _EasyAEClientManagement;
end;

class function CoEasyAEClientManagement.CreateRemote(const MachineName: string): _EasyAEClientManagement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyAEClientManagement) as _EasyAEClientManagement;
end;

procedure TEasyAEClientManagement.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{E6D21611-6B20-4A3C-84C5-194A3C36D155}';
    IntfIID:   '{FD09B613-84E3-4DC4-8BA8-0AB6C2A0801D}';
    EventIID:  '{997848ED-916C-4253-903B-0BB63AC9995A}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TEasyAEClientManagement.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _EasyAEClientManagement;
  end;
end;

procedure TEasyAEClientManagement.ConnectTo(svrIntf: _EasyAEClientManagement);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TEasyAEClientManagement.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TEasyAEClientManagement.GetDefaultInterface: _EasyAEClientManagement;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TEasyAEClientManagement.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TEasyAEClientManagement.Destroy;
begin
  inherited Destroy;
end;

procedure TEasyAEClientManagement.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    1001: if Assigned(FOnLogEntry) then
         FOnLogEntry(Self,
                     Params[0] {OleVariant},
                     IUnknown(TVarData(Params[1]).VPointer) as _LogEntryEventArgs {const _LogEntryEventArgs});
  end; {case DispID}
end;

function TEasyAEClientManagement.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TEasyAEClientManagement.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TEasyAEClientManagement.Get_CustomReference: WideString;
begin
  Result := DefaultInterface.CustomReference;
end;

procedure TEasyAEClientManagement.Set_CustomReference(const pRetVal: WideString);
begin
  DefaultInterface.CustomReference := pRetVal;
end;

function TEasyAEClientManagement.Get_AdaptableParameters: _EasyAEAdaptableParameters;
begin
  Result := DefaultInterface.AdaptableParameters;
end;

procedure TEasyAEClientManagement._Set_AdaptableParameters(const pRetVal: _EasyAEAdaptableParameters);
begin
  DefaultInterface.AdaptableParameters := pRetVal;
end;

function TEasyAEClientManagement.Get_SharedInstance: _EasyAEClient;
begin
  Result := DefaultInterface.SharedInstance;
end;

function TEasyAEClientManagement.Get_SharedParameters: _EasyAESharedParameters;
begin
  Result := DefaultInterface.SharedParameters;
end;

procedure TEasyAEClientManagement._Set_SharedParameters(const pRetVal: _EasyAESharedParameters);
begin
  DefaultInterface.SharedParameters := pRetVal;
end;

function TEasyAEClientManagement.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TEasyAEClientManagement.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TEasyAEClientManagement.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TEasyAEClientManagement.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

function TEasyAEClientManagement.GetService(const serviceType: _Type): OleVariant;
begin
  Result := DefaultInterface.GetService(serviceType);
end;

function TEasyAEClientManagement.GetServiceByName(const serviceTypeName: WideString): OleVariant;
begin
  Result := DefaultInterface.GetServiceByName(serviceTypeName);
end;

function TEasyAEClientManagement.ValueEquals(other: OleVariant): WordBool;
begin
  Result := DefaultInterface.ValueEquals(other);
end;

class function Co_DummyClassForEasyOpcClassicCoreReference.Create: __DummyClassForEasyOpcClassicCoreReference;
begin
  Result := CreateComObject(CLASS__DummyClassForEasyOpcClassicCoreReference) as __DummyClassForEasyOpcClassicCoreReference;
end;

class function Co_DummyClassForEasyOpcClassicCoreReference.CreateRemote(const MachineName: string): __DummyClassForEasyOpcClassicCoreReference;
begin
  Result := CreateRemoteComObject(MachineName, CLASS__DummyClassForEasyOpcClassicCoreReference) as __DummyClassForEasyOpcClassicCoreReference;
end;

procedure T_DummyClassForEasyOpcClassicCoreReference.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{9FEF1024-EEB4-3BD4-8A5C-B2D36AA99079}';
    IntfIID:   '{CD0E6599-7572-35BC-969D-EE8A738710E9}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure T_DummyClassForEasyOpcClassicCoreReference.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as __DummyClassForEasyOpcClassicCoreReference;
  end;
end;

procedure T_DummyClassForEasyOpcClassicCoreReference.ConnectTo(svrIntf: __DummyClassForEasyOpcClassicCoreReference);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure T_DummyClassForEasyOpcClassicCoreReference.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function T_DummyClassForEasyOpcClassicCoreReference.GetDefaultInterface: __DummyClassForEasyOpcClassicCoreReference;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor T_DummyClassForEasyOpcClassicCoreReference.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor T_DummyClassForEasyOpcClassicCoreReference.Destroy;
begin
  inherited Destroy;
end;

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TEasyDAClient, TEasyDAClientManagement, TEasyAEClient, TEasyAEClientManagement, 
    T_DummyClassForEasyOpcClassicCoreReference]);
end;

end.
