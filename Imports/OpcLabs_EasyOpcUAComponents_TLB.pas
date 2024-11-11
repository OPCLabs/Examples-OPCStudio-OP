unit OpcLabs_EasyOpcUAComponents_TLB;

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
// File generated on 11/3/2024 2:19:50 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\OPC Labs OPC Studio 2024.2\SDK\lib\OpcLabs.EasyOpcUAComponents.tlb (1)
// LIBID: {5346E434-17C3-4D23-AD1F-43F7B92B2468}
// LCID: 0
// Helpfile: 
// HelpString: OPC Labs EasyOPC-UA Components Library
// DepndLst: 
//   (1) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
//   (2) v2.4 System, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.tlb)
//   (3) v5.81 OpcLabs_BaseLib, (C:\Program Files (x86)\OPC Labs OPC Studio 2024.2\SDK\lib\OpcLabs.BaseLib.tlb)
//   (4) v5.81 OpcLabs_EasyOpcUA, (C:\Program Files (x86)\OPC Labs OPC Studio 2024.2\SDK\lib\OpcLabs.EasyOpcUA.tlb)
//   (5) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, mscorlib_TLB, OpcLabs_BaseLib_TLB, OpcLabs_EasyOpcUA_TLB, System.Classes, System.Variants, System.Win.StdVCL, System_TLB, 
Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  OpcLabs_EasyOpcUAComponentsMajorVersion = 5;
  OpcLabs_EasyOpcUAComponentsMinorVersion = 81;

  LIBID_OpcLabs_EasyOpcUAComponents: TGUID = '{5346E434-17C3-4D23-AD1F-43F7B92B2468}';

  CLASS_EasyUAClientManagement: TGUID = '{4F0F5C25-2E2B-406F-9526-75F35F90C87F}';
  CLASS_EasyUAClient: TGUID = '{54AFB0EA-9809-4D1D-AFBE-0EC164C59A45}';
  CLASS_EasyUASubscriberManagement: TGUID = '{D272C305-B47E-4B3D-ACD8-CD21635756E4}';
  CLASS_EasyUASubscriber: TGUID = '{EDC1F10E-3FC6-4604-9BC6-4FFF579D271A}';
  CLASS_EasyUAPublishSubscribeClient: TGUID = '{0CBFF3B4-A000-445F-A931-9AFAA496A234}';
  CLASS_EasyUACertificateManagementClient: TGUID = '{77433805-E74B-4DD3-ADD5-864622DE9614}';
  CLASS_EasyUAGlobalDiscoveryClient: TGUID = '{FB120EFE-125F-48F5-8718-5B508A44A619}';
  CLASS_EasyUAApplication: TGUID = '{0F6BE934-443D-4037-A4E8-E4F4A64394BC}';
  CLASS_EasyUAAlarmsAndConditionsClient: TGUID = '{BDE0A98B-801E-4A29-9428-946B7378E803}';
type

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  EasyUAClientManagement = _EasyUAClientManagement;
  EasyUAClient = _EasyUAClient;
  EasyUASubscriberManagement = _EasyUASubscriberManagement;
  EasyUASubscriber = _EasyUASubscriber;
  EasyUAPublishSubscribeClient = _EasyUAPublishSubscribeClient;
  EasyUACertificateManagementClient = _EasyUACertificateManagementClient;
  EasyUAGlobalDiscoveryClient = _EasyUAGlobalDiscoveryClient;
  EasyUAApplication = _EasyUAApplication;
  EasyUAAlarmsAndConditionsClient = _EasyUAAlarmsAndConditionsClient;


// *********************************************************************//
// The Class CoEasyUAClientManagement provides a Create and CreateRemote method to          
// create instances of the default interface _EasyUAClientManagement exposed by              
// the CoClass EasyUAClientManagement. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyUAClientManagement = class
    class function Create: _EasyUAClientManagement;
    class function CreateRemote(const MachineName: string): _EasyUAClientManagement;
  end;

  TEasyUAClientManagementLogEntry = procedure(ASender: TObject; sender0: OleVariant; 
                                                                const eventArgs: _LogEntryEventArgs) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TEasyUAClientManagement
// Help String      : Allows static management and configuration of the EasyUAClient object.
// Default Interface: _EasyUAClientManagement
// Def. Intf. DISP? : No
// Event   Interface: DEasyUAClientManagementEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TEasyUAClientManagement = class(TOleServer)
  private
    FOnLogEntry: TEasyUAClientManagementLogEntry;
    FIntf: _EasyUAClientManagement;
    function GetDefaultInterface: _EasyUAClientManagement;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_CustomReference: WideString;
    procedure Set_CustomReference(const pRetVal: WideString);
    function Get_AdaptableParameters: _EasyUAClientAdaptableParameters;
    procedure _Set_AdaptableParameters(const pRetVal: _EasyUAClientAdaptableParameters);
    function Get_SharedInstance: _EasyUAClient;
    function Get_SharedParameters: _EasyUAClientSharedParameters;
    procedure _Set_SharedParameters(const pRetVal: _EasyUAClientSharedParameters);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _EasyUAClientManagement);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    function GetService(const serviceType: _Type): OleVariant;
    function GetServiceByName(const serviceTypeName: WideString): OleVariant;
    function ValueEquals(other: OleVariant): WordBool;
    property DefaultInterface: _EasyUAClientManagement read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property AdaptableParameters: _EasyUAClientAdaptableParameters read Get_AdaptableParameters write _Set_AdaptableParameters;
    property SharedInstance: _EasyUAClient read Get_SharedInstance;
    property SharedParameters: _EasyUAClientSharedParameters read Get_SharedParameters write _Set_SharedParameters;
    property CustomReference: WideString read Get_CustomReference write Set_CustomReference;
  published
    property OnLogEntry: TEasyUAClientManagementLogEntry read FOnLogEntry write FOnLogEntry;
  end;

// *********************************************************************//
// The Class CoEasyUAClient provides a Create and CreateRemote method to          
// create instances of the default interface _EasyUAClient exposed by              
// the CoClass EasyUAClient. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyUAClient = class
    class function Create: _EasyUAClient;
    class function CreateRemote(const MachineName: string): _EasyUAClient;
  end;

  TEasyUAClientDataChangeNotification = procedure(ASender: TObject; sender0: OleVariant; 
                                                                    const eventArgs: _EasyUADataChangeNotificationEventArgs) of object;
  TEasyUAClientEventingFailure = procedure(ASender: TObject; sender0: OleVariant; 
                                                             const eventArgs: _FailureEventArgs) of object;
  TEasyUAClientEventNotification = procedure(ASender: TObject; sender0: OleVariant; 
                                                               const eventArgs: _EasyUAEventNotificationEventArgs) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TEasyUAClient
// Help String      : The EasyUAClient object is the main object that allows simple access to OPC Unified Architecture servers.
// Default Interface: _EasyUAClient
// Def. Intf. DISP? : No
// Event   Interface: DEasyUAClientEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TEasyUAClient = class(TOleServer)
  private
    FOnDataChangeNotification: TEasyUAClientDataChangeNotification;
    FOnEventingFailure: TEasyUAClientEventingFailure;
    FOnEventNotification: TEasyUAClientEventNotification;
    FIntf: _EasyUAClient;
    function GetDefaultInterface: _EasyUAClient;
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
    function Get_InstanceParameters: _EasyUAClientInstanceParameters;
    procedure _Set_InstanceParameters(const pRetVal: _EasyUAClientInstanceParameters);
    function Get_Isolated: WordBool;
    procedure Set_Isolated(pRetVal: WordBool);
    function Get_IsolatedParameters: _EasyUAClientAdaptableParameters;
    procedure _Set_IsolatedParameters(const pRetVal: _EasyUAClientAdaptableParameters);
    function Get_LicenseInfo: _StringObjectDictionary;
    function Get_PullDataChangeNotificationQueueCapacity: Integer;
    procedure Set_PullDataChangeNotificationQueueCapacity(pRetVal: Integer);
    function Get_PullEventNotificationQueueCapacity: Integer;
    procedure Set_PullEventNotificationQueueCapacity(pRetVal: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _EasyUAClient);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    function GetService(const serviceType: _Type): OleVariant;
    function GetServiceByName(const serviceTypeName: WideString): OleVariant;
    function ValueEquals(other: OleVariant): WordBool;
    function AsAlarmsAndConditionsClient: _EasyUAAlarmsAndConditionsClient;
    function AsCertificateManagementClient: _EasyUACertificateManagementClient;
    function AsGlobalDiscoveryClient: _EasyUAGlobalDiscoveryClient;
    function AsPublishSubscribeClient: _EasyUAPublishSubscribeClient;
    function BrowseDataNodes(const endpointDescriptorString: WideString; 
                             const nodeDescriptorString: WideString): _UANodeElementCollection;
    function BrowseDataVariables(const endpointDescriptorString: WideString; 
                                 const nodeDescriptorString: WideString): _UANodeElementCollection;
    function BrowseEventSources(const endpointDescriptorString: WideString; 
                                const nodeDescriptorString: WideString): _UANodeElementCollection;
    function BrowseList(const browseNodesArgumentsList: IList): _ElasticVector;
    function BrowseMethods(const endpointDescriptorString: WideString; 
                           const nodeDescriptorString: WideString): _UANodeElementCollection;
    function BrowseMultiple(browseNodesArgumentsArray: OleVariant): PSafeArray;
    function Browse(endpointDescriptor: OleVariant; NodeDescriptor: OleVariant; 
                    BrowseParameters: OleVariant): _UANodeElementCollection;
    function BrowseNotifiers(const endpointDescriptorString: WideString; 
                             const nodeDescriptorString: WideString): _UANodeElementCollection;
    function BrowseObjects(const endpointDescriptorString: WideString; 
                           const nodeDescriptorString: WideString): _UANodeElementCollection;
    function BrowseProperties(const endpointDescriptorString: WideString; 
                              const nodeDescriptorString: WideString): _UANodeElementCollection;
    function BrowseVariables(const endpointDescriptorString: WideString; 
                             const nodeDescriptorString: WideString): _UANodeElementCollection;
    function CallMethod(const endpointDescriptorString: WideString; 
                        const objectNodeDescriptorString: WideString; 
                        const methodNodeDescriptorString: WideString; InputArguments: OleVariant; 
                        InputTypeCodes: OleVariant): PSafeArray;
    function CallMethodList(const callArgumentsList: IList): _ElasticVector;
    function CallMultipleMethods(callArgumentsArray: OleVariant): PSafeArray;
    procedure ChangeMonitoredItemSubscription(Handle: Integer; samplingInterval: Integer);
    procedure ChangeMonitoredItemSubscriptionList(const subscriptionChangeArgumentsList: IList);
    procedure ChangeMultipleMonitoredItemSubscriptions(subscriptionChangeArgumentsArray: OleVariant);
    function Discover(discoveryQuery: OleVariant): _UADiscoveryElementCollection;
    function DiscoverLocalServers(const DiscoveryHost: WideString): _UADiscoveryElementCollection;
    function DiscoverNetworkServers(ServerCapabilityFilter: OleVariant; 
                                    const DiscoveryHost: WideString): _UADiscoveryElementCollection;
    function FindLocalApplications(discoveryUriStringArray: OleVariant; 
                                   applicationTypes: UAApplicationTypes): _UADiscoveryElementCollection;
    function GetMonitoredItemArguments(Handle: Integer): _EasyUAMonitoredItemArguments;
    function GetMonitoredItemArgumentsDictionary: _EasyUAMonitoredItemArgumentsDictionary;
    function IsKnownMonitoredItemSubscriptionHandle(Handle: Integer): WordBool;
    function PullDataChangeNotification(millisecondsTimeout: Integer): _EasyUADataChangeNotificationEventArgs;
    function PullDataChangeNotificationList(maximumCount: Integer; millisecondsTimeout: Integer): _ElasticVector;
    function PullEventNotification(millisecondsTimeout: Integer): _EasyUAEventNotificationEventArgs;
    function PullEventNotificationList(maximumCount: Integer; millisecondsTimeout: Integer): _ElasticVector;
    function PullMultipleDataChangeNotifications(maximumCount: Integer; millisecondsTimeout: Integer): PSafeArray;
    function PullMultipleEventNotifications(maximumCount: Integer; millisecondsTimeout: Integer): PSafeArray;
    function DiscoverGlobalApplications(const gdsEndpointDescriptorString: WideString; 
                                        QueryApplicationsFilter: OleVariant): _UADiscoveryElementCollection;
    function DiscoverGlobalServers(const gdsEndpointDescriptorString: WideString): _UADiscoveryElementCollection;
    function Read(const endpointDescriptorString: WideString; const nodeDescriptorString: WideString): _UAAttributeData;
    function ReadList(const readArgumentsList: IList): _ElasticVector;
    function ReadMultiple(readArgumentsArray: OleVariant): PSafeArray;
    function ReadMultipleValues(readArgumentsArray: OleVariant): PSafeArray;
    function ReadValue(const endpointDescriptorString: WideString; 
                       const nodeDescriptorString: WideString): OleVariant;
    function ReadValueList(const readArgumentsList: IList): _ElasticVector;
    procedure Reset;
    function SubscribeDataChange(const endpointDescriptorString: WideString; 
                                 const nodeDescriptorString: WideString; samplingInterval: Integer): Integer;
    function SubscribeEvent(const endpointDescriptorString: WideString; 
                            const nodeDescriptorString: WideString; samplingInterval: Integer): Integer;
    function SubscribeMonitoredItemList(const monitoredItemArgumentsList: IList): _ElasticVector;
    function SubscribeMultipleMonitoredItems(monitoredItemArgumentsArray: OleVariant): PSafeArray;
    procedure UnsubscribeAllMonitoredItems;
    procedure UnsubscribeMonitoredItem(Handle: Integer);
    procedure UnsubscribeMonitoredItemList(const handlesToUnsubscribeList: IList);
    procedure UnsubscribeMultipleMonitoredItems(handlesToUnsubscribeArray: OleVariant);
    procedure Write(const endpointDescriptorString: WideString; 
                    const nodeDescriptorString: WideString; AttributeData: OleVariant);
    function WriteList(const writeArgumentsList: IList): _ElasticVector;
    function WriteMultiple(writeArgumentsArray: OleVariant): PSafeArray;
    function WriteMultipleValues(writeValueArgumentsArray: OleVariant): PSafeArray;
    procedure WriteValue(const endpointDescriptorString: WideString; 
                         const nodeDescriptorString: WideString; value: OleVariant);
    function WriteValueList(const writeValueArgumentsList: IList): _ElasticVector;
    property DefaultInterface: _EasyUAClient read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property AliasProvider: _AliasProvider read Get_AliasProvider write _Set_AliasProvider;
    property InstanceParameters: _EasyUAClientInstanceParameters read Get_InstanceParameters write _Set_InstanceParameters;
    property IsolatedParameters: _EasyUAClientAdaptableParameters read Get_IsolatedParameters write _Set_IsolatedParameters;
    property LicenseInfo: _StringObjectDictionary read Get_LicenseInfo;
    property CustomReference: WideString read Get_CustomReference write Set_CustomReference;
    property NotificationQueueCapacity: Integer read Get_NotificationQueueCapacity write Set_NotificationQueueCapacity;
    property NotificationQueueIdleTimeToSleep: Integer read Get_NotificationQueueIdleTimeToSleep write Set_NotificationQueueIdleTimeToSleep;
    property QueueNotifications: WordBool read Get_QueueNotifications write Set_QueueNotifications;
    property Isolated: WordBool read Get_Isolated write Set_Isolated;
    property PullDataChangeNotificationQueueCapacity: Integer read Get_PullDataChangeNotificationQueueCapacity write Set_PullDataChangeNotificationQueueCapacity;
    property PullEventNotificationQueueCapacity: Integer read Get_PullEventNotificationQueueCapacity write Set_PullEventNotificationQueueCapacity;
  published
    property OnDataChangeNotification: TEasyUAClientDataChangeNotification read FOnDataChangeNotification write FOnDataChangeNotification;
    property OnEventingFailure: TEasyUAClientEventingFailure read FOnEventingFailure write FOnEventingFailure;
    property OnEventNotification: TEasyUAClientEventNotification read FOnEventNotification write FOnEventNotification;
  end;

// *********************************************************************//
// The Class CoEasyUASubscriberManagement provides a Create and CreateRemote method to          
// create instances of the default interface _EasyUASubscriberManagement exposed by              
// the CoClass EasyUASubscriberManagement. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyUASubscriberManagement = class
    class function Create: _EasyUASubscriberManagement;
    class function CreateRemote(const MachineName: string): _EasyUASubscriberManagement;
  end;

  TEasyUASubscriberManagementLogEntry = procedure(ASender: TObject; sender0: OleVariant; 
                                                                    const eventArgs: _LogEntryEventArgs) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TEasyUASubscriberManagement
// Help String      : Allows static management and configuration of the EasyUASubscriber object.
// Default Interface: _EasyUASubscriberManagement
// Def. Intf. DISP? : No
// Event   Interface: DEasyUASubscriberManagementEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TEasyUASubscriberManagement = class(TOleServer)
  private
    FOnLogEntry: TEasyUASubscriberManagementLogEntry;
    FIntf: _EasyUASubscriberManagement;
    function GetDefaultInterface: _EasyUASubscriberManagement;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_CustomReference: WideString;
    procedure Set_CustomReference(const pRetVal: WideString);
    function Get_AdaptableParameters: _EasyUASubscriberAdaptableParameters;
    procedure _Set_AdaptableParameters(const pRetVal: _EasyUASubscriberAdaptableParameters);
    function Get_SharedInstance: _EasyUASubscriber;
    function Get_SharedParameters: _EasyUASubscriberSharedParameters;
    procedure _Set_SharedParameters(const pRetVal: _EasyUASubscriberSharedParameters);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _EasyUASubscriberManagement);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    function GetService(const serviceType: _Type): OleVariant;
    function GetServiceByName(const serviceTypeName: WideString): OleVariant;
    function ValueEquals(other: OleVariant): WordBool;
    property DefaultInterface: _EasyUASubscriberManagement read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property AdaptableParameters: _EasyUASubscriberAdaptableParameters read Get_AdaptableParameters write _Set_AdaptableParameters;
    property SharedInstance: _EasyUASubscriber read Get_SharedInstance;
    property SharedParameters: _EasyUASubscriberSharedParameters read Get_SharedParameters write _Set_SharedParameters;
    property CustomReference: WideString read Get_CustomReference write Set_CustomReference;
  published
    property OnLogEntry: TEasyUASubscriberManagementLogEntry read FOnLogEntry write FOnLogEntry;
  end;

// *********************************************************************//
// The Class CoEasyUASubscriber provides a Create and CreateRemote method to          
// create instances of the default interface _EasyUASubscriber exposed by              
// the CoClass EasyUASubscriber. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyUASubscriber = class
    class function Create: _EasyUASubscriber;
    class function CreateRemote(const MachineName: string): _EasyUASubscriber;
  end;

  TEasyUASubscriberDataSetMessage = procedure(ASender: TObject; sender0: OleVariant; 
                                                                const eventArgs: _EasyUADataSetMessageEventArgs) of object;
  TEasyUASubscriberEventingFailure = procedure(ASender: TObject; sender0: OleVariant; 
                                                                 const eventArgs: _FailureEventArgs) of object;
  TEasyUASubscriberResolverAccess = procedure(ASender: TObject; sender0: OleVariant; 
                                                                const eventArgs: _EasyUAResolverAccessEventArgs) of object;
  TEasyUASubscriberSubscriptionResolved = procedure(ASender: TObject; sender0: OleVariant; 
                                                                      const eventArgs: _EasyUASubscriptionResolvedEventArgs) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TEasyUASubscriber
// Help String      : The EasyUASubscriber object is the main object that allows simple access to OPC-UA PubSub publishers.
// Default Interface: _EasyUASubscriber
// Def. Intf. DISP? : No
// Event   Interface: DEasyUASubscriberEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TEasyUASubscriber = class(TOleServer)
  private
    FOnDataSetMessage: TEasyUASubscriberDataSetMessage;
    FOnEventingFailure: TEasyUASubscriberEventingFailure;
    FOnResolverAccess: TEasyUASubscriberResolverAccess;
    FOnSubscriptionResolved: TEasyUASubscriberSubscriptionResolved;
    FIntf: _EasyUASubscriber;
    function GetDefaultInterface: _EasyUASubscriber;
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
    function Get_InstanceParameters: _EasyUASubscriberInstanceParameters;
    procedure _Set_InstanceParameters(const pRetVal: _EasyUASubscriberInstanceParameters);
    function Get_Isolated: WordBool;
    procedure Set_Isolated(pRetVal: WordBool);
    function Get_IsolatedParameters: _EasyUASubscriberAdaptableParameters;
    procedure _Set_IsolatedParameters(const pRetVal: _EasyUASubscriberAdaptableParameters);
    function Get_LicenseInfo: _StringObjectDictionary;
    function Get_PullDataSetMessageQueueCapacity: Integer;
    procedure Set_PullDataSetMessageQueueCapacity(pRetVal: Integer);
    function Get_PullResolverAccessQueueCapacity: Integer;
    procedure Set_PullResolverAccessQueueCapacity(pRetVal: Integer);
    function Get_PullSubscriptionResolvedQueueCapacity: Integer;
    procedure Set_PullSubscriptionResolvedQueueCapacity(pRetVal: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _EasyUASubscriber);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    function GetService(const serviceType: _Type): OleVariant;
    function GetServiceByName(const serviceTypeName: WideString): OleVariant;
    function ValueEquals(other: OleVariant): WordBool;
    procedure ChangeDataSetSubscription(dataSetSubscriptionChangeArguments: OleVariant);
    function GetSubscribeDataSetArguments(dataSetHandle: Integer): _EasyUASubscribeDataSetArguments;
    function GetSubscribeDataSetArgumentsDictionary: _EasyUASubscribeDataSetArgumentsDictionary;
    function IsKnownDataSetSubscriptionHandle(dataSetHandle: Integer): WordBool;
    function PullDataSetMessage(millisecondsTimeout: Integer): _EasyUADataSetMessageEventArgs;
    function PullDataSetMessageList(maximumCount: Integer; millisecondsTimeout: Integer): _ElasticVector;
    function PullMultipleDataSetMessages(maximumCount: Integer; millisecondsTimeout: Integer): PSafeArray;
    function PullMultipleResolverAccesses(maximumCount: Integer; millisecondsTimeout: Integer): PSafeArray;
    function PullMultipleSubscriptionResolvedNotifications(maximumCount: Integer; 
                                                           millisecondsTimeout: Integer): PSafeArray;
    function PullResolverAccess(millisecondsTimeout: Integer): _EasyUAResolverAccessEventArgs;
    function PullResolverAccessList(maximumCount: Integer; millisecondsTimeout: Integer): _ElasticVector;
    function PullSubscriptionResolved(millisecondsTimeout: Integer): _EasyUASubscriptionResolvedEventArgs;
    function PullSubscriptionResolvedList(maximumCount: Integer; millisecondsTimeout: Integer): _ElasticVector;
    procedure Reset;
    function SubscribeDataSet(subscribeDataSetArguments: OleVariant): Integer;
    procedure UnsubscribeAllDataSets;
    procedure UnsubscribeDataSet(dataSetHandle: Integer);
    property DefaultInterface: _EasyUASubscriber read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property AliasProvider: _AliasProvider read Get_AliasProvider write _Set_AliasProvider;
    property InstanceParameters: _EasyUASubscriberInstanceParameters read Get_InstanceParameters write _Set_InstanceParameters;
    property IsolatedParameters: _EasyUASubscriberAdaptableParameters read Get_IsolatedParameters write _Set_IsolatedParameters;
    property LicenseInfo: _StringObjectDictionary read Get_LicenseInfo;
    property CustomReference: WideString read Get_CustomReference write Set_CustomReference;
    property NotificationQueueCapacity: Integer read Get_NotificationQueueCapacity write Set_NotificationQueueCapacity;
    property NotificationQueueIdleTimeToSleep: Integer read Get_NotificationQueueIdleTimeToSleep write Set_NotificationQueueIdleTimeToSleep;
    property QueueNotifications: WordBool read Get_QueueNotifications write Set_QueueNotifications;
    property Isolated: WordBool read Get_Isolated write Set_Isolated;
    property PullDataSetMessageQueueCapacity: Integer read Get_PullDataSetMessageQueueCapacity write Set_PullDataSetMessageQueueCapacity;
    property PullResolverAccessQueueCapacity: Integer read Get_PullResolverAccessQueueCapacity write Set_PullResolverAccessQueueCapacity;
    property PullSubscriptionResolvedQueueCapacity: Integer read Get_PullSubscriptionResolvedQueueCapacity write Set_PullSubscriptionResolvedQueueCapacity;
  published
    property OnDataSetMessage: TEasyUASubscriberDataSetMessage read FOnDataSetMessage write FOnDataSetMessage;
    property OnEventingFailure: TEasyUASubscriberEventingFailure read FOnEventingFailure write FOnEventingFailure;
    property OnResolverAccess: TEasyUASubscriberResolverAccess read FOnResolverAccess write FOnResolverAccess;
    property OnSubscriptionResolved: TEasyUASubscriberSubscriptionResolved read FOnSubscriptionResolved write FOnSubscriptionResolved;
  end;

// *********************************************************************//
// The Class CoEasyUAPublishSubscribeClient provides a Create and CreateRemote method to          
// create instances of the default interface _EasyUAPublishSubscribeClient exposed by              
// the CoClass EasyUAPublishSubscribeClient. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyUAPublishSubscribeClient = class
    class function Create: _EasyUAPublishSubscribeClient;
    class function CreateRemote(const MachineName: string): _EasyUAPublishSubscribeClient;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TEasyUAPublishSubscribeClient
// Help String      : A specialized OPC UA client object for PubSub.
// Default Interface: _EasyUAPublishSubscribeClient
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TEasyUAPublishSubscribeClient = class(TOleServer)
  private
    FIntf: _EasyUAPublishSubscribeClient;
    function GetDefaultInterface: _EasyUAPublishSubscribeClient;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_CustomReference: WideString;
    procedure Set_CustomReference(const pRetVal: WideString);
    function Get_ClientSelector: _EasyUAClientSelector;
    procedure _Set_ClientSelector(const pRetVal: _EasyUAClientSelector);
    function Get_IsDerived: WordBool;
    function Get_UAEncodedReadOnlyConfigurationLoader: _StreamLoader;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _EasyUAPublishSubscribeClient);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    function GetService(const serviceType: _Type): OleVariant;
    function GetServiceByName(const serviceTypeName: WideString): OleVariant;
    function ValueEquals(other: OleVariant): WordBool;
    function AsClient: _EasyUAClient;
    function AccessOrLoadReadOnlyConfiguration(endpointDescriptor: OleVariant; 
                                               pubSubConfigurationAccessMethod: UAPubSubConfigurationAccessMethod): _UAReadOnlyPubSubConfiguration;
    function AccessReadOnlyConfiguration(endpointDescriptor: OleVariant): _UAReadOnlyPubSubConfiguration;
    function AccessReadOnlySecurityKeyService(endpointDescriptor: OleVariant): _UAReadOnlyPubSubSecurityKeyService;
    function AccessSecurityKeyService(endpointDescriptor: OleVariant): _UAPubSubSecurityKeyService;
    function GetPublishSubscribeElement(endpointDescriptor: OleVariant): _UAPublishSubscribeElement;
    function HasConfigurationFileNode(endpointDescriptor: OleVariant): WordBool;
    function HasConfigurationModel(endpointDescriptor: OleVariant): WordBool;
    function HasSecurityKeyServiceModel(endpointDescriptor: OleVariant): WordBool;
    function LoadReadOnlyConfiguration(const filePathAndName: WideString): _UAReadOnlyPubSubConfiguration;
    function LoadReadOnlyConfigurationFromFileNode(endpointDescriptor: OleVariant): _UAReadOnlyPubSubConfiguration;
    property DefaultInterface: _EasyUAPublishSubscribeClient read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ClientSelector: _EasyUAClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property IsDerived: WordBool read Get_IsDerived;
    property UAEncodedReadOnlyConfigurationLoader: _StreamLoader read Get_UAEncodedReadOnlyConfigurationLoader;
    property CustomReference: WideString read Get_CustomReference write Set_CustomReference;
  published
  end;

// *********************************************************************//
// The Class CoEasyUACertificateManagementClient provides a Create and CreateRemote method to          
// create instances of the default interface _EasyUACertificateManagementClient exposed by              
// the CoClass EasyUACertificateManagementClient. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyUACertificateManagementClient = class
    class function Create: _EasyUACertificateManagementClient;
    class function CreateRemote(const MachineName: string): _EasyUACertificateManagementClient;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TEasyUACertificateManagementClient
// Help String      : A specialized OPC UA client object for certificate management.
// Default Interface: _EasyUACertificateManagementClient
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TEasyUACertificateManagementClient = class(TOleServer)
  private
    FIntf: _EasyUACertificateManagementClient;
    function GetDefaultInterface: _EasyUACertificateManagementClient;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_CustomReference: WideString;
    procedure Set_CustomReference(const pRetVal: WideString);
    function Get_ClientSelector: _EasyUAClientSelector;
    procedure _Set_ClientSelector(const pRetVal: _EasyUAClientSelector);
    function Get_IsDerived: WordBool;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _EasyUACertificateManagementClient);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    function GetService(const serviceType: _Type): OleVariant;
    function GetServiceByName(const serviceTypeName: WideString): OleVariant;
    function ValueEquals(other: OleVariant): WordBool;
    function AsClient: _EasyUAClient;
    function BrowseCertificateGroups(gdsEndpointDescriptor: OleVariant): _UACertificateGroupElementCollection;
    procedure FinishRequest(gdsEndpointDescriptor: OleVariant; applicationId: OleVariant; 
                            requestId: OleVariant; out certificate: OleVariant; 
                            out privateKey: OleVariant; out issuerCertificateArray: OleVariant);
    function GetCertificateGroupElement(gdsEndpointDescriptor: OleVariant; 
                                        certificateGroupId: OleVariant): _UACertificateGroupElement;
    function GetCertificateGroupIds(gdsEndpointDescriptor: OleVariant; applicationId: OleVariant): PSafeArray;
    function GetCertificateStatus(gdsEndpointDescriptor: OleVariant; applicationId: OleVariant; 
                                  certificateGroupId: OleVariant; certificateTypeId: OleVariant): WordBool;
    function GetTrustList(gdsEndpointDescriptor: OleVariant; applicationId: OleVariant; 
                          certificateGroupId: OleVariant): _UANodeId;
    function StartNewKeyPairRequest(gdsEndpointDescriptor: OleVariant; applicationId: OleVariant; 
                                    certificateGroupId: OleVariant; certificateTypeId: OleVariant; 
                                    const subjectName: WideString; domainNames: OleVariant; 
                                    const privateKeyFormat: WideString; 
                                    const privateKeyPassword: WideString): _UANodeId;
    function StartSigningRequest(gdsEndpointDescriptor: OleVariant; applicationId: OleVariant; 
                                 certificateGroupId: OleVariant; certificateTypeId: OleVariant; 
                                 certificateRequest: OleVariant): _UANodeId;
    property DefaultInterface: _EasyUACertificateManagementClient read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ClientSelector: _EasyUAClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property IsDerived: WordBool read Get_IsDerived;
    property CustomReference: WideString read Get_CustomReference write Set_CustomReference;
  published
  end;

// *********************************************************************//
// The Class CoEasyUAGlobalDiscoveryClient provides a Create and CreateRemote method to          
// create instances of the default interface _EasyUAGlobalDiscoveryClient exposed by              
// the CoClass EasyUAGlobalDiscoveryClient. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyUAGlobalDiscoveryClient = class
    class function Create: _EasyUAGlobalDiscoveryClient;
    class function CreateRemote(const MachineName: string): _EasyUAGlobalDiscoveryClient;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TEasyUAGlobalDiscoveryClient
// Help String      : A specialized OPC UA client object for global discovery.
// Default Interface: _EasyUAGlobalDiscoveryClient
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TEasyUAGlobalDiscoveryClient = class(TOleServer)
  private
    FIntf: _EasyUAGlobalDiscoveryClient;
    function GetDefaultInterface: _EasyUAGlobalDiscoveryClient;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_CustomReference: WideString;
    procedure Set_CustomReference(const pRetVal: WideString);
    function Get_ClientSelector: _EasyUAClientSelector;
    procedure _Set_ClientSelector(const pRetVal: _EasyUAClientSelector);
    function Get_IsDerived: WordBool;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _EasyUAGlobalDiscoveryClient);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    function GetService(const serviceType: _Type): OleVariant;
    function GetServiceByName(const serviceTypeName: WideString): OleVariant;
    function ValueEquals(other: OleVariant): WordBool;
    function AsClient: _EasyUAClient;
    function FindApplications(gdsEndpointDescriptor: OleVariant; 
                              const applicationUriString: WideString): PSafeArray;
    function GetApplication(gdsEndpointDescriptor: OleVariant; applicationId: OleVariant): _UAApplicationRecordDataType;
    procedure QueryApplications(gdsEndpointDescriptor: OleVariant; startingRecordId: Integer; 
                                maximumRecordsToReturn: Integer; const applicationName: WideString; 
                                const applicationUriString: WideString; 
                                applicationTypes: UAApplicationTypes; 
                                const productUriString: WideString; serverCapabilities: OleVariant; 
                                out lastCounterResetTime: TDateTime; out nextRecordId: Integer; 
                                out applications: OleVariant);
    procedure QueryServers(gdsEndpointDescriptor: OleVariant; startingRecordId: Integer; 
                           maximumRecordsToReturn: Integer; const applicationName: WideString; 
                           const applicationUriString: WideString; 
                           const productUriString: WideString; serverCapabilities: OleVariant; 
                           out lastCounterResetTime: TDateTime; out serverOnNetworkArray: OleVariant);
    function RegisterApplication(gdsEndpointDescriptor: OleVariant; applicationRecord: OleVariant): _UANodeId;
    procedure UnregisterApplication(gdsEndpointDescriptor: OleVariant; applicationId: OleVariant);
    procedure UpdateApplication(gdsEndpointDescriptor: OleVariant; applicationRecord: OleVariant);
    property DefaultInterface: _EasyUAGlobalDiscoveryClient read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ClientSelector: _EasyUAClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property IsDerived: WordBool read Get_IsDerived;
    property CustomReference: WideString read Get_CustomReference write Set_CustomReference;
  published
  end;

// *********************************************************************//
// The Class CoEasyUAApplication provides a Create and CreateRemote method to          
// create instances of the default interface _EasyUAApplication exposed by              
// the CoClass EasyUAApplication. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyUAApplication = class
    class function Create: _EasyUAApplication;
    class function CreateRemote(const MachineName: string): _EasyUAApplication;
  end;

  TEasyUAApplicationPrivateKeyPasswordChanged = procedure(ASender: TObject; sender0: OleVariant; 
                                                                            const eventArgs: _DataEventArgs) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TEasyUAApplication
// Help String      : A component that allows management of the OPC UA application.
// Default Interface: _EasyUAApplication
// Def. Intf. DISP? : No
// Event   Interface: DEasyUAClientServerApplicationEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TEasyUAApplication = class(TOleServer)
  private
    FOnPrivateKeyPasswordChanged: TEasyUAApplicationPrivateKeyPasswordChanged;
    FIntf: _EasyUAApplication;
    function GetDefaultInterface: _EasyUAApplication;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_CustomReference: WideString;
    procedure Set_CustomReference(const pRetVal: WideString);
    function Get_ApplicationIdDictionary: _StringUANodeIdReadOnlyDictionary;
    function Get_ApplicationStoreGroup: IUnknown;
    function Get_CertificateGenerationParameters: _CertificateGenerationParameters;
    function Get_CertificateRequestParameters: _UACertificateRequestParameters;
    function Get_HostNames: _StringCollection;
    function Get_SupportsGds: WordBool;
    function Get_ApplicationParameters: _UAClientServerApplicationParameters;
    procedure _Set_ApplicationParameters(const pRetVal: _UAClientServerApplicationParameters);
    function Get_SerializeSharedData: WordBool;
    procedure Set_SerializeSharedData(pRetVal: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _EasyUAApplication);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    function GetService(const serviceType: _Type): OleVariant;
    function GetServiceByName(const serviceTypeName: WideString): OleVariant;
    function ValueEquals(other: OleVariant): WordBool;
    function AssureOwnCertificate(createOwnCertificateArguments: OleVariant): WordBool;
    procedure CreateOwnCertificate(createOwnCertificateArguments: OleVariant);
    procedure ExportApplicationConfiguration(const stream: _Stream);
    procedure ExportApplicationConfigurationToFile(const filePath: WideString);
    procedure ExportOwnCertificateToFile(exportCertificateArguments: OleVariant);
    procedure ExportRegisteredApplication(const stream: _Stream);
    procedure ExportRegisteredApplicationToFile(const filePath: WideString);
    procedure ExportSecuredApplication(const stream: _Stream);
    procedure ExportSecuredApplicationToFile(const filePath: WideString);
    function FindGdsRegistrations(gdsEndpointDescriptor: OleVariant): _UANodeIdUAApplicationElementReadOnlyDictionary;
    function FindOwnCertificate(const certificateSubId: WideString): _PkiCertificate;
    function GetApplicationElement: _UAApplicationElement;
    function GetApplicationId(gdsEndpointDescriptor: OleVariant): _UANodeId;
    function GetCertificateSubjectName(const certificateSubId: WideString): WideString;
    function GetCertificateSubjectNameDictionary: _StringStringDictionary;
    function GetEffectiveApplicationManifest: _UAApplicationManifest;
    function GetEffectiveHostNames(alternateHostNames: OleVariant): _StringCollection;
    function GetPrivateKeyPasswordStrength(const certificateSubId: WideString): Single;
    function HasOwnCertificate(const certificateSubId: WideString): WordBool;
    function HasPrivateKeyPassword(const certificateSubId: WideString): WordBool;
    procedure ImportOwnCertificateFromFile(importCertificateArguments: OleVariant);
    function ListCertificateSubIds: _StringSet;
    function ListCertificateTypeElements(gdsEndpointDescriptor: OleVariant; 
                                         applicationStoreKind: PkiApplicationStoreKind): _UACertificateTypeElementCollection;
    function ObtainNewCertificate(Arguments: OleVariant): _PkiCertificate;
    function ProtectOrUnprotectOwnCertificate(const certificateSubId: WideString; 
                                              const newPrivateKeyPassword: WideString): WordBool;
    procedure ProtectOwnCertificate(const newPrivateKeyPassword: WideString);
    function RefreshTrustLists(gdsEndpointDescriptor: OleVariant; updateGdsRegistration: WordBool): UATrustListMasks;
    function RegisterToGds(gdsEndpointDescriptor: OleVariant): _UANodeId;
    function RemoveOwnCertificates(const certificateSubIdPattern: WideString; mustExist: WordBool; 
                                   updateTrustedPeerCertificates: WordBool): Integer;
    procedure RemovePrivateKeyPassword(const certificateSubId: WideString);
    procedure SetPrivateKeyPassword(const certificateSubId: WideString; 
                                    const privateKeyPassword: WideString);
    procedure UnprotectOwnCertificate;
    procedure UnregisterFromGds(gdsEndpointDescriptor: OleVariant);
    function updateGdsRegistration(gdsEndpointDescriptor: OleVariant): _UANodeId;
    procedure ValidateOwnCertificate(certificateGenerationArguments: OleVariant);
    property DefaultInterface: _EasyUAApplication read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ApplicationIdDictionary: _StringUANodeIdReadOnlyDictionary read Get_ApplicationIdDictionary;
    property ApplicationStoreGroup: IUnknown read Get_ApplicationStoreGroup;
    property CertificateGenerationParameters: _CertificateGenerationParameters read Get_CertificateGenerationParameters;
    property CertificateRequestParameters: _UACertificateRequestParameters read Get_CertificateRequestParameters;
    property HostNames: _StringCollection read Get_HostNames;
    property SupportsGds: WordBool read Get_SupportsGds;
    property ApplicationParameters: _UAClientServerApplicationParameters read Get_ApplicationParameters write _Set_ApplicationParameters;
    property CustomReference: WideString read Get_CustomReference write Set_CustomReference;
    property SerializeSharedData: WordBool read Get_SerializeSharedData write Set_SerializeSharedData;
  published
    property OnPrivateKeyPasswordChanged: TEasyUAApplicationPrivateKeyPasswordChanged read FOnPrivateKeyPasswordChanged write FOnPrivateKeyPasswordChanged;
  end;

// *********************************************************************//
// The Class CoEasyUAAlarmsAndConditionsClient provides a Create and CreateRemote method to          
// create instances of the default interface _EasyUAAlarmsAndConditionsClient exposed by              
// the CoClass EasyUAAlarmsAndConditionsClient. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyUAAlarmsAndConditionsClient = class
    class function Create: _EasyUAAlarmsAndConditionsClient;
    class function CreateRemote(const MachineName: string): _EasyUAAlarmsAndConditionsClient;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TEasyUAAlarmsAndConditionsClient
// Help String      : A specialized OPC UA client object for alarms and conditions.
// Default Interface: _EasyUAAlarmsAndConditionsClient
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TEasyUAAlarmsAndConditionsClient = class(TOleServer)
  private
    FIntf: _EasyUAAlarmsAndConditionsClient;
    function GetDefaultInterface: _EasyUAAlarmsAndConditionsClient;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_CustomReference: WideString;
    procedure Set_CustomReference(const pRetVal: WideString);
    function Get_ClientSelector: _EasyUAClientSelector;
    procedure _Set_ClientSelector(const pRetVal: _EasyUAClientSelector);
    function Get_IsDerived: WordBool;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _EasyUAAlarmsAndConditionsClient);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    function GetService(const serviceType: _Type): OleVariant;
    function GetServiceByName(const serviceTypeName: WideString): OleVariant;
    function ValueEquals(other: OleVariant): WordBool;
    function AsClient: _EasyUAClient;
    procedure Acknowledge(endpointDescriptor: OleVariant; 
                          objectOrConditionNodeDescriptor: OleVariant; eventId: OleVariant; 
                          const comment: WideString);
    procedure AddComment(endpointDescriptor: OleVariant; 
                         objectOrConditionNodeDescriptor: OleVariant; eventId: OleVariant; 
                         const comment: WideString);
    procedure Confirm(endpointDescriptor: OleVariant; objectOrConditionNodeDescriptor: OleVariant; 
                      eventId: OleVariant; const comment: WideString);
    procedure Disable(endpointDescriptor: OleVariant; objectOrConditionNodeDescriptor: OleVariant);
    procedure Enable(endpointDescriptor: OleVariant; objectOrConditionNodeDescriptor: OleVariant);
    procedure OneShotShelve(endpointDescriptor: OleVariant; 
                            objectOrConditionNodeDescriptor: OleVariant);
    procedure Respond(endpointDescriptor: OleVariant; objectOrConditionNodeDescriptor: OleVariant; 
                      selectedResponse: Integer);
    procedure TimedShelve(endpointDescriptor: OleVariant; 
                          objectOrConditionNodeDescriptor: OleVariant; 
                          millisecondsShelvingTime: Double);
    procedure Unshelve(endpointDescriptor: OleVariant; objectOrConditionNodeDescriptor: OleVariant);
    property DefaultInterface: _EasyUAAlarmsAndConditionsClient read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ClientSelector: _EasyUAClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property IsDerived: WordBool read Get_IsDerived;
    property CustomReference: WideString read Get_CustomReference write Set_CustomReference;
  published
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses System.Win.ComObj;

class function CoEasyUAClientManagement.Create: _EasyUAClientManagement;
begin
  Result := CreateComObject(CLASS_EasyUAClientManagement) as _EasyUAClientManagement;
end;

class function CoEasyUAClientManagement.CreateRemote(const MachineName: string): _EasyUAClientManagement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyUAClientManagement) as _EasyUAClientManagement;
end;

procedure TEasyUAClientManagement.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{4F0F5C25-2E2B-406F-9526-75F35F90C87F}';
    IntfIID:   '{A1C5264B-D40E-4AB2-8A12-3AC09A4E947D}';
    EventIID:  '{06F4301F-D43B-414F-8E93-A8B96D64FA93}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TEasyUAClientManagement.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _EasyUAClientManagement;
  end;
end;

procedure TEasyUAClientManagement.ConnectTo(svrIntf: _EasyUAClientManagement);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TEasyUAClientManagement.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TEasyUAClientManagement.GetDefaultInterface: _EasyUAClientManagement;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TEasyUAClientManagement.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TEasyUAClientManagement.Destroy;
begin
  inherited Destroy;
end;

procedure TEasyUAClientManagement.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    1001: if Assigned(FOnLogEntry) then
         FOnLogEntry(Self,
                     Params[0] {OleVariant},
                     IUnknown(TVarData(Params[1]).VPointer) as _LogEntryEventArgs {const _LogEntryEventArgs});
  end; {case DispID}
end;

function TEasyUAClientManagement.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TEasyUAClientManagement.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TEasyUAClientManagement.Get_CustomReference: WideString;
begin
  Result := DefaultInterface.CustomReference;
end;

procedure TEasyUAClientManagement.Set_CustomReference(const pRetVal: WideString);
begin
  DefaultInterface.CustomReference := pRetVal;
end;

function TEasyUAClientManagement.Get_AdaptableParameters: _EasyUAClientAdaptableParameters;
begin
  Result := DefaultInterface.AdaptableParameters;
end;

procedure TEasyUAClientManagement._Set_AdaptableParameters(const pRetVal: _EasyUAClientAdaptableParameters);
begin
  DefaultInterface.AdaptableParameters := pRetVal;
end;

function TEasyUAClientManagement.Get_SharedInstance: _EasyUAClient;
begin
  Result := DefaultInterface.SharedInstance;
end;

function TEasyUAClientManagement.Get_SharedParameters: _EasyUAClientSharedParameters;
begin
  Result := DefaultInterface.SharedParameters;
end;

procedure TEasyUAClientManagement._Set_SharedParameters(const pRetVal: _EasyUAClientSharedParameters);
begin
  DefaultInterface.SharedParameters := pRetVal;
end;

function TEasyUAClientManagement.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TEasyUAClientManagement.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TEasyUAClientManagement.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TEasyUAClientManagement.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

function TEasyUAClientManagement.GetService(const serviceType: _Type): OleVariant;
begin
  Result := DefaultInterface.GetService(serviceType);
end;

function TEasyUAClientManagement.GetServiceByName(const serviceTypeName: WideString): OleVariant;
begin
  Result := DefaultInterface.GetServiceByName(serviceTypeName);
end;

function TEasyUAClientManagement.ValueEquals(other: OleVariant): WordBool;
begin
  Result := DefaultInterface.ValueEquals(other);
end;

class function CoEasyUAClient.Create: _EasyUAClient;
begin
  Result := CreateComObject(CLASS_EasyUAClient) as _EasyUAClient;
end;

class function CoEasyUAClient.CreateRemote(const MachineName: string): _EasyUAClient;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyUAClient) as _EasyUAClient;
end;

procedure TEasyUAClient.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{54AFB0EA-9809-4D1D-AFBE-0EC164C59A45}';
    IntfIID:   '{910344C0-F2A0-42D2-A65E-F3800437F52A}';
    EventIID:  '{C93C8EFE-A670-42BE-94B0-0D71D10B47C5}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TEasyUAClient.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _EasyUAClient;
  end;
end;

procedure TEasyUAClient.ConnectTo(svrIntf: _EasyUAClient);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TEasyUAClient.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TEasyUAClient.GetDefaultInterface: _EasyUAClient;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TEasyUAClient.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TEasyUAClient.Destroy;
begin
  inherited Destroy;
end;

procedure TEasyUAClient.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    1001: if Assigned(FOnDataChangeNotification) then
         FOnDataChangeNotification(Self,
                                   Params[0] {OleVariant},
                                   IUnknown(TVarData(Params[1]).VPointer) as _EasyUADataChangeNotificationEventArgs {const _EasyUADataChangeNotificationEventArgs});
    1002: if Assigned(FOnEventingFailure) then
         FOnEventingFailure(Self,
                            Params[0] {OleVariant},
                            IUnknown(TVarData(Params[1]).VPointer) as _FailureEventArgs {const _FailureEventArgs});
    1003: if Assigned(FOnEventNotification) then
         FOnEventNotification(Self,
                              Params[0] {OleVariant},
                              IUnknown(TVarData(Params[1]).VPointer) as _EasyUAEventNotificationEventArgs {const _EasyUAEventNotificationEventArgs});
  end; {case DispID}
end;

function TEasyUAClient.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TEasyUAClient.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TEasyUAClient.Get_CustomReference: WideString;
begin
  Result := DefaultInterface.CustomReference;
end;

procedure TEasyUAClient.Set_CustomReference(const pRetVal: WideString);
begin
  DefaultInterface.CustomReference := pRetVal;
end;

function TEasyUAClient.Get_NotificationQueueCapacity: Integer;
begin
  Result := DefaultInterface.NotificationQueueCapacity;
end;

procedure TEasyUAClient.Set_NotificationQueueCapacity(pRetVal: Integer);
begin
  DefaultInterface.NotificationQueueCapacity := pRetVal;
end;

function TEasyUAClient.Get_NotificationQueueIdleTimeToSleep: Integer;
begin
  Result := DefaultInterface.NotificationQueueIdleTimeToSleep;
end;

procedure TEasyUAClient.Set_NotificationQueueIdleTimeToSleep(pRetVal: Integer);
begin
  DefaultInterface.NotificationQueueIdleTimeToSleep := pRetVal;
end;

function TEasyUAClient.Get_QueueNotifications: WordBool;
begin
  Result := DefaultInterface.QueueNotifications;
end;

procedure TEasyUAClient.Set_QueueNotifications(pRetVal: WordBool);
begin
  DefaultInterface.QueueNotifications := pRetVal;
end;

function TEasyUAClient.Get_AliasProvider: _AliasProvider;
begin
  Result := DefaultInterface.AliasProvider;
end;

procedure TEasyUAClient._Set_AliasProvider(const pRetVal: _AliasProvider);
begin
  DefaultInterface.AliasProvider := pRetVal;
end;

function TEasyUAClient.Get_InstanceParameters: _EasyUAClientInstanceParameters;
begin
  Result := DefaultInterface.InstanceParameters;
end;

procedure TEasyUAClient._Set_InstanceParameters(const pRetVal: _EasyUAClientInstanceParameters);
begin
  DefaultInterface.InstanceParameters := pRetVal;
end;

function TEasyUAClient.Get_Isolated: WordBool;
begin
  Result := DefaultInterface.Isolated;
end;

procedure TEasyUAClient.Set_Isolated(pRetVal: WordBool);
begin
  DefaultInterface.Isolated := pRetVal;
end;

function TEasyUAClient.Get_IsolatedParameters: _EasyUAClientAdaptableParameters;
begin
  Result := DefaultInterface.IsolatedParameters;
end;

procedure TEasyUAClient._Set_IsolatedParameters(const pRetVal: _EasyUAClientAdaptableParameters);
begin
  DefaultInterface.IsolatedParameters := pRetVal;
end;

function TEasyUAClient.Get_LicenseInfo: _StringObjectDictionary;
begin
  Result := DefaultInterface.LicenseInfo;
end;

function TEasyUAClient.Get_PullDataChangeNotificationQueueCapacity: Integer;
begin
  Result := DefaultInterface.PullDataChangeNotificationQueueCapacity;
end;

procedure TEasyUAClient.Set_PullDataChangeNotificationQueueCapacity(pRetVal: Integer);
begin
  DefaultInterface.PullDataChangeNotificationQueueCapacity := pRetVal;
end;

function TEasyUAClient.Get_PullEventNotificationQueueCapacity: Integer;
begin
  Result := DefaultInterface.PullEventNotificationQueueCapacity;
end;

procedure TEasyUAClient.Set_PullEventNotificationQueueCapacity(pRetVal: Integer);
begin
  DefaultInterface.PullEventNotificationQueueCapacity := pRetVal;
end;

function TEasyUAClient.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TEasyUAClient.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TEasyUAClient.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TEasyUAClient.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

function TEasyUAClient.GetService(const serviceType: _Type): OleVariant;
begin
  Result := DefaultInterface.GetService(serviceType);
end;

function TEasyUAClient.GetServiceByName(const serviceTypeName: WideString): OleVariant;
begin
  Result := DefaultInterface.GetServiceByName(serviceTypeName);
end;

function TEasyUAClient.ValueEquals(other: OleVariant): WordBool;
begin
  Result := DefaultInterface.ValueEquals(other);
end;

function TEasyUAClient.AsAlarmsAndConditionsClient: _EasyUAAlarmsAndConditionsClient;
begin
  Result := DefaultInterface.AsAlarmsAndConditionsClient;
end;

function TEasyUAClient.AsCertificateManagementClient: _EasyUACertificateManagementClient;
begin
  Result := DefaultInterface.AsCertificateManagementClient;
end;

function TEasyUAClient.AsGlobalDiscoveryClient: _EasyUAGlobalDiscoveryClient;
begin
  Result := DefaultInterface.AsGlobalDiscoveryClient;
end;

function TEasyUAClient.AsPublishSubscribeClient: _EasyUAPublishSubscribeClient;
begin
  Result := DefaultInterface.AsPublishSubscribeClient;
end;

function TEasyUAClient.BrowseDataNodes(const endpointDescriptorString: WideString; 
                                       const nodeDescriptorString: WideString): _UANodeElementCollection;
begin
  Result := DefaultInterface.BrowseDataNodes(endpointDescriptorString, nodeDescriptorString);
end;

function TEasyUAClient.BrowseDataVariables(const endpointDescriptorString: WideString; 
                                           const nodeDescriptorString: WideString): _UANodeElementCollection;
begin
  Result := DefaultInterface.BrowseDataVariables(endpointDescriptorString, nodeDescriptorString);
end;

function TEasyUAClient.BrowseEventSources(const endpointDescriptorString: WideString; 
                                          const nodeDescriptorString: WideString): _UANodeElementCollection;
begin
  Result := DefaultInterface.BrowseEventSources(endpointDescriptorString, nodeDescriptorString);
end;

function TEasyUAClient.BrowseList(const browseNodesArgumentsList: IList): _ElasticVector;
begin
  Result := DefaultInterface.BrowseList(browseNodesArgumentsList);
end;

function TEasyUAClient.BrowseMethods(const endpointDescriptorString: WideString; 
                                     const nodeDescriptorString: WideString): _UANodeElementCollection;
begin
  Result := DefaultInterface.BrowseMethods(endpointDescriptorString, nodeDescriptorString);
end;

function TEasyUAClient.BrowseMultiple(browseNodesArgumentsArray: OleVariant): PSafeArray;
begin
  Result := DefaultInterface.BrowseMultiple(browseNodesArgumentsArray);
end;

function TEasyUAClient.Browse(endpointDescriptor: OleVariant; NodeDescriptor: OleVariant; 
                              BrowseParameters: OleVariant): _UANodeElementCollection;
begin
  Result := DefaultInterface.Browse(endpointDescriptor, NodeDescriptor, BrowseParameters);
end;

function TEasyUAClient.BrowseNotifiers(const endpointDescriptorString: WideString; 
                                       const nodeDescriptorString: WideString): _UANodeElementCollection;
begin
  Result := DefaultInterface.BrowseNotifiers(endpointDescriptorString, nodeDescriptorString);
end;

function TEasyUAClient.BrowseObjects(const endpointDescriptorString: WideString; 
                                     const nodeDescriptorString: WideString): _UANodeElementCollection;
begin
  Result := DefaultInterface.BrowseObjects(endpointDescriptorString, nodeDescriptorString);
end;

function TEasyUAClient.BrowseProperties(const endpointDescriptorString: WideString; 
                                        const nodeDescriptorString: WideString): _UANodeElementCollection;
begin
  Result := DefaultInterface.BrowseProperties(endpointDescriptorString, nodeDescriptorString);
end;

function TEasyUAClient.BrowseVariables(const endpointDescriptorString: WideString; 
                                       const nodeDescriptorString: WideString): _UANodeElementCollection;
begin
  Result := DefaultInterface.BrowseVariables(endpointDescriptorString, nodeDescriptorString);
end;

function TEasyUAClient.CallMethod(const endpointDescriptorString: WideString; 
                                  const objectNodeDescriptorString: WideString; 
                                  const methodNodeDescriptorString: WideString; 
                                  InputArguments: OleVariant; InputTypeCodes: OleVariant): PSafeArray;
begin
  Result := DefaultInterface.CallMethod(endpointDescriptorString, objectNodeDescriptorString, 
                                        methodNodeDescriptorString, InputArguments, InputTypeCodes);
end;

function TEasyUAClient.CallMethodList(const callArgumentsList: IList): _ElasticVector;
begin
  Result := DefaultInterface.CallMethodList(callArgumentsList);
end;

function TEasyUAClient.CallMultipleMethods(callArgumentsArray: OleVariant): PSafeArray;
begin
  Result := DefaultInterface.CallMultipleMethods(callArgumentsArray);
end;

procedure TEasyUAClient.ChangeMonitoredItemSubscription(Handle: Integer; samplingInterval: Integer);
begin
  DefaultInterface.ChangeMonitoredItemSubscription(Handle, samplingInterval);
end;

procedure TEasyUAClient.ChangeMonitoredItemSubscriptionList(const subscriptionChangeArgumentsList: IList);
begin
  DefaultInterface.ChangeMonitoredItemSubscriptionList(subscriptionChangeArgumentsList);
end;

procedure TEasyUAClient.ChangeMultipleMonitoredItemSubscriptions(subscriptionChangeArgumentsArray: OleVariant);
begin
  DefaultInterface.ChangeMultipleMonitoredItemSubscriptions(subscriptionChangeArgumentsArray);
end;

function TEasyUAClient.Discover(discoveryQuery: OleVariant): _UADiscoveryElementCollection;
begin
  Result := DefaultInterface.Discover(discoveryQuery);
end;

function TEasyUAClient.DiscoverLocalServers(const DiscoveryHost: WideString): _UADiscoveryElementCollection;
begin
  Result := DefaultInterface.DiscoverLocalServers(DiscoveryHost);
end;

function TEasyUAClient.DiscoverNetworkServers(ServerCapabilityFilter: OleVariant; 
                                              const DiscoveryHost: WideString): _UADiscoveryElementCollection;
begin
  Result := DefaultInterface.DiscoverNetworkServers(ServerCapabilityFilter, DiscoveryHost);
end;

function TEasyUAClient.FindLocalApplications(discoveryUriStringArray: OleVariant; 
                                             applicationTypes: UAApplicationTypes): _UADiscoveryElementCollection;
begin
  Result := DefaultInterface.FindLocalApplications(discoveryUriStringArray, applicationTypes);
end;

function TEasyUAClient.GetMonitoredItemArguments(Handle: Integer): _EasyUAMonitoredItemArguments;
begin
  Result := DefaultInterface.GetMonitoredItemArguments(Handle);
end;

function TEasyUAClient.GetMonitoredItemArgumentsDictionary: _EasyUAMonitoredItemArgumentsDictionary;
begin
  Result := DefaultInterface.GetMonitoredItemArgumentsDictionary;
end;

function TEasyUAClient.IsKnownMonitoredItemSubscriptionHandle(Handle: Integer): WordBool;
begin
  Result := DefaultInterface.IsKnownMonitoredItemSubscriptionHandle(Handle);
end;

function TEasyUAClient.PullDataChangeNotification(millisecondsTimeout: Integer): _EasyUADataChangeNotificationEventArgs;
begin
  Result := DefaultInterface.PullDataChangeNotification(millisecondsTimeout);
end;

function TEasyUAClient.PullDataChangeNotificationList(maximumCount: Integer; 
                                                      millisecondsTimeout: Integer): _ElasticVector;
begin
  Result := DefaultInterface.PullDataChangeNotificationList(maximumCount, millisecondsTimeout);
end;

function TEasyUAClient.PullEventNotification(millisecondsTimeout: Integer): _EasyUAEventNotificationEventArgs;
begin
  Result := DefaultInterface.PullEventNotification(millisecondsTimeout);
end;

function TEasyUAClient.PullEventNotificationList(maximumCount: Integer; millisecondsTimeout: Integer): _ElasticVector;
begin
  Result := DefaultInterface.PullEventNotificationList(maximumCount, millisecondsTimeout);
end;

function TEasyUAClient.PullMultipleDataChangeNotifications(maximumCount: Integer; 
                                                           millisecondsTimeout: Integer): PSafeArray;
begin
  Result := DefaultInterface.PullMultipleDataChangeNotifications(maximumCount, millisecondsTimeout);
end;

function TEasyUAClient.PullMultipleEventNotifications(maximumCount: Integer; 
                                                      millisecondsTimeout: Integer): PSafeArray;
begin
  Result := DefaultInterface.PullMultipleEventNotifications(maximumCount, millisecondsTimeout);
end;

function TEasyUAClient.DiscoverGlobalApplications(const gdsEndpointDescriptorString: WideString; 
                                                  QueryApplicationsFilter: OleVariant): _UADiscoveryElementCollection;
begin
  Result := DefaultInterface.DiscoverGlobalApplications(gdsEndpointDescriptorString, 
                                                        QueryApplicationsFilter);
end;

function TEasyUAClient.DiscoverGlobalServers(const gdsEndpointDescriptorString: WideString): _UADiscoveryElementCollection;
begin
  Result := DefaultInterface.DiscoverGlobalServers(gdsEndpointDescriptorString);
end;

function TEasyUAClient.Read(const endpointDescriptorString: WideString; 
                            const nodeDescriptorString: WideString): _UAAttributeData;
begin
  Result := DefaultInterface.Read(endpointDescriptorString, nodeDescriptorString);
end;

function TEasyUAClient.ReadList(const readArgumentsList: IList): _ElasticVector;
begin
  Result := DefaultInterface.ReadList(readArgumentsList);
end;

function TEasyUAClient.ReadMultiple(readArgumentsArray: OleVariant): PSafeArray;
begin
  Result := DefaultInterface.ReadMultiple(readArgumentsArray);
end;

function TEasyUAClient.ReadMultipleValues(readArgumentsArray: OleVariant): PSafeArray;
begin
  Result := DefaultInterface.ReadMultipleValues(readArgumentsArray);
end;

function TEasyUAClient.ReadValue(const endpointDescriptorString: WideString; 
                                 const nodeDescriptorString: WideString): OleVariant;
begin
  Result := DefaultInterface.ReadValue(endpointDescriptorString, nodeDescriptorString);
end;

function TEasyUAClient.ReadValueList(const readArgumentsList: IList): _ElasticVector;
begin
  Result := DefaultInterface.ReadValueList(readArgumentsList);
end;

procedure TEasyUAClient.Reset;
begin
  DefaultInterface.Reset;
end;

function TEasyUAClient.SubscribeDataChange(const endpointDescriptorString: WideString; 
                                           const nodeDescriptorString: WideString; 
                                           samplingInterval: Integer): Integer;
begin
  Result := DefaultInterface.SubscribeDataChange(endpointDescriptorString, nodeDescriptorString, 
                                                 samplingInterval);
end;

function TEasyUAClient.SubscribeEvent(const endpointDescriptorString: WideString; 
                                      const nodeDescriptorString: WideString; 
                                      samplingInterval: Integer): Integer;
begin
  Result := DefaultInterface.SubscribeEvent(endpointDescriptorString, nodeDescriptorString, 
                                            samplingInterval);
end;

function TEasyUAClient.SubscribeMonitoredItemList(const monitoredItemArgumentsList: IList): _ElasticVector;
begin
  Result := DefaultInterface.SubscribeMonitoredItemList(monitoredItemArgumentsList);
end;

function TEasyUAClient.SubscribeMultipleMonitoredItems(monitoredItemArgumentsArray: OleVariant): PSafeArray;
begin
  Result := DefaultInterface.SubscribeMultipleMonitoredItems(monitoredItemArgumentsArray);
end;

procedure TEasyUAClient.UnsubscribeAllMonitoredItems;
begin
  DefaultInterface.UnsubscribeAllMonitoredItems;
end;

procedure TEasyUAClient.UnsubscribeMonitoredItem(Handle: Integer);
begin
  DefaultInterface.UnsubscribeMonitoredItem(Handle);
end;

procedure TEasyUAClient.UnsubscribeMonitoredItemList(const handlesToUnsubscribeList: IList);
begin
  DefaultInterface.UnsubscribeMonitoredItemList(handlesToUnsubscribeList);
end;

procedure TEasyUAClient.UnsubscribeMultipleMonitoredItems(handlesToUnsubscribeArray: OleVariant);
begin
  DefaultInterface.UnsubscribeMultipleMonitoredItems(handlesToUnsubscribeArray);
end;

procedure TEasyUAClient.Write(const endpointDescriptorString: WideString; 
                              const nodeDescriptorString: WideString; AttributeData: OleVariant);
begin
  DefaultInterface.Write(endpointDescriptorString, nodeDescriptorString, AttributeData);
end;

function TEasyUAClient.WriteList(const writeArgumentsList: IList): _ElasticVector;
begin
  Result := DefaultInterface.WriteList(writeArgumentsList);
end;

function TEasyUAClient.WriteMultiple(writeArgumentsArray: OleVariant): PSafeArray;
begin
  Result := DefaultInterface.WriteMultiple(writeArgumentsArray);
end;

function TEasyUAClient.WriteMultipleValues(writeValueArgumentsArray: OleVariant): PSafeArray;
begin
  Result := DefaultInterface.WriteMultipleValues(writeValueArgumentsArray);
end;

procedure TEasyUAClient.WriteValue(const endpointDescriptorString: WideString; 
                                   const nodeDescriptorString: WideString; value: OleVariant);
begin
  DefaultInterface.WriteValue(endpointDescriptorString, nodeDescriptorString, value);
end;

function TEasyUAClient.WriteValueList(const writeValueArgumentsList: IList): _ElasticVector;
begin
  Result := DefaultInterface.WriteValueList(writeValueArgumentsList);
end;

class function CoEasyUASubscriberManagement.Create: _EasyUASubscriberManagement;
begin
  Result := CreateComObject(CLASS_EasyUASubscriberManagement) as _EasyUASubscriberManagement;
end;

class function CoEasyUASubscriberManagement.CreateRemote(const MachineName: string): _EasyUASubscriberManagement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyUASubscriberManagement) as _EasyUASubscriberManagement;
end;

procedure TEasyUASubscriberManagement.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D272C305-B47E-4B3D-ACD8-CD21635756E4}';
    IntfIID:   '{B40CCFD3-C5B2-4E9A-ADCB-075C89FFB45C}';
    EventIID:  '{78AEB4F6-5242-429A-BCFD-09C055C06CFB}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TEasyUASubscriberManagement.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _EasyUASubscriberManagement;
  end;
end;

procedure TEasyUASubscriberManagement.ConnectTo(svrIntf: _EasyUASubscriberManagement);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TEasyUASubscriberManagement.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TEasyUASubscriberManagement.GetDefaultInterface: _EasyUASubscriberManagement;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TEasyUASubscriberManagement.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TEasyUASubscriberManagement.Destroy;
begin
  inherited Destroy;
end;

procedure TEasyUASubscriberManagement.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    1001: if Assigned(FOnLogEntry) then
         FOnLogEntry(Self,
                     Params[0] {OleVariant},
                     IUnknown(TVarData(Params[1]).VPointer) as _LogEntryEventArgs {const _LogEntryEventArgs});
  end; {case DispID}
end;

function TEasyUASubscriberManagement.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TEasyUASubscriberManagement.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TEasyUASubscriberManagement.Get_CustomReference: WideString;
begin
  Result := DefaultInterface.CustomReference;
end;

procedure TEasyUASubscriberManagement.Set_CustomReference(const pRetVal: WideString);
begin
  DefaultInterface.CustomReference := pRetVal;
end;

function TEasyUASubscriberManagement.Get_AdaptableParameters: _EasyUASubscriberAdaptableParameters;
begin
  Result := DefaultInterface.AdaptableParameters;
end;

procedure TEasyUASubscriberManagement._Set_AdaptableParameters(const pRetVal: _EasyUASubscriberAdaptableParameters);
begin
  DefaultInterface.AdaptableParameters := pRetVal;
end;

function TEasyUASubscriberManagement.Get_SharedInstance: _EasyUASubscriber;
begin
  Result := DefaultInterface.SharedInstance;
end;

function TEasyUASubscriberManagement.Get_SharedParameters: _EasyUASubscriberSharedParameters;
begin
  Result := DefaultInterface.SharedParameters;
end;

procedure TEasyUASubscriberManagement._Set_SharedParameters(const pRetVal: _EasyUASubscriberSharedParameters);
begin
  DefaultInterface.SharedParameters := pRetVal;
end;

function TEasyUASubscriberManagement.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TEasyUASubscriberManagement.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TEasyUASubscriberManagement.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TEasyUASubscriberManagement.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

function TEasyUASubscriberManagement.GetService(const serviceType: _Type): OleVariant;
begin
  Result := DefaultInterface.GetService(serviceType);
end;

function TEasyUASubscriberManagement.GetServiceByName(const serviceTypeName: WideString): OleVariant;
begin
  Result := DefaultInterface.GetServiceByName(serviceTypeName);
end;

function TEasyUASubscriberManagement.ValueEquals(other: OleVariant): WordBool;
begin
  Result := DefaultInterface.ValueEquals(other);
end;

class function CoEasyUASubscriber.Create: _EasyUASubscriber;
begin
  Result := CreateComObject(CLASS_EasyUASubscriber) as _EasyUASubscriber;
end;

class function CoEasyUASubscriber.CreateRemote(const MachineName: string): _EasyUASubscriber;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyUASubscriber) as _EasyUASubscriber;
end;

procedure TEasyUASubscriber.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{EDC1F10E-3FC6-4604-9BC6-4FFF579D271A}';
    IntfIID:   '{30C649D2-ED07-40CC-9BC0-3C629B0CFF5B}';
    EventIID:  '{AB25F585-7859-40FC-9181-E255E8AFD7B6}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TEasyUASubscriber.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _EasyUASubscriber;
  end;
end;

procedure TEasyUASubscriber.ConnectTo(svrIntf: _EasyUASubscriber);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TEasyUASubscriber.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TEasyUASubscriber.GetDefaultInterface: _EasyUASubscriber;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TEasyUASubscriber.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TEasyUASubscriber.Destroy;
begin
  inherited Destroy;
end;

procedure TEasyUASubscriber.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    1001: if Assigned(FOnDataSetMessage) then
         FOnDataSetMessage(Self,
                           Params[0] {OleVariant},
                           IUnknown(TVarData(Params[1]).VPointer) as _EasyUADataSetMessageEventArgs {const _EasyUADataSetMessageEventArgs});
    1002: if Assigned(FOnEventingFailure) then
         FOnEventingFailure(Self,
                            Params[0] {OleVariant},
                            IUnknown(TVarData(Params[1]).VPointer) as _FailureEventArgs {const _FailureEventArgs});
    1003: if Assigned(FOnResolverAccess) then
         FOnResolverAccess(Self,
                           Params[0] {OleVariant},
                           IUnknown(TVarData(Params[1]).VPointer) as _EasyUAResolverAccessEventArgs {const _EasyUAResolverAccessEventArgs});
    1004: if Assigned(FOnSubscriptionResolved) then
         FOnSubscriptionResolved(Self,
                                 Params[0] {OleVariant},
                                 IUnknown(TVarData(Params[1]).VPointer) as _EasyUASubscriptionResolvedEventArgs {const _EasyUASubscriptionResolvedEventArgs});
  end; {case DispID}
end;

function TEasyUASubscriber.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TEasyUASubscriber.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TEasyUASubscriber.Get_CustomReference: WideString;
begin
  Result := DefaultInterface.CustomReference;
end;

procedure TEasyUASubscriber.Set_CustomReference(const pRetVal: WideString);
begin
  DefaultInterface.CustomReference := pRetVal;
end;

function TEasyUASubscriber.Get_NotificationQueueCapacity: Integer;
begin
  Result := DefaultInterface.NotificationQueueCapacity;
end;

procedure TEasyUASubscriber.Set_NotificationQueueCapacity(pRetVal: Integer);
begin
  DefaultInterface.NotificationQueueCapacity := pRetVal;
end;

function TEasyUASubscriber.Get_NotificationQueueIdleTimeToSleep: Integer;
begin
  Result := DefaultInterface.NotificationQueueIdleTimeToSleep;
end;

procedure TEasyUASubscriber.Set_NotificationQueueIdleTimeToSleep(pRetVal: Integer);
begin
  DefaultInterface.NotificationQueueIdleTimeToSleep := pRetVal;
end;

function TEasyUASubscriber.Get_QueueNotifications: WordBool;
begin
  Result := DefaultInterface.QueueNotifications;
end;

procedure TEasyUASubscriber.Set_QueueNotifications(pRetVal: WordBool);
begin
  DefaultInterface.QueueNotifications := pRetVal;
end;

function TEasyUASubscriber.Get_AliasProvider: _AliasProvider;
begin
  Result := DefaultInterface.AliasProvider;
end;

procedure TEasyUASubscriber._Set_AliasProvider(const pRetVal: _AliasProvider);
begin
  DefaultInterface.AliasProvider := pRetVal;
end;

function TEasyUASubscriber.Get_InstanceParameters: _EasyUASubscriberInstanceParameters;
begin
  Result := DefaultInterface.InstanceParameters;
end;

procedure TEasyUASubscriber._Set_InstanceParameters(const pRetVal: _EasyUASubscriberInstanceParameters);
begin
  DefaultInterface.InstanceParameters := pRetVal;
end;

function TEasyUASubscriber.Get_Isolated: WordBool;
begin
  Result := DefaultInterface.Isolated;
end;

procedure TEasyUASubscriber.Set_Isolated(pRetVal: WordBool);
begin
  DefaultInterface.Isolated := pRetVal;
end;

function TEasyUASubscriber.Get_IsolatedParameters: _EasyUASubscriberAdaptableParameters;
begin
  Result := DefaultInterface.IsolatedParameters;
end;

procedure TEasyUASubscriber._Set_IsolatedParameters(const pRetVal: _EasyUASubscriberAdaptableParameters);
begin
  DefaultInterface.IsolatedParameters := pRetVal;
end;

function TEasyUASubscriber.Get_LicenseInfo: _StringObjectDictionary;
begin
  Result := DefaultInterface.LicenseInfo;
end;

function TEasyUASubscriber.Get_PullDataSetMessageQueueCapacity: Integer;
begin
  Result := DefaultInterface.PullDataSetMessageQueueCapacity;
end;

procedure TEasyUASubscriber.Set_PullDataSetMessageQueueCapacity(pRetVal: Integer);
begin
  DefaultInterface.PullDataSetMessageQueueCapacity := pRetVal;
end;

function TEasyUASubscriber.Get_PullResolverAccessQueueCapacity: Integer;
begin
  Result := DefaultInterface.PullResolverAccessQueueCapacity;
end;

procedure TEasyUASubscriber.Set_PullResolverAccessQueueCapacity(pRetVal: Integer);
begin
  DefaultInterface.PullResolverAccessQueueCapacity := pRetVal;
end;

function TEasyUASubscriber.Get_PullSubscriptionResolvedQueueCapacity: Integer;
begin
  Result := DefaultInterface.PullSubscriptionResolvedQueueCapacity;
end;

procedure TEasyUASubscriber.Set_PullSubscriptionResolvedQueueCapacity(pRetVal: Integer);
begin
  DefaultInterface.PullSubscriptionResolvedQueueCapacity := pRetVal;
end;

function TEasyUASubscriber.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TEasyUASubscriber.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TEasyUASubscriber.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TEasyUASubscriber.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

function TEasyUASubscriber.GetService(const serviceType: _Type): OleVariant;
begin
  Result := DefaultInterface.GetService(serviceType);
end;

function TEasyUASubscriber.GetServiceByName(const serviceTypeName: WideString): OleVariant;
begin
  Result := DefaultInterface.GetServiceByName(serviceTypeName);
end;

function TEasyUASubscriber.ValueEquals(other: OleVariant): WordBool;
begin
  Result := DefaultInterface.ValueEquals(other);
end;

procedure TEasyUASubscriber.ChangeDataSetSubscription(dataSetSubscriptionChangeArguments: OleVariant);
begin
  DefaultInterface.ChangeDataSetSubscription(dataSetSubscriptionChangeArguments);
end;

function TEasyUASubscriber.GetSubscribeDataSetArguments(dataSetHandle: Integer): _EasyUASubscribeDataSetArguments;
begin
  Result := DefaultInterface.GetSubscribeDataSetArguments(dataSetHandle);
end;

function TEasyUASubscriber.GetSubscribeDataSetArgumentsDictionary: _EasyUASubscribeDataSetArgumentsDictionary;
begin
  Result := DefaultInterface.GetSubscribeDataSetArgumentsDictionary;
end;

function TEasyUASubscriber.IsKnownDataSetSubscriptionHandle(dataSetHandle: Integer): WordBool;
begin
  Result := DefaultInterface.IsKnownDataSetSubscriptionHandle(dataSetHandle);
end;

function TEasyUASubscriber.PullDataSetMessage(millisecondsTimeout: Integer): _EasyUADataSetMessageEventArgs;
begin
  Result := DefaultInterface.PullDataSetMessage(millisecondsTimeout);
end;

function TEasyUASubscriber.PullDataSetMessageList(maximumCount: Integer; 
                                                  millisecondsTimeout: Integer): _ElasticVector;
begin
  Result := DefaultInterface.PullDataSetMessageList(maximumCount, millisecondsTimeout);
end;

function TEasyUASubscriber.PullMultipleDataSetMessages(maximumCount: Integer; 
                                                       millisecondsTimeout: Integer): PSafeArray;
begin
  Result := DefaultInterface.PullMultipleDataSetMessages(maximumCount, millisecondsTimeout);
end;

function TEasyUASubscriber.PullMultipleResolverAccesses(maximumCount: Integer; 
                                                        millisecondsTimeout: Integer): PSafeArray;
begin
  Result := DefaultInterface.PullMultipleResolverAccesses(maximumCount, millisecondsTimeout);
end;

function TEasyUASubscriber.PullMultipleSubscriptionResolvedNotifications(maximumCount: Integer; 
                                                                         millisecondsTimeout: Integer): PSafeArray;
begin
  Result := DefaultInterface.PullMultipleSubscriptionResolvedNotifications(maximumCount, 
                                                                           millisecondsTimeout);
end;

function TEasyUASubscriber.PullResolverAccess(millisecondsTimeout: Integer): _EasyUAResolverAccessEventArgs;
begin
  Result := DefaultInterface.PullResolverAccess(millisecondsTimeout);
end;

function TEasyUASubscriber.PullResolverAccessList(maximumCount: Integer; 
                                                  millisecondsTimeout: Integer): _ElasticVector;
begin
  Result := DefaultInterface.PullResolverAccessList(maximumCount, millisecondsTimeout);
end;

function TEasyUASubscriber.PullSubscriptionResolved(millisecondsTimeout: Integer): _EasyUASubscriptionResolvedEventArgs;
begin
  Result := DefaultInterface.PullSubscriptionResolved(millisecondsTimeout);
end;

function TEasyUASubscriber.PullSubscriptionResolvedList(maximumCount: Integer; 
                                                        millisecondsTimeout: Integer): _ElasticVector;
begin
  Result := DefaultInterface.PullSubscriptionResolvedList(maximumCount, millisecondsTimeout);
end;

procedure TEasyUASubscriber.Reset;
begin
  DefaultInterface.Reset;
end;

function TEasyUASubscriber.SubscribeDataSet(subscribeDataSetArguments: OleVariant): Integer;
begin
  Result := DefaultInterface.SubscribeDataSet(subscribeDataSetArguments);
end;

procedure TEasyUASubscriber.UnsubscribeAllDataSets;
begin
  DefaultInterface.UnsubscribeAllDataSets;
end;

procedure TEasyUASubscriber.UnsubscribeDataSet(dataSetHandle: Integer);
begin
  DefaultInterface.UnsubscribeDataSet(dataSetHandle);
end;

class function CoEasyUAPublishSubscribeClient.Create: _EasyUAPublishSubscribeClient;
begin
  Result := CreateComObject(CLASS_EasyUAPublishSubscribeClient) as _EasyUAPublishSubscribeClient;
end;

class function CoEasyUAPublishSubscribeClient.CreateRemote(const MachineName: string): _EasyUAPublishSubscribeClient;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyUAPublishSubscribeClient) as _EasyUAPublishSubscribeClient;
end;

procedure TEasyUAPublishSubscribeClient.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{0CBFF3B4-A000-445F-A931-9AFAA496A234}';
    IntfIID:   '{4CF8E5E7-2DFF-4BF7-B3E5-32767D5FCD0B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TEasyUAPublishSubscribeClient.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _EasyUAPublishSubscribeClient;
  end;
end;

procedure TEasyUAPublishSubscribeClient.ConnectTo(svrIntf: _EasyUAPublishSubscribeClient);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TEasyUAPublishSubscribeClient.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TEasyUAPublishSubscribeClient.GetDefaultInterface: _EasyUAPublishSubscribeClient;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TEasyUAPublishSubscribeClient.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TEasyUAPublishSubscribeClient.Destroy;
begin
  inherited Destroy;
end;

function TEasyUAPublishSubscribeClient.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TEasyUAPublishSubscribeClient.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TEasyUAPublishSubscribeClient.Get_CustomReference: WideString;
begin
  Result := DefaultInterface.CustomReference;
end;

procedure TEasyUAPublishSubscribeClient.Set_CustomReference(const pRetVal: WideString);
begin
  DefaultInterface.CustomReference := pRetVal;
end;

function TEasyUAPublishSubscribeClient.Get_ClientSelector: _EasyUAClientSelector;
begin
  Result := DefaultInterface.ClientSelector;
end;

procedure TEasyUAPublishSubscribeClient._Set_ClientSelector(const pRetVal: _EasyUAClientSelector);
begin
  DefaultInterface.ClientSelector := pRetVal;
end;

function TEasyUAPublishSubscribeClient.Get_IsDerived: WordBool;
begin
  Result := DefaultInterface.IsDerived;
end;

function TEasyUAPublishSubscribeClient.Get_UAEncodedReadOnlyConfigurationLoader: _StreamLoader;
begin
  Result := DefaultInterface.UAEncodedReadOnlyConfigurationLoader;
end;

function TEasyUAPublishSubscribeClient.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TEasyUAPublishSubscribeClient.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TEasyUAPublishSubscribeClient.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TEasyUAPublishSubscribeClient.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

function TEasyUAPublishSubscribeClient.GetService(const serviceType: _Type): OleVariant;
begin
  Result := DefaultInterface.GetService(serviceType);
end;

function TEasyUAPublishSubscribeClient.GetServiceByName(const serviceTypeName: WideString): OleVariant;
begin
  Result := DefaultInterface.GetServiceByName(serviceTypeName);
end;

function TEasyUAPublishSubscribeClient.ValueEquals(other: OleVariant): WordBool;
begin
  Result := DefaultInterface.ValueEquals(other);
end;

function TEasyUAPublishSubscribeClient.AsClient: _EasyUAClient;
begin
  Result := DefaultInterface.AsClient;
end;

function TEasyUAPublishSubscribeClient.AccessOrLoadReadOnlyConfiguration(endpointDescriptor: OleVariant; 
                                                                         pubSubConfigurationAccessMethod: UAPubSubConfigurationAccessMethod): _UAReadOnlyPubSubConfiguration;
begin
  Result := DefaultInterface.AccessOrLoadReadOnlyConfiguration(endpointDescriptor, 
                                                               pubSubConfigurationAccessMethod);
end;

function TEasyUAPublishSubscribeClient.AccessReadOnlyConfiguration(endpointDescriptor: OleVariant): _UAReadOnlyPubSubConfiguration;
begin
  Result := DefaultInterface.AccessReadOnlyConfiguration(endpointDescriptor);
end;

function TEasyUAPublishSubscribeClient.AccessReadOnlySecurityKeyService(endpointDescriptor: OleVariant): _UAReadOnlyPubSubSecurityKeyService;
begin
  Result := DefaultInterface.AccessReadOnlySecurityKeyService(endpointDescriptor);
end;

function TEasyUAPublishSubscribeClient.AccessSecurityKeyService(endpointDescriptor: OleVariant): _UAPubSubSecurityKeyService;
begin
  Result := DefaultInterface.AccessSecurityKeyService(endpointDescriptor);
end;

function TEasyUAPublishSubscribeClient.GetPublishSubscribeElement(endpointDescriptor: OleVariant): _UAPublishSubscribeElement;
begin
  Result := DefaultInterface.GetPublishSubscribeElement(endpointDescriptor);
end;

function TEasyUAPublishSubscribeClient.HasConfigurationFileNode(endpointDescriptor: OleVariant): WordBool;
begin
  Result := DefaultInterface.HasConfigurationFileNode(endpointDescriptor);
end;

function TEasyUAPublishSubscribeClient.HasConfigurationModel(endpointDescriptor: OleVariant): WordBool;
begin
  Result := DefaultInterface.HasConfigurationModel(endpointDescriptor);
end;

function TEasyUAPublishSubscribeClient.HasSecurityKeyServiceModel(endpointDescriptor: OleVariant): WordBool;
begin
  Result := DefaultInterface.HasSecurityKeyServiceModel(endpointDescriptor);
end;

function TEasyUAPublishSubscribeClient.LoadReadOnlyConfiguration(const filePathAndName: WideString): _UAReadOnlyPubSubConfiguration;
begin
  Result := DefaultInterface.LoadReadOnlyConfiguration(filePathAndName);
end;

function TEasyUAPublishSubscribeClient.LoadReadOnlyConfigurationFromFileNode(endpointDescriptor: OleVariant): _UAReadOnlyPubSubConfiguration;
begin
  Result := DefaultInterface.LoadReadOnlyConfigurationFromFileNode(endpointDescriptor);
end;

class function CoEasyUACertificateManagementClient.Create: _EasyUACertificateManagementClient;
begin
  Result := CreateComObject(CLASS_EasyUACertificateManagementClient) as _EasyUACertificateManagementClient;
end;

class function CoEasyUACertificateManagementClient.CreateRemote(const MachineName: string): _EasyUACertificateManagementClient;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyUACertificateManagementClient) as _EasyUACertificateManagementClient;
end;

procedure TEasyUACertificateManagementClient.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{77433805-E74B-4DD3-ADD5-864622DE9614}';
    IntfIID:   '{0BD47EE3-1436-4686-A88F-9E1577FBE764}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TEasyUACertificateManagementClient.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _EasyUACertificateManagementClient;
  end;
end;

procedure TEasyUACertificateManagementClient.ConnectTo(svrIntf: _EasyUACertificateManagementClient);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TEasyUACertificateManagementClient.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TEasyUACertificateManagementClient.GetDefaultInterface: _EasyUACertificateManagementClient;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TEasyUACertificateManagementClient.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TEasyUACertificateManagementClient.Destroy;
begin
  inherited Destroy;
end;

function TEasyUACertificateManagementClient.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TEasyUACertificateManagementClient.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TEasyUACertificateManagementClient.Get_CustomReference: WideString;
begin
  Result := DefaultInterface.CustomReference;
end;

procedure TEasyUACertificateManagementClient.Set_CustomReference(const pRetVal: WideString);
begin
  DefaultInterface.CustomReference := pRetVal;
end;

function TEasyUACertificateManagementClient.Get_ClientSelector: _EasyUAClientSelector;
begin
  Result := DefaultInterface.ClientSelector;
end;

procedure TEasyUACertificateManagementClient._Set_ClientSelector(const pRetVal: _EasyUAClientSelector);
begin
  DefaultInterface.ClientSelector := pRetVal;
end;

function TEasyUACertificateManagementClient.Get_IsDerived: WordBool;
begin
  Result := DefaultInterface.IsDerived;
end;

function TEasyUACertificateManagementClient.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TEasyUACertificateManagementClient.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TEasyUACertificateManagementClient.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TEasyUACertificateManagementClient.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

function TEasyUACertificateManagementClient.GetService(const serviceType: _Type): OleVariant;
begin
  Result := DefaultInterface.GetService(serviceType);
end;

function TEasyUACertificateManagementClient.GetServiceByName(const serviceTypeName: WideString): OleVariant;
begin
  Result := DefaultInterface.GetServiceByName(serviceTypeName);
end;

function TEasyUACertificateManagementClient.ValueEquals(other: OleVariant): WordBool;
begin
  Result := DefaultInterface.ValueEquals(other);
end;

function TEasyUACertificateManagementClient.AsClient: _EasyUAClient;
begin
  Result := DefaultInterface.AsClient;
end;

function TEasyUACertificateManagementClient.BrowseCertificateGroups(gdsEndpointDescriptor: OleVariant): _UACertificateGroupElementCollection;
begin
  Result := DefaultInterface.BrowseCertificateGroups(gdsEndpointDescriptor);
end;

procedure TEasyUACertificateManagementClient.FinishRequest(gdsEndpointDescriptor: OleVariant; 
                                                           applicationId: OleVariant; 
                                                           requestId: OleVariant; 
                                                           out certificate: OleVariant; 
                                                           out privateKey: OleVariant; 
                                                           out issuerCertificateArray: OleVariant);
begin
  DefaultInterface.FinishRequest(gdsEndpointDescriptor, applicationId, requestId, certificate, 
                                 privateKey, issuerCertificateArray);
end;

function TEasyUACertificateManagementClient.GetCertificateGroupElement(gdsEndpointDescriptor: OleVariant; 
                                                                       certificateGroupId: OleVariant): _UACertificateGroupElement;
begin
  Result := DefaultInterface.GetCertificateGroupElement(gdsEndpointDescriptor, certificateGroupId);
end;

function TEasyUACertificateManagementClient.GetCertificateGroupIds(gdsEndpointDescriptor: OleVariant; 
                                                                   applicationId: OleVariant): PSafeArray;
begin
  Result := DefaultInterface.GetCertificateGroupIds(gdsEndpointDescriptor, applicationId);
end;

function TEasyUACertificateManagementClient.GetCertificateStatus(gdsEndpointDescriptor: OleVariant; 
                                                                 applicationId: OleVariant; 
                                                                 certificateGroupId: OleVariant; 
                                                                 certificateTypeId: OleVariant): WordBool;
begin
  Result := DefaultInterface.GetCertificateStatus(gdsEndpointDescriptor, applicationId, 
                                                  certificateGroupId, certificateTypeId);
end;

function TEasyUACertificateManagementClient.GetTrustList(gdsEndpointDescriptor: OleVariant; 
                                                         applicationId: OleVariant; 
                                                         certificateGroupId: OleVariant): _UANodeId;
begin
  Result := DefaultInterface.GetTrustList(gdsEndpointDescriptor, applicationId, certificateGroupId);
end;

function TEasyUACertificateManagementClient.StartNewKeyPairRequest(gdsEndpointDescriptor: OleVariant; 
                                                                   applicationId: OleVariant; 
                                                                   certificateGroupId: OleVariant; 
                                                                   certificateTypeId: OleVariant; 
                                                                   const subjectName: WideString; 
                                                                   domainNames: OleVariant; 
                                                                   const privateKeyFormat: WideString; 
                                                                   const privateKeyPassword: WideString): _UANodeId;
begin
  Result := DefaultInterface.StartNewKeyPairRequest(gdsEndpointDescriptor, applicationId, 
                                                    certificateGroupId, certificateTypeId, 
                                                    subjectName, domainNames, privateKeyFormat, 
                                                    privateKeyPassword);
end;

function TEasyUACertificateManagementClient.StartSigningRequest(gdsEndpointDescriptor: OleVariant; 
                                                                applicationId: OleVariant; 
                                                                certificateGroupId: OleVariant; 
                                                                certificateTypeId: OleVariant; 
                                                                certificateRequest: OleVariant): _UANodeId;
begin
  Result := DefaultInterface.StartSigningRequest(gdsEndpointDescriptor, applicationId, 
                                                 certificateGroupId, certificateTypeId, 
                                                 certificateRequest);
end;

class function CoEasyUAGlobalDiscoveryClient.Create: _EasyUAGlobalDiscoveryClient;
begin
  Result := CreateComObject(CLASS_EasyUAGlobalDiscoveryClient) as _EasyUAGlobalDiscoveryClient;
end;

class function CoEasyUAGlobalDiscoveryClient.CreateRemote(const MachineName: string): _EasyUAGlobalDiscoveryClient;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyUAGlobalDiscoveryClient) as _EasyUAGlobalDiscoveryClient;
end;

procedure TEasyUAGlobalDiscoveryClient.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{FB120EFE-125F-48F5-8718-5B508A44A619}';
    IntfIID:   '{9832BE91-FBD4-40A5-99DF-7BE9222E9A80}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TEasyUAGlobalDiscoveryClient.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _EasyUAGlobalDiscoveryClient;
  end;
end;

procedure TEasyUAGlobalDiscoveryClient.ConnectTo(svrIntf: _EasyUAGlobalDiscoveryClient);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TEasyUAGlobalDiscoveryClient.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TEasyUAGlobalDiscoveryClient.GetDefaultInterface: _EasyUAGlobalDiscoveryClient;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TEasyUAGlobalDiscoveryClient.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TEasyUAGlobalDiscoveryClient.Destroy;
begin
  inherited Destroy;
end;

function TEasyUAGlobalDiscoveryClient.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TEasyUAGlobalDiscoveryClient.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TEasyUAGlobalDiscoveryClient.Get_CustomReference: WideString;
begin
  Result := DefaultInterface.CustomReference;
end;

procedure TEasyUAGlobalDiscoveryClient.Set_CustomReference(const pRetVal: WideString);
begin
  DefaultInterface.CustomReference := pRetVal;
end;

function TEasyUAGlobalDiscoveryClient.Get_ClientSelector: _EasyUAClientSelector;
begin
  Result := DefaultInterface.ClientSelector;
end;

procedure TEasyUAGlobalDiscoveryClient._Set_ClientSelector(const pRetVal: _EasyUAClientSelector);
begin
  DefaultInterface.ClientSelector := pRetVal;
end;

function TEasyUAGlobalDiscoveryClient.Get_IsDerived: WordBool;
begin
  Result := DefaultInterface.IsDerived;
end;

function TEasyUAGlobalDiscoveryClient.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TEasyUAGlobalDiscoveryClient.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TEasyUAGlobalDiscoveryClient.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TEasyUAGlobalDiscoveryClient.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

function TEasyUAGlobalDiscoveryClient.GetService(const serviceType: _Type): OleVariant;
begin
  Result := DefaultInterface.GetService(serviceType);
end;

function TEasyUAGlobalDiscoveryClient.GetServiceByName(const serviceTypeName: WideString): OleVariant;
begin
  Result := DefaultInterface.GetServiceByName(serviceTypeName);
end;

function TEasyUAGlobalDiscoveryClient.ValueEquals(other: OleVariant): WordBool;
begin
  Result := DefaultInterface.ValueEquals(other);
end;

function TEasyUAGlobalDiscoveryClient.AsClient: _EasyUAClient;
begin
  Result := DefaultInterface.AsClient;
end;

function TEasyUAGlobalDiscoveryClient.FindApplications(gdsEndpointDescriptor: OleVariant; 
                                                       const applicationUriString: WideString): PSafeArray;
begin
  Result := DefaultInterface.FindApplications(gdsEndpointDescriptor, applicationUriString);
end;

function TEasyUAGlobalDiscoveryClient.GetApplication(gdsEndpointDescriptor: OleVariant; 
                                                     applicationId: OleVariant): _UAApplicationRecordDataType;
begin
  Result := DefaultInterface.GetApplication(gdsEndpointDescriptor, applicationId);
end;

procedure TEasyUAGlobalDiscoveryClient.QueryApplications(gdsEndpointDescriptor: OleVariant; 
                                                         startingRecordId: Integer; 
                                                         maximumRecordsToReturn: Integer; 
                                                         const applicationName: WideString; 
                                                         const applicationUriString: WideString; 
                                                         applicationTypes: UAApplicationTypes; 
                                                         const productUriString: WideString; 
                                                         serverCapabilities: OleVariant; 
                                                         out lastCounterResetTime: TDateTime; 
                                                         out nextRecordId: Integer; 
                                                         out applications: OleVariant);
begin
  DefaultInterface.QueryApplications(gdsEndpointDescriptor, startingRecordId, 
                                     maximumRecordsToReturn, applicationName, applicationUriString, 
                                     applicationTypes, productUriString, serverCapabilities, 
                                     lastCounterResetTime, nextRecordId, applications);
end;

procedure TEasyUAGlobalDiscoveryClient.QueryServers(gdsEndpointDescriptor: OleVariant; 
                                                    startingRecordId: Integer; 
                                                    maximumRecordsToReturn: Integer; 
                                                    const applicationName: WideString; 
                                                    const applicationUriString: WideString; 
                                                    const productUriString: WideString; 
                                                    serverCapabilities: OleVariant; 
                                                    out lastCounterResetTime: TDateTime; 
                                                    out serverOnNetworkArray: OleVariant);
begin
  DefaultInterface.QueryServers(gdsEndpointDescriptor, startingRecordId, maximumRecordsToReturn, 
                                applicationName, applicationUriString, productUriString, 
                                serverCapabilities, lastCounterResetTime, serverOnNetworkArray);
end;

function TEasyUAGlobalDiscoveryClient.RegisterApplication(gdsEndpointDescriptor: OleVariant; 
                                                          applicationRecord: OleVariant): _UANodeId;
begin
  Result := DefaultInterface.RegisterApplication(gdsEndpointDescriptor, applicationRecord);
end;

procedure TEasyUAGlobalDiscoveryClient.UnregisterApplication(gdsEndpointDescriptor: OleVariant; 
                                                             applicationId: OleVariant);
begin
  DefaultInterface.UnregisterApplication(gdsEndpointDescriptor, applicationId);
end;

procedure TEasyUAGlobalDiscoveryClient.UpdateApplication(gdsEndpointDescriptor: OleVariant; 
                                                         applicationRecord: OleVariant);
begin
  DefaultInterface.UpdateApplication(gdsEndpointDescriptor, applicationRecord);
end;

class function CoEasyUAApplication.Create: _EasyUAApplication;
begin
  Result := CreateComObject(CLASS_EasyUAApplication) as _EasyUAApplication;
end;

class function CoEasyUAApplication.CreateRemote(const MachineName: string): _EasyUAApplication;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyUAApplication) as _EasyUAApplication;
end;

procedure TEasyUAApplication.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{0F6BE934-443D-4037-A4E8-E4F4A64394BC}';
    IntfIID:   '{BACB537A-2156-4EC0-A9DB-495830D16CF7}';
    EventIID:  '{EC6416F4-BEEB-4DB9-A698-22626D5ACFF1}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TEasyUAApplication.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _EasyUAApplication;
  end;
end;

procedure TEasyUAApplication.ConnectTo(svrIntf: _EasyUAApplication);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TEasyUAApplication.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TEasyUAApplication.GetDefaultInterface: _EasyUAApplication;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TEasyUAApplication.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TEasyUAApplication.Destroy;
begin
  inherited Destroy;
end;

procedure TEasyUAApplication.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    1001: if Assigned(FOnPrivateKeyPasswordChanged) then
         FOnPrivateKeyPasswordChanged(Self,
                                      Params[0] {OleVariant},
                                      IUnknown(TVarData(Params[1]).VPointer) as _DataEventArgs {const _DataEventArgs});
  end; {case DispID}
end;

function TEasyUAApplication.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TEasyUAApplication.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TEasyUAApplication.Get_CustomReference: WideString;
begin
  Result := DefaultInterface.CustomReference;
end;

procedure TEasyUAApplication.Set_CustomReference(const pRetVal: WideString);
begin
  DefaultInterface.CustomReference := pRetVal;
end;

function TEasyUAApplication.Get_ApplicationIdDictionary: _StringUANodeIdReadOnlyDictionary;
begin
  Result := DefaultInterface.ApplicationIdDictionary;
end;

function TEasyUAApplication.Get_ApplicationStoreGroup: IUnknown;
begin
  Result := DefaultInterface.ApplicationStoreGroup;
end;

function TEasyUAApplication.Get_CertificateGenerationParameters: _CertificateGenerationParameters;
begin
  Result := DefaultInterface.CertificateGenerationParameters;
end;

function TEasyUAApplication.Get_CertificateRequestParameters: _UACertificateRequestParameters;
begin
  Result := DefaultInterface.CertificateRequestParameters;
end;

function TEasyUAApplication.Get_HostNames: _StringCollection;
begin
  Result := DefaultInterface.HostNames;
end;

function TEasyUAApplication.Get_SupportsGds: WordBool;
begin
  Result := DefaultInterface.SupportsGds;
end;

function TEasyUAApplication.Get_ApplicationParameters: _UAClientServerApplicationParameters;
begin
  Result := DefaultInterface.ApplicationParameters;
end;

procedure TEasyUAApplication._Set_ApplicationParameters(const pRetVal: _UAClientServerApplicationParameters);
begin
  DefaultInterface.ApplicationParameters := pRetVal;
end;

function TEasyUAApplication.Get_SerializeSharedData: WordBool;
begin
  Result := DefaultInterface.SerializeSharedData;
end;

procedure TEasyUAApplication.Set_SerializeSharedData(pRetVal: WordBool);
begin
  DefaultInterface.SerializeSharedData := pRetVal;
end;

function TEasyUAApplication.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TEasyUAApplication.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TEasyUAApplication.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TEasyUAApplication.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

function TEasyUAApplication.GetService(const serviceType: _Type): OleVariant;
begin
  Result := DefaultInterface.GetService(serviceType);
end;

function TEasyUAApplication.GetServiceByName(const serviceTypeName: WideString): OleVariant;
begin
  Result := DefaultInterface.GetServiceByName(serviceTypeName);
end;

function TEasyUAApplication.ValueEquals(other: OleVariant): WordBool;
begin
  Result := DefaultInterface.ValueEquals(other);
end;

function TEasyUAApplication.AssureOwnCertificate(createOwnCertificateArguments: OleVariant): WordBool;
begin
  Result := DefaultInterface.AssureOwnCertificate(createOwnCertificateArguments);
end;

procedure TEasyUAApplication.CreateOwnCertificate(createOwnCertificateArguments: OleVariant);
begin
  DefaultInterface.CreateOwnCertificate(createOwnCertificateArguments);
end;

procedure TEasyUAApplication.ExportApplicationConfiguration(const stream: _Stream);
begin
  DefaultInterface.ExportApplicationConfiguration(stream);
end;

procedure TEasyUAApplication.ExportApplicationConfigurationToFile(const filePath: WideString);
begin
  DefaultInterface.ExportApplicationConfigurationToFile(filePath);
end;

procedure TEasyUAApplication.ExportOwnCertificateToFile(exportCertificateArguments: OleVariant);
begin
  DefaultInterface.ExportOwnCertificateToFile(exportCertificateArguments);
end;

procedure TEasyUAApplication.ExportRegisteredApplication(const stream: _Stream);
begin
  DefaultInterface.ExportRegisteredApplication(stream);
end;

procedure TEasyUAApplication.ExportRegisteredApplicationToFile(const filePath: WideString);
begin
  DefaultInterface.ExportRegisteredApplicationToFile(filePath);
end;

procedure TEasyUAApplication.ExportSecuredApplication(const stream: _Stream);
begin
  DefaultInterface.ExportSecuredApplication(stream);
end;

procedure TEasyUAApplication.ExportSecuredApplicationToFile(const filePath: WideString);
begin
  DefaultInterface.ExportSecuredApplicationToFile(filePath);
end;

function TEasyUAApplication.FindGdsRegistrations(gdsEndpointDescriptor: OleVariant): _UANodeIdUAApplicationElementReadOnlyDictionary;
begin
  Result := DefaultInterface.FindGdsRegistrations(gdsEndpointDescriptor);
end;

function TEasyUAApplication.FindOwnCertificate(const certificateSubId: WideString): _PkiCertificate;
begin
  Result := DefaultInterface.FindOwnCertificate(certificateSubId);
end;

function TEasyUAApplication.GetApplicationElement: _UAApplicationElement;
begin
  Result := DefaultInterface.GetApplicationElement;
end;

function TEasyUAApplication.GetApplicationId(gdsEndpointDescriptor: OleVariant): _UANodeId;
begin
  Result := DefaultInterface.GetApplicationId(gdsEndpointDescriptor);
end;

function TEasyUAApplication.GetCertificateSubjectName(const certificateSubId: WideString): WideString;
begin
  Result := DefaultInterface.GetCertificateSubjectName(certificateSubId);
end;

function TEasyUAApplication.GetCertificateSubjectNameDictionary: _StringStringDictionary;
begin
  Result := DefaultInterface.GetCertificateSubjectNameDictionary;
end;

function TEasyUAApplication.GetEffectiveApplicationManifest: _UAApplicationManifest;
begin
  Result := DefaultInterface.GetEffectiveApplicationManifest;
end;

function TEasyUAApplication.GetEffectiveHostNames(alternateHostNames: OleVariant): _StringCollection;
begin
  Result := DefaultInterface.GetEffectiveHostNames(alternateHostNames);
end;

function TEasyUAApplication.GetPrivateKeyPasswordStrength(const certificateSubId: WideString): Single;
begin
  Result := DefaultInterface.GetPrivateKeyPasswordStrength(certificateSubId);
end;

function TEasyUAApplication.HasOwnCertificate(const certificateSubId: WideString): WordBool;
begin
  Result := DefaultInterface.HasOwnCertificate(certificateSubId);
end;

function TEasyUAApplication.HasPrivateKeyPassword(const certificateSubId: WideString): WordBool;
begin
  Result := DefaultInterface.HasPrivateKeyPassword(certificateSubId);
end;

procedure TEasyUAApplication.ImportOwnCertificateFromFile(importCertificateArguments: OleVariant);
begin
  DefaultInterface.ImportOwnCertificateFromFile(importCertificateArguments);
end;

function TEasyUAApplication.ListCertificateSubIds: _StringSet;
begin
  Result := DefaultInterface.ListCertificateSubIds;
end;

function TEasyUAApplication.ListCertificateTypeElements(gdsEndpointDescriptor: OleVariant; 
                                                        applicationStoreKind: PkiApplicationStoreKind): _UACertificateTypeElementCollection;
begin
  Result := DefaultInterface.ListCertificateTypeElements(gdsEndpointDescriptor, applicationStoreKind);
end;

function TEasyUAApplication.ObtainNewCertificate(Arguments: OleVariant): _PkiCertificate;
begin
  Result := DefaultInterface.ObtainNewCertificate(Arguments);
end;

function TEasyUAApplication.ProtectOrUnprotectOwnCertificate(const certificateSubId: WideString; 
                                                             const newPrivateKeyPassword: WideString): WordBool;
begin
  Result := DefaultInterface.ProtectOrUnprotectOwnCertificate(certificateSubId, 
                                                              newPrivateKeyPassword);
end;

procedure TEasyUAApplication.ProtectOwnCertificate(const newPrivateKeyPassword: WideString);
begin
  DefaultInterface.ProtectOwnCertificate(newPrivateKeyPassword);
end;

function TEasyUAApplication.RefreshTrustLists(gdsEndpointDescriptor: OleVariant; 
                                              updateGdsRegistration: WordBool): UATrustListMasks;
begin
  Result := DefaultInterface.RefreshTrustLists(gdsEndpointDescriptor, updateGdsRegistration);
end;

function TEasyUAApplication.RegisterToGds(gdsEndpointDescriptor: OleVariant): _UANodeId;
begin
  Result := DefaultInterface.RegisterToGds(gdsEndpointDescriptor);
end;

function TEasyUAApplication.RemoveOwnCertificates(const certificateSubIdPattern: WideString; 
                                                  mustExist: WordBool; 
                                                  updateTrustedPeerCertificates: WordBool): Integer;
begin
  Result := DefaultInterface.RemoveOwnCertificates(certificateSubIdPattern, mustExist, 
                                                   updateTrustedPeerCertificates);
end;

procedure TEasyUAApplication.RemovePrivateKeyPassword(const certificateSubId: WideString);
begin
  DefaultInterface.RemovePrivateKeyPassword(certificateSubId);
end;

procedure TEasyUAApplication.SetPrivateKeyPassword(const certificateSubId: WideString; 
                                                   const privateKeyPassword: WideString);
begin
  DefaultInterface.SetPrivateKeyPassword(certificateSubId, privateKeyPassword);
end;

procedure TEasyUAApplication.UnprotectOwnCertificate;
begin
  DefaultInterface.UnprotectOwnCertificate;
end;

procedure TEasyUAApplication.UnregisterFromGds(gdsEndpointDescriptor: OleVariant);
begin
  DefaultInterface.UnregisterFromGds(gdsEndpointDescriptor);
end;

function TEasyUAApplication.updateGdsRegistration(gdsEndpointDescriptor: OleVariant): _UANodeId;
begin
  Result := DefaultInterface.updateGdsRegistration(gdsEndpointDescriptor);
end;

procedure TEasyUAApplication.ValidateOwnCertificate(certificateGenerationArguments: OleVariant);
begin
  DefaultInterface.ValidateOwnCertificate(certificateGenerationArguments);
end;

class function CoEasyUAAlarmsAndConditionsClient.Create: _EasyUAAlarmsAndConditionsClient;
begin
  Result := CreateComObject(CLASS_EasyUAAlarmsAndConditionsClient) as _EasyUAAlarmsAndConditionsClient;
end;

class function CoEasyUAAlarmsAndConditionsClient.CreateRemote(const MachineName: string): _EasyUAAlarmsAndConditionsClient;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyUAAlarmsAndConditionsClient) as _EasyUAAlarmsAndConditionsClient;
end;

procedure TEasyUAAlarmsAndConditionsClient.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{BDE0A98B-801E-4A29-9428-946B7378E803}';
    IntfIID:   '{E1916D61-718B-41E2-9F77-D012769D29E6}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TEasyUAAlarmsAndConditionsClient.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _EasyUAAlarmsAndConditionsClient;
  end;
end;

procedure TEasyUAAlarmsAndConditionsClient.ConnectTo(svrIntf: _EasyUAAlarmsAndConditionsClient);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TEasyUAAlarmsAndConditionsClient.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TEasyUAAlarmsAndConditionsClient.GetDefaultInterface: _EasyUAAlarmsAndConditionsClient;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TEasyUAAlarmsAndConditionsClient.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TEasyUAAlarmsAndConditionsClient.Destroy;
begin
  inherited Destroy;
end;

function TEasyUAAlarmsAndConditionsClient.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TEasyUAAlarmsAndConditionsClient.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TEasyUAAlarmsAndConditionsClient.Get_CustomReference: WideString;
begin
  Result := DefaultInterface.CustomReference;
end;

procedure TEasyUAAlarmsAndConditionsClient.Set_CustomReference(const pRetVal: WideString);
begin
  DefaultInterface.CustomReference := pRetVal;
end;

function TEasyUAAlarmsAndConditionsClient.Get_ClientSelector: _EasyUAClientSelector;
begin
  Result := DefaultInterface.ClientSelector;
end;

procedure TEasyUAAlarmsAndConditionsClient._Set_ClientSelector(const pRetVal: _EasyUAClientSelector);
begin
  DefaultInterface.ClientSelector := pRetVal;
end;

function TEasyUAAlarmsAndConditionsClient.Get_IsDerived: WordBool;
begin
  Result := DefaultInterface.IsDerived;
end;

function TEasyUAAlarmsAndConditionsClient.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TEasyUAAlarmsAndConditionsClient.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TEasyUAAlarmsAndConditionsClient.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TEasyUAAlarmsAndConditionsClient.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

function TEasyUAAlarmsAndConditionsClient.GetService(const serviceType: _Type): OleVariant;
begin
  Result := DefaultInterface.GetService(serviceType);
end;

function TEasyUAAlarmsAndConditionsClient.GetServiceByName(const serviceTypeName: WideString): OleVariant;
begin
  Result := DefaultInterface.GetServiceByName(serviceTypeName);
end;

function TEasyUAAlarmsAndConditionsClient.ValueEquals(other: OleVariant): WordBool;
begin
  Result := DefaultInterface.ValueEquals(other);
end;

function TEasyUAAlarmsAndConditionsClient.AsClient: _EasyUAClient;
begin
  Result := DefaultInterface.AsClient;
end;

procedure TEasyUAAlarmsAndConditionsClient.Acknowledge(endpointDescriptor: OleVariant; 
                                                       objectOrConditionNodeDescriptor: OleVariant; 
                                                       eventId: OleVariant; 
                                                       const comment: WideString);
begin
  DefaultInterface.Acknowledge(endpointDescriptor, objectOrConditionNodeDescriptor, eventId, comment);
end;

procedure TEasyUAAlarmsAndConditionsClient.AddComment(endpointDescriptor: OleVariant; 
                                                      objectOrConditionNodeDescriptor: OleVariant; 
                                                      eventId: OleVariant; const comment: WideString);
begin
  DefaultInterface.AddComment(endpointDescriptor, objectOrConditionNodeDescriptor, eventId, comment);
end;

procedure TEasyUAAlarmsAndConditionsClient.Confirm(endpointDescriptor: OleVariant; 
                                                   objectOrConditionNodeDescriptor: OleVariant; 
                                                   eventId: OleVariant; const comment: WideString);
begin
  DefaultInterface.Confirm(endpointDescriptor, objectOrConditionNodeDescriptor, eventId, comment);
end;

procedure TEasyUAAlarmsAndConditionsClient.Disable(endpointDescriptor: OleVariant; 
                                                   objectOrConditionNodeDescriptor: OleVariant);
begin
  DefaultInterface.Disable(endpointDescriptor, objectOrConditionNodeDescriptor);
end;

procedure TEasyUAAlarmsAndConditionsClient.Enable(endpointDescriptor: OleVariant; 
                                                  objectOrConditionNodeDescriptor: OleVariant);
begin
  DefaultInterface.Enable(endpointDescriptor, objectOrConditionNodeDescriptor);
end;

procedure TEasyUAAlarmsAndConditionsClient.OneShotShelve(endpointDescriptor: OleVariant; 
                                                         objectOrConditionNodeDescriptor: OleVariant);
begin
  DefaultInterface.OneShotShelve(endpointDescriptor, objectOrConditionNodeDescriptor);
end;

procedure TEasyUAAlarmsAndConditionsClient.Respond(endpointDescriptor: OleVariant; 
                                                   objectOrConditionNodeDescriptor: OleVariant; 
                                                   selectedResponse: Integer);
begin
  DefaultInterface.Respond(endpointDescriptor, objectOrConditionNodeDescriptor, selectedResponse);
end;

procedure TEasyUAAlarmsAndConditionsClient.TimedShelve(endpointDescriptor: OleVariant; 
                                                       objectOrConditionNodeDescriptor: OleVariant; 
                                                       millisecondsShelvingTime: Double);
begin
  DefaultInterface.TimedShelve(endpointDescriptor, objectOrConditionNodeDescriptor, 
                               millisecondsShelvingTime);
end;

procedure TEasyUAAlarmsAndConditionsClient.Unshelve(endpointDescriptor: OleVariant; 
                                                    objectOrConditionNodeDescriptor: OleVariant);
begin
  DefaultInterface.Unshelve(endpointDescriptor, objectOrConditionNodeDescriptor);
end;

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TEasyUAClientManagement, TEasyUAClient, TEasyUASubscriberManagement, TEasyUASubscriber, 
    TEasyUAPublishSubscribeClient, TEasyUACertificateManagementClient, TEasyUAGlobalDiscoveryClient, TEasyUAApplication, TEasyUAAlarmsAndConditionsClient]);
end;

end.
