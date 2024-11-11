unit OpcLabs_EasyOpcForms_TLB;

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
// File generated on 11/3/2024 2:17:14 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\OPC Labs OPC Studio 2024.2\SDK\lib\OpcLabs.EasyOpcForms.tlb (1)
// LIBID: {2C654FA0-6CD6-496D-A64E-CE2D2925F388}
// LCID: 0
// Helpfile: 
// HelpString: OPC Labs EasyOPC Forms
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
//   (3) v5.81 OpcLabs_BaseLib, (C:\Program Files (x86)\OPC Labs OPC Studio 2024.2\SDK\lib\OpcLabs.BaseLib.tlb)
//   (4) v2.4 System, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.tlb)
//   (5) v5.81 OpcLabs_BaseLibForms, (C:\Program Files (x86)\OPC Labs OPC Studio 2024.2\SDK\lib\OpcLabs.BaseLibForms.tlb)
//   (6) v2.4 System_Windows_Forms, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.Windows.Forms.tlb)
//   (7) v5.81 OpcLabs_EasyOpcUA, (C:\Program Files (x86)\OPC Labs OPC Studio 2024.2\SDK\lib\OpcLabs.EasyOpcUA.tlb)
//   (8) v2.4 System_Drawing, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.Drawing.tlb)
//   (9) v5.81 OpcLabs_EasyOpcClassic, (C:\Program Files (x86)\OPC Labs OPC Studio 2024.2\SDK\lib\OpcLabs.EasyOpcClassic.tlb)
//   (10) v5.81 OpcLabs_EasyOpcClassicCore, (C:\Program Files (x86)\OPC Labs OPC Studio 2024.2\SDK\lib\OpcLabs.EasyOpcClassicCore.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, mscorlib_TLB, OpcLabs_BaseLib_TLB, OpcLabs_BaseLibForms_TLB, OpcLabs_EasyOpcClassic_TLB, OpcLabs_EasyOpcClassicCore_TLB, OpcLabs_EasyOpcUA_TLB, System.Classes, 
System.Variants, System.Win.StdVCL, System_Drawing_TLB, System_TLB, System_Windows_Forms_TLB, Vcl.Graphics, 
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
  OpcLabs_EasyOpcFormsMajorVersion = 5;
  OpcLabs_EasyOpcFormsMinorVersion = 81;

  LIBID_OpcLabs_EasyOpcForms: TGUID = '{2C654FA0-6CD6-496D-A64E-CE2D2925F388}';

  IID__UABrowseInputs: TGUID = '{8DEC0ADC-E183-47BD-BB3D-EA22ADA30341}';
  IID__UABrowseInputsOutputs: TGUID = '{C6A5FE28-30F0-40B2-8292-C7D1455150CF}';
  IID__UABrowseMode: TGUID = '{87F93898-E860-4E9B-993B-2CACD0E02502}';
  IID__UABrowseNodeDescriptor: TGUID = '{C603A6B8-B08A-480B-921C-7607C1358DB0}';
  IID__UABrowseNodeElement: TGUID = '{63246805-4016-42AC-91AA-76304C40332D}';
  IID__UABrowseOutputs: TGUID = '{21044995-5669-491F-B00F-3FC5DA9D1242}';
  IID__UABrowseNodeDescriptorCollection: TGUID = '{D55AB417-9E03-4CF5-8E60-275542861905}';
  IID__UABrowseNodeElementCollection: TGUID = '{277A8A43-309F-4480-8EDC-E5E720DBEEF5}';
  IID__UABrowseDialog: TGUID = '{7A206458-84DE-4066-ABD3-41016B63C32A}';
  IID__UADialog: TGUID = '{F0500DD4-7228-4834-B1C2-B84A3CCEE0CD}';
  IID__UAEndpointDialog: TGUID = '{3BD24237-FB61-4891-8627-EF6A71D29C87}';
  IID__UAHostAndEndpointDialog: TGUID = '{175A791E-4BB5-4731-9EA5-7D87055FA3AE}';
  CLASS_UABrowseDialog: TGUID = '{D5E91058-41DF-40D9-8DCC-795F166D0311}';
  CLASS_UABrowseInputs: TGUID = '{1F58092E-A5D1-410E-9CD8-3071934FE9C4}';
  CLASS_UABrowseInputsOutputs: TGUID = '{47D08B9F-F958-4DBA-B70F-F7BCCAF0EA7A}';
  CLASS_UABrowseMode: TGUID = '{25209B73-641B-4045-B486-E6E72C7DBE8B}';
  CLASS_UABrowseNodeDescriptor: TGUID = '{258653C1-0EBA-4F2E-8BA2-94D34BD5A74B}';
  CLASS_UABrowseNodeDescriptorCollection: TGUID = '{085292E1-55BC-46BB-9C56-0FCB914533D9}';
  CLASS_UABrowseNodeElement: TGUID = '{2BFC252D-7EE7-46D7-98C3-14F0690D48C8}';
  CLASS_UABrowseNodeElementCollection: TGUID = '{DD59B9AD-785E-49E9-A0CB-CB0ECA2CEF90}';
  CLASS_UABrowseOutputs: TGUID = '{5FAE39C3-F0F0-46B9-895A-8AAD9E70ED31}';
  IID__UADataDialog: TGUID = '{68798837-AA6C-4412-B9A2-F069BF8BE160}';
  CLASS_UADataDialog: TGUID = '{F444999E-AF8E-4EA8-A425-786B468B1380}';
  CLASS_UAEndpointDialog: TGUID = '{E4858B41-DFE7-4A53-A875-3F0865FC23F4}';
  CLASS_UAHostAndEndpointDialog: TGUID = '{0612DEF8-C143-45F4-A58F-C9C6A2B4AAA6}';
  IID__OpcBrowseInputs: TGUID = '{F3B1F692-DFCD-4C63-8C93-930E5D220789}';
  IID__OpcBrowseInputsOutputs: TGUID = '{2A9A8B80-F43F-4236-B090-0D336DD2A971}';
  IID__OpcBrowseMode: TGUID = '{F6F1B857-7596-41EA-8260-7F522B314940}';
  IID__OpcBrowseNodeDescriptor: TGUID = '{019441F9-BB58-4BD3-B2B9-2E57D4F7A43B}';
  IID__OpcBrowseNodeElement: TGUID = '{CF1B2DFF-EF65-472A-8BA0-19BD6232C866}';
  IID__OpcBrowseOutputs: TGUID = '{361172AA-7D78-48B9-87D2-C0908E70FD1E}';
  IID__OpcBrowseNodeDescriptorCollection: TGUID = '{A92E4086-E2D0-4B07-8E19-5D7B5B0A3364}';
  IID__OpcBrowseNodeElementCollection: TGUID = '{24D5CF0C-88BF-446B-BA78-BBDC022D1EBE}';
  IID__OpcBrowseDialog: TGUID = '{0AA07238-D0EB-44A6-B1A4-C18F6BF4DE44}';
  IID__OpcDialog: TGUID = '{1D016179-EFD8-44BB-AF07-9DEAEFD4044C}';
  IID__OpcServerDialog: TGUID = '{50F0BA3D-30B6-40C6-882A-323484B9DD4C}';
  CLASS_OpcBrowseDialog: TGUID = '{DF6649D4-A24A-4AA0-AA62-7FAC59FE2E99}';
  CLASS_OpcBrowseInputs: TGUID = '{03AECA28-CABD-4463-B4B9-FC09E3228B6B}';
  CLASS_OpcBrowseInputsOutputs: TGUID = '{01E2D03D-86A8-41F1-B648-4E2D0B774A02}';
  CLASS_OpcBrowseMode: TGUID = '{B63C9B87-49B1-4190-8CCA-08049DBC5E91}';
  CLASS_OpcBrowseNodeDescriptor: TGUID = '{53C9181C-2F63-476E-ABB2-5CE6EA4337CE}';
  CLASS_OpcBrowseNodeDescriptorCollection: TGUID = '{417D2B3C-904B-4C7E-9CBB-72A6BD67344B}';
  CLASS_OpcBrowseNodeElement: TGUID = '{5C0D47E7-60F9-4E2B-8714-9D1BC9E656D8}';
  CLASS_OpcBrowseNodeElementCollection: TGUID = '{8F0517E4-6B9C-4BE7-911D-D8607312B35E}';
  CLASS_OpcBrowseOutputs: TGUID = '{C6105D9F-6066-44F3-A72E-A87DB632595A}';
  IID__OpcComputerAndServerDialog: TGUID = '{B27210A2-2E46-4417-B549-714B50BC7C86}';
  CLASS_OpcComputerAndServerDialog: TGUID = '{D3D40A97-847B-4E86-84C3-1AE9DB949218}';
  CLASS_OpcServerDialog: TGUID = '{DF678162-A326-4BDF-9427-914A44C51FD2}';
  IID__DADialog: TGUID = '{24225CEA-40AD-4EEA-9E6D-D81EDD410BDB}';
  IID__DAPropertyDialog: TGUID = '{9E32D282-E50A-4392-A25C-4A0ECC3B8C5B}';
  IID__DAItemDialog: TGUID = '{574447AC-4A29-45F6-9AD0-0093FB9170B4}';
  CLASS_DAItemDialog: TGUID = '{211F7E5C-0B3D-4535-AB3D-909D2046B772}';
  CLASS_DAPropertyDialog: TGUID = '{AF3A7D04-C2CB-4BCF-97DA-11AAFC09B004}';
  IID__AEDialog: TGUID = '{C6416BB5-233D-4783-A01F-1F9201BF18CA}';
  IID__AEAttributeDialog: TGUID = '{F7B1A96C-69AB-4410-A691-CCA527B641DD}';
  IID__AECategoryConditionDialog: TGUID = '{9B7A7BAD-7578-4893-B948-BF334A94F3AF}';
  IID__AECategoryDialog: TGUID = '{DD0372DA-A834-4AD4-85A2-678AF6AA52DD}';
  IID__AEAreaOrSourceDialog: TGUID = '{95393EA9-8524-4AE2-A3E5-1B9B63C12BD4}';
  CLASS_AEAttributeDialog: TGUID = '{E88F9177-F957-4612-94FA-DF9DCEA09779}';
  CLASS_AECategoryConditionDialog: TGUID = '{AF092523-2775-4EC6-A912-4B047711E11D}';
  CLASS_AECategoryDialog: TGUID = '{B1C4D316-08D7-4CC0-88CC-979AE1455736}';
  CLASS_AEAreaOrSourceDialog: TGUID = '{2A807383-2668-4CBD-9662-345168250431}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum UAElementType
type
  UAElementType = TOleEnum;
const
  UAElementType_None = $00000000;
  UAElementType_Host = $00000001;
  UAElementType_Endpoint = $00000002;
  UAElementType_Node = $00000003;
  UAElementType_Attribute = $00000004;

// Constants for enum OpcElementType
type
  OpcElementType = TOleEnum;
const
  OpcElementType_None = $00000000;
  OpcElementType_Computer = $00000001;
  OpcElementType_Server = $00000002;
  OpcElementType_DANode = $00000003;
  OpcElementType_DAProperty = $00000004;
  OpcElementType_DAAccessPath = $00000005;
  OpcElementType_AECategory = $00000006;
  OpcElementType_AEAttribute = $00000007;
  OpcElementType_AECategoryCondition = $00000008;
  OpcElementType_AECategorySubcondition = $00000009;
  OpcElementType_AESourceCondition = $0000000A;
  OpcElementType_AESourceSubcondition = $0000000B;
  OpcElementType_AENode = $0000000C;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _UABrowseInputs = interface;
  _UABrowseInputsDisp = dispinterface;
  _UABrowseInputsOutputs = interface;
  _UABrowseInputsOutputsDisp = dispinterface;
  _UABrowseMode = interface;
  _UABrowseModeDisp = dispinterface;
  _UABrowseNodeDescriptor = interface;
  _UABrowseNodeDescriptorDisp = dispinterface;
  _UABrowseNodeElement = interface;
  _UABrowseNodeElementDisp = dispinterface;
  _UABrowseOutputs = interface;
  _UABrowseOutputsDisp = dispinterface;
  _UABrowseNodeDescriptorCollection = interface;
  _UABrowseNodeDescriptorCollectionDisp = dispinterface;
  _UABrowseNodeElementCollection = interface;
  _UABrowseNodeElementCollectionDisp = dispinterface;
  _UABrowseDialog = interface;
  _UABrowseDialogDisp = dispinterface;
  _UADialog = interface;
  _UADialogDisp = dispinterface;
  _UAEndpointDialog = interface;
  _UAEndpointDialogDisp = dispinterface;
  _UAHostAndEndpointDialog = interface;
  _UAHostAndEndpointDialogDisp = dispinterface;
  _UADataDialog = interface;
  _UADataDialogDisp = dispinterface;
  _OpcBrowseInputs = interface;
  _OpcBrowseInputsDisp = dispinterface;
  _OpcBrowseInputsOutputs = interface;
  _OpcBrowseInputsOutputsDisp = dispinterface;
  _OpcBrowseMode = interface;
  _OpcBrowseModeDisp = dispinterface;
  _OpcBrowseNodeDescriptor = interface;
  _OpcBrowseNodeDescriptorDisp = dispinterface;
  _OpcBrowseNodeElement = interface;
  _OpcBrowseNodeElementDisp = dispinterface;
  _OpcBrowseOutputs = interface;
  _OpcBrowseOutputsDisp = dispinterface;
  _OpcBrowseNodeDescriptorCollection = interface;
  _OpcBrowseNodeDescriptorCollectionDisp = dispinterface;
  _OpcBrowseNodeElementCollection = interface;
  _OpcBrowseNodeElementCollectionDisp = dispinterface;
  _OpcBrowseDialog = interface;
  _OpcBrowseDialogDisp = dispinterface;
  _OpcDialog = interface;
  _OpcDialogDisp = dispinterface;
  _OpcServerDialog = interface;
  _OpcServerDialogDisp = dispinterface;
  _OpcComputerAndServerDialog = interface;
  _OpcComputerAndServerDialogDisp = dispinterface;
  _DADialog = interface;
  _DADialogDisp = dispinterface;
  _DAPropertyDialog = interface;
  _DAPropertyDialogDisp = dispinterface;
  _DAItemDialog = interface;
  _DAItemDialogDisp = dispinterface;
  _AEDialog = interface;
  _AEDialogDisp = dispinterface;
  _AEAttributeDialog = interface;
  _AEAttributeDialogDisp = dispinterface;
  _AECategoryConditionDialog = interface;
  _AECategoryConditionDialogDisp = dispinterface;
  _AECategoryDialog = interface;
  _AECategoryDialogDisp = dispinterface;
  _AEAreaOrSourceDialog = interface;
  _AEAreaOrSourceDialogDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  UABrowseDialog = _UABrowseDialog;
  UABrowseInputs = _UABrowseInputs;
  UABrowseInputsOutputs = _UABrowseInputsOutputs;
  UABrowseMode = _UABrowseMode;
  UABrowseNodeDescriptor = _UABrowseNodeDescriptor;
  UABrowseNodeDescriptorCollection = _UABrowseNodeDescriptorCollection;
  UABrowseNodeElement = _UABrowseNodeElement;
  UABrowseNodeElementCollection = _UABrowseNodeElementCollection;
  UABrowseOutputs = _UABrowseOutputs;
  UADataDialog = _UADataDialog;
  UAEndpointDialog = _UAEndpointDialog;
  UAHostAndEndpointDialog = _UAHostAndEndpointDialog;
  OpcBrowseDialog = _OpcBrowseDialog;
  OpcBrowseInputs = _OpcBrowseInputs;
  OpcBrowseInputsOutputs = _OpcBrowseInputsOutputs;
  OpcBrowseMode = _OpcBrowseMode;
  OpcBrowseNodeDescriptor = _OpcBrowseNodeDescriptor;
  OpcBrowseNodeDescriptorCollection = _OpcBrowseNodeDescriptorCollection;
  OpcBrowseNodeElement = _OpcBrowseNodeElement;
  OpcBrowseNodeElementCollection = _OpcBrowseNodeElementCollection;
  OpcBrowseOutputs = _OpcBrowseOutputs;
  OpcComputerAndServerDialog = _OpcComputerAndServerDialog;
  OpcServerDialog = _OpcServerDialog;
  DAItemDialog = _DAItemDialog;
  DAPropertyDialog = _DAPropertyDialog;
  AEAttributeDialog = _AEAttributeDialog;
  AECategoryConditionDialog = _AECategoryConditionDialog;
  AECategoryDialog = _AECategoryDialog;
  AEAreaOrSourceDialog = _AEAreaOrSourceDialog;


// *********************************************************************//
// Interface: _UABrowseInputs
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8DEC0ADC-E183-47BD-BB3D-EA22ADA30341}
// *********************************************************************//
  _UABrowseInputs = interface(IDispatch)
    ['{8DEC0ADC-E183-47BD-BB3D-EA22ADA30341}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
  end;

// *********************************************************************//
// DispIntf:  _UABrowseInputsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8DEC0ADC-E183-47BD-BB3D-EA22ADA30341}
// *********************************************************************//
  _UABrowseInputsDisp = dispinterface
    ['{8DEC0ADC-E183-47BD-BB3D-EA22ADA30341}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
  end;

// *********************************************************************//
// Interface: _UABrowseInputsOutputs
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C6A5FE28-30F0-40B2-8292-C7D1455150CF}
// *********************************************************************//
  _UABrowseInputsOutputs = interface(IDispatch)
    ['{C6A5FE28-30F0-40B2-8292-C7D1455150CF}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_CurrentNodeDescriptor: _UABrowseNodeDescriptor; safecall;
    procedure _Set_CurrentNodeDescriptor(const pRetVal: _UABrowseNodeDescriptor); safecall;
    function Get_SelectionDescriptors: _UABrowseNodeDescriptorCollection; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property CurrentNodeDescriptor: _UABrowseNodeDescriptor read Get_CurrentNodeDescriptor write _Set_CurrentNodeDescriptor;
    property SelectionDescriptors: _UABrowseNodeDescriptorCollection read Get_SelectionDescriptors;
  end;

// *********************************************************************//
// DispIntf:  _UABrowseInputsOutputsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C6A5FE28-30F0-40B2-8292-C7D1455150CF}
// *********************************************************************//
  _UABrowseInputsOutputsDisp = dispinterface
    ['{C6A5FE28-30F0-40B2-8292-C7D1455150CF}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property CurrentNodeDescriptor: _UABrowseNodeDescriptor dispid 1610743814;
    property SelectionDescriptors: _UABrowseNodeDescriptorCollection readonly dispid 1610743816;
  end;

// *********************************************************************//
// Interface: _UABrowseMode
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {87F93898-E860-4E9B-993B-2CACD0E02502}
// *********************************************************************//
  _UABrowseMode = interface(IDispatch)
    ['{87F93898-E860-4E9B-993B-2CACD0E02502}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_ManualNodes: WordBool; safecall;
    procedure Set_ManualNodes(pRetVal: WordBool); safecall;
    function Get_MultiSelect: WordBool; safecall;
    procedure Set_MultiSelect(pRetVal: WordBool); safecall;
    function Get_ShowListBranches: WordBool; safecall;
    procedure Set_ShowListBranches(pRetVal: WordBool); safecall;
    function Get_AnchorElementType: UAElementType; safecall;
    procedure Set_AnchorElementType(pRetVal: UAElementType); safecall;
    function Get_NodeBrowseFilter: _UANodeBrowseFilter; safecall;
    procedure _Set_NodeBrowseFilter(const pRetVal: _UANodeBrowseFilter); safecall;
    function Get_SelectableNodeClasses: UANodeClass; safecall;
    procedure Set_SelectableNodeClasses(pRetVal: UANodeClass); safecall;
    function Get_SelectElementType: UAElementType; safecall;
    procedure Set_SelectElementType(pRetVal: UAElementType); safecall;
    function IsSelectable(elementType: UAElementType): WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ManualNodes: WordBool read Get_ManualNodes write Set_ManualNodes;
    property MultiSelect: WordBool read Get_MultiSelect write Set_MultiSelect;
    property ShowListBranches: WordBool read Get_ShowListBranches write Set_ShowListBranches;
    property AnchorElementType: UAElementType read Get_AnchorElementType write Set_AnchorElementType;
    property NodeBrowseFilter: _UANodeBrowseFilter read Get_NodeBrowseFilter write _Set_NodeBrowseFilter;
    property SelectableNodeClasses: UANodeClass read Get_SelectableNodeClasses write Set_SelectableNodeClasses;
    property SelectElementType: UAElementType read Get_SelectElementType write Set_SelectElementType;
  end;

// *********************************************************************//
// DispIntf:  _UABrowseModeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {87F93898-E860-4E9B-993B-2CACD0E02502}
// *********************************************************************//
  _UABrowseModeDisp = dispinterface
    ['{87F93898-E860-4E9B-993B-2CACD0E02502}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property ManualNodes: WordBool dispid 1610743814;
    property MultiSelect: WordBool dispid 1610743816;
    property ShowListBranches: WordBool dispid 1610743818;
    property AnchorElementType: UAElementType dispid 1610743820;
    property NodeBrowseFilter: _UANodeBrowseFilter dispid 1610743822;
    property SelectableNodeClasses: UANodeClass dispid 1610743824;
    property SelectElementType: UAElementType dispid 1610743826;
    function IsSelectable(elementType: UAElementType): WordBool; dispid 1610743828;
  end;

// *********************************************************************//
// Interface: _UABrowseNodeDescriptor
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C603A6B8-B08A-480B-921C-7607C1358DB0}
// *********************************************************************//
  _UABrowseNodeDescriptor = interface(IDispatch)
    ['{C603A6B8-B08A-480B-921C-7607C1358DB0}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_NodeDescriptor: _UANodeDescriptor; safecall;
    procedure _Set_NodeDescriptor(const pRetVal: _UANodeDescriptor); safecall;
    function Get_AttributeId: UAAttributeId; safecall;
    procedure Set_AttributeId(pRetVal: UAAttributeId); safecall;
    function Get_EndpointDescriptor: _UAEndpointDescriptor; safecall;
    procedure _Set_EndpointDescriptor(const pRetVal: _UAEndpointDescriptor); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property NodeDescriptor: _UANodeDescriptor read Get_NodeDescriptor write _Set_NodeDescriptor;
    property AttributeId: UAAttributeId read Get_AttributeId write Set_AttributeId;
    property EndpointDescriptor: _UAEndpointDescriptor read Get_EndpointDescriptor write _Set_EndpointDescriptor;
  end;

// *********************************************************************//
// DispIntf:  _UABrowseNodeDescriptorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C603A6B8-B08A-480B-921C-7607C1358DB0}
// *********************************************************************//
  _UABrowseNodeDescriptorDisp = dispinterface
    ['{C603A6B8-B08A-480B-921C-7607C1358DB0}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property NodeDescriptor: _UANodeDescriptor dispid 1610743814;
    property AttributeId: UAAttributeId dispid 1610743816;
    property EndpointDescriptor: _UAEndpointDescriptor dispid 1610743818;
  end;

// *********************************************************************//
// Interface: _UABrowseNodeElement
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {63246805-4016-42AC-91AA-76304C40332D}
// *********************************************************************//
  _UABrowseNodeElement = interface(IDispatch)
    ['{63246805-4016-42AC-91AA-76304C40332D}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_DiscoveryElement: _UADiscoveryElement; safecall;
    procedure _Set_DiscoveryElement(const pRetVal: _UADiscoveryElement); safecall;
    function Get_HostElement: _HostElement; safecall;
    procedure _Set_HostElement(const pRetVal: _HostElement); safecall;
    function Get_NodeElement: _UANodeElement; safecall;
    procedure _Set_NodeElement(const pRetVal: _UANodeElement); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property DiscoveryElement: _UADiscoveryElement read Get_DiscoveryElement write _Set_DiscoveryElement;
    property HostElement: _HostElement read Get_HostElement write _Set_HostElement;
    property NodeElement: _UANodeElement read Get_NodeElement write _Set_NodeElement;
  end;

// *********************************************************************//
// DispIntf:  _UABrowseNodeElementDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {63246805-4016-42AC-91AA-76304C40332D}
// *********************************************************************//
  _UABrowseNodeElementDisp = dispinterface
    ['{63246805-4016-42AC-91AA-76304C40332D}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property DiscoveryElement: _UADiscoveryElement dispid 1610743814;
    property HostElement: _HostElement dispid 1610743816;
    property NodeElement: _UANodeElement dispid 1610743818;
  end;

// *********************************************************************//
// Interface: _UABrowseOutputs
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {21044995-5669-491F-B00F-3FC5DA9D1242}
// *********************************************************************//
  _UABrowseOutputs = interface(IDispatch)
    ['{21044995-5669-491F-B00F-3FC5DA9D1242}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_CurrentNodeElement: _UABrowseNodeElement; safecall;
    procedure _Set_CurrentNodeElement(const pRetVal: _UABrowseNodeElement); safecall;
    function Get_SelectionElements: _UABrowseNodeElementCollection; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property CurrentNodeElement: _UABrowseNodeElement read Get_CurrentNodeElement write _Set_CurrentNodeElement;
    property SelectionElements: _UABrowseNodeElementCollection read Get_SelectionElements;
  end;

// *********************************************************************//
// DispIntf:  _UABrowseOutputsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {21044995-5669-491F-B00F-3FC5DA9D1242}
// *********************************************************************//
  _UABrowseOutputsDisp = dispinterface
    ['{21044995-5669-491F-B00F-3FC5DA9D1242}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property CurrentNodeElement: _UABrowseNodeElement dispid 1610743814;
    property SelectionElements: _UABrowseNodeElementCollection readonly dispid 1610743816;
  end;

// *********************************************************************//
// Interface: _UABrowseNodeDescriptorCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D55AB417-9E03-4CF5-8E60-275542861905}
// *********************************************************************//
  _UABrowseNodeDescriptorCollection = interface(IDispatch)
    ['{D55AB417-9E03-4CF5-8E60-275542861905}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(index: Integer): _UABrowseNodeDescriptor; safecall;
    procedure _Set_Item(index: Integer; const pRetVal: _UABrowseNodeDescriptor); safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(Item: OleVariant); safecall;
    procedure Clear; safecall;
    function Contains(Item: OleVariant): WordBool; safecall;
    function IndexOf(Item: OleVariant): Integer; safecall;
    procedure Insert(index: Integer; Item: OleVariant); safecall;
    function Remove(Item: OleVariant): WordBool; safecall;
    procedure RemoveAt(index: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property Item[index: Integer]: _UABrowseNodeDescriptor read Get_Item write _Set_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _UABrowseNodeDescriptorCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D55AB417-9E03-4CF5-8E60-275542861905}
// *********************************************************************//
  _UABrowseNodeDescriptorCollectionDisp = dispinterface
    ['{D55AB417-9E03-4CF5-8E60-275542861905}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[index: Integer]: _UABrowseNodeDescriptor dispid 0; default;
    property Count: Integer readonly dispid 1610743814;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(Item: OleVariant); dispid 1610743816;
    procedure Clear; dispid 1610743817;
    function Contains(Item: OleVariant): WordBool; dispid 1610743818;
    function IndexOf(Item: OleVariant): Integer; dispid 1610743819;
    procedure Insert(index: Integer; Item: OleVariant); dispid 1610743820;
    function Remove(Item: OleVariant): WordBool; dispid 1610743821;
    procedure RemoveAt(index: Integer); dispid 1610743822;
  end;

// *********************************************************************//
// Interface: _UABrowseNodeElementCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {277A8A43-309F-4480-8EDC-E5E720DBEEF5}
// *********************************************************************//
  _UABrowseNodeElementCollection = interface(IDispatch)
    ['{277A8A43-309F-4480-8EDC-E5E720DBEEF5}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(index: Integer): _UABrowseNodeElement; safecall;
    procedure _Set_Item(index: Integer; const pRetVal: _UABrowseNodeElement); safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(Item: OleVariant); safecall;
    procedure Clear; safecall;
    function Contains(Item: OleVariant): WordBool; safecall;
    function IndexOf(Item: OleVariant): Integer; safecall;
    procedure Insert(index: Integer; Item: OleVariant); safecall;
    function Remove(Item: OleVariant): WordBool; safecall;
    procedure RemoveAt(index: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property Item[index: Integer]: _UABrowseNodeElement read Get_Item write _Set_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _UABrowseNodeElementCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {277A8A43-309F-4480-8EDC-E5E720DBEEF5}
// *********************************************************************//
  _UABrowseNodeElementCollectionDisp = dispinterface
    ['{277A8A43-309F-4480-8EDC-E5E720DBEEF5}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[index: Integer]: _UABrowseNodeElement dispid 0; default;
    property Count: Integer readonly dispid 1610743814;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(Item: OleVariant); dispid 1610743816;
    procedure Clear; dispid 1610743817;
    function Contains(Item: OleVariant): WordBool; dispid 1610743818;
    function IndexOf(Item: OleVariant): Integer; dispid 1610743819;
    procedure Insert(index: Integer; Item: OleVariant); dispid 1610743820;
    function Remove(Item: OleVariant): WordBool; dispid 1610743821;
    procedure RemoveAt(index: Integer); dispid 1610743822;
  end;

// *********************************************************************//
// Interface: _UABrowseDialog
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7A206458-84DE-4066-ABD3-41016B63C32A}
// *********************************************************************//
  _UABrowseDialog = interface(IDispatch)
    ['{7A206458-84DE-4066-ABD3-41016B63C32A}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Tag: OleVariant; safecall;
    procedure _Set_Tag(pRetVal: OleVariant); safecall;
    procedure Reset; safecall;
    function ShowDialog(const owner: IWin32Window): DialogResult; safecall;
    function Get_ClientSelector: _EasyUAClientSelector; safecall;
    procedure _Set_ClientSelector(const pRetVal: _EasyUAClientSelector); safecall;
    function Get_Mode: _UABrowseMode; safecall;
    function Get_Inputs: _UABrowseInputs; safecall;
    function Get_InputsOutputs: _UABrowseInputsOutputs; safecall;
    function Get_Outputs: _UABrowseOutputs; safecall;
    function Get_Simulated: WordBool; safecall;
    procedure Set_Simulated(pRetVal: WordBool); safecall;
    procedure SetTag(Tag: OleVariant); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property ClientSelector: _EasyUAClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property Mode: _UABrowseMode read Get_Mode;
    property Inputs: _UABrowseInputs read Get_Inputs;
    property InputsOutputs: _UABrowseInputsOutputs read Get_InputsOutputs;
    property Outputs: _UABrowseOutputs read Get_Outputs;
    property Simulated: WordBool read Get_Simulated write Set_Simulated;
  end;

// *********************************************************************//
// DispIntf:  _UABrowseDialogDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7A206458-84DE-4066-ABD3-41016B63C32A}
// *********************************************************************//
  _UABrowseDialogDisp = dispinterface
    ['{7A206458-84DE-4066-ABD3-41016B63C32A}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Tag: OleVariant dispid 1610743813;
    procedure Reset; dispid 1610743815;
    function ShowDialog(const owner: IWin32Window): DialogResult; dispid 1610743816;
    property ClientSelector: _EasyUAClientSelector dispid 1610743817;
    property Mode: _UABrowseMode readonly dispid 1610743819;
    property Inputs: _UABrowseInputs readonly dispid 1610743820;
    property InputsOutputs: _UABrowseInputsOutputs readonly dispid 1610743821;
    property Outputs: _UABrowseOutputs readonly dispid 1610743822;
    property Simulated: WordBool dispid 1610743823;
    procedure SetTag(Tag: OleVariant); dispid 1610743825;
  end;

// *********************************************************************//
// Interface: _UADialog
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F0500DD4-7228-4834-B1C2-B84A3CCEE0CD}
// *********************************************************************//
  _UADialog = interface(IDispatch)
    ['{F0500DD4-7228-4834-B1C2-B84A3CCEE0CD}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Tag: OleVariant; safecall;
    procedure _Set_Tag(pRetVal: OleVariant); safecall;
    procedure Reset; safecall;
    function ShowDialog(const owner: IWin32Window): DialogResult; safecall;
    function Get_RetainAppearance: WordBool; safecall;
    procedure Set_RetainAppearance(pRetVal: WordBool); safecall;
    procedure RevertAppearance; safecall;
    function Get_SizeFactor: SizeF; safecall;
    procedure Set_SizeFactor(pRetVal: SizeF); safecall;
    function Get_SizeFactorName: WideString; safecall;
    procedure Set_SizeFactorName(const pRetVal: WideString); safecall;
    procedure SetTag(Tag: OleVariant); safecall;
    function Get_ClientSelector: _EasyUAClientSelector; safecall;
    procedure _Set_ClientSelector(const pRetVal: _EasyUAClientSelector); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property ClientSelector: _EasyUAClientSelector read Get_ClientSelector write _Set_ClientSelector;
  end;

// *********************************************************************//
// DispIntf:  _UADialogDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F0500DD4-7228-4834-B1C2-B84A3CCEE0CD}
// *********************************************************************//
  _UADialogDisp = dispinterface
    ['{F0500DD4-7228-4834-B1C2-B84A3CCEE0CD}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Tag: OleVariant dispid 1610743813;
    procedure Reset; dispid 1610743815;
    function ShowDialog(const owner: IWin32Window): DialogResult; dispid 1610743816;
    property RetainAppearance: WordBool dispid 1610743817;
    procedure RevertAppearance; dispid 1610743819;
    property SizeFactor: {NOT_OLEAUTO(SizeF)}OleVariant dispid 1610743820;
    property SizeFactorName: WideString dispid 1610743822;
    procedure SetTag(Tag: OleVariant); dispid 1610743824;
    property ClientSelector: _EasyUAClientSelector dispid 1610743825;
  end;

// *********************************************************************//
// Interface: _UAEndpointDialog
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3BD24237-FB61-4891-8627-EF6A71D29C87}
// *********************************************************************//
  _UAEndpointDialog = interface(IDispatch)
    ['{3BD24237-FB61-4891-8627-EF6A71D29C87}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Tag: OleVariant; safecall;
    procedure _Set_Tag(pRetVal: OleVariant); safecall;
    procedure Reset; safecall;
    function ShowDialog(const owner: IWin32Window): DialogResult; safecall;
    function Get_RetainAppearance: WordBool; safecall;
    procedure Set_RetainAppearance(pRetVal: WordBool); safecall;
    procedure RevertAppearance; safecall;
    function Get_SizeFactor: SizeF; safecall;
    procedure Set_SizeFactor(pRetVal: SizeF); safecall;
    function Get_SizeFactorName: WideString; safecall;
    procedure Set_SizeFactorName(const pRetVal: WideString); safecall;
    procedure SetTag(Tag: OleVariant); safecall;
    function Get_ClientSelector: _EasyUAClientSelector; safecall;
    procedure _Set_ClientSelector(const pRetVal: _EasyUAClientSelector); safecall;
    function Get_DiscoveryHost: WideString; safecall;
    procedure Set_DiscoveryHost(const pRetVal: WideString); safecall;
    function Get_EndpointDescriptor: _UAEndpointDescriptor; safecall;
    procedure _Set_EndpointDescriptor(const pRetVal: _UAEndpointDescriptor); safecall;
    function Get_DiscoveryElement: _UADiscoveryElement; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property ClientSelector: _EasyUAClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property DiscoveryHost: WideString read Get_DiscoveryHost write Set_DiscoveryHost;
    property EndpointDescriptor: _UAEndpointDescriptor read Get_EndpointDescriptor write _Set_EndpointDescriptor;
    property DiscoveryElement: _UADiscoveryElement read Get_DiscoveryElement;
  end;

// *********************************************************************//
// DispIntf:  _UAEndpointDialogDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3BD24237-FB61-4891-8627-EF6A71D29C87}
// *********************************************************************//
  _UAEndpointDialogDisp = dispinterface
    ['{3BD24237-FB61-4891-8627-EF6A71D29C87}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Tag: OleVariant dispid 1610743813;
    procedure Reset; dispid 1610743815;
    function ShowDialog(const owner: IWin32Window): DialogResult; dispid 1610743816;
    property RetainAppearance: WordBool dispid 1610743817;
    procedure RevertAppearance; dispid 1610743819;
    property SizeFactor: {NOT_OLEAUTO(SizeF)}OleVariant dispid 1610743820;
    property SizeFactorName: WideString dispid 1610743822;
    procedure SetTag(Tag: OleVariant); dispid 1610743824;
    property ClientSelector: _EasyUAClientSelector dispid 1610743825;
    property DiscoveryHost: WideString dispid 1610743827;
    property EndpointDescriptor: _UAEndpointDescriptor dispid 1610743829;
    property DiscoveryElement: _UADiscoveryElement readonly dispid 1610743831;
  end;

// *********************************************************************//
// Interface: _UAHostAndEndpointDialog
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {175A791E-4BB5-4731-9EA5-7D87055FA3AE}
// *********************************************************************//
  _UAHostAndEndpointDialog = interface(IDispatch)
    ['{175A791E-4BB5-4731-9EA5-7D87055FA3AE}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Tag: OleVariant; safecall;
    procedure _Set_Tag(pRetVal: OleVariant); safecall;
    procedure Reset; safecall;
    function ShowDialog(const owner: IWin32Window): DialogResult; safecall;
    function Get_RetainAppearance: WordBool; safecall;
    procedure Set_RetainAppearance(pRetVal: WordBool); safecall;
    procedure RevertAppearance; safecall;
    function Get_SizeFactor: SizeF; safecall;
    procedure Set_SizeFactor(pRetVal: SizeF); safecall;
    function Get_SizeFactorName: WideString; safecall;
    procedure Set_SizeFactorName(const pRetVal: WideString); safecall;
    procedure SetTag(Tag: OleVariant); safecall;
    function Get_ClientSelector: _EasyUAClientSelector; safecall;
    procedure _Set_ClientSelector(const pRetVal: _EasyUAClientSelector); safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const pRetVal: WideString); safecall;
    function Get_ManualNodes: WordBool; safecall;
    procedure Set_ManualNodes(pRetVal: WordBool); safecall;
    function Get_EndpointDescriptor: _UAEndpointDescriptor; safecall;
    procedure _Set_EndpointDescriptor(const pRetVal: _UAEndpointDescriptor); safecall;
    function Get_HostElement: _HostElement; safecall;
    function Get_DiscoveryElement: _UADiscoveryElement; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property ClientSelector: _EasyUAClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property Caption: WideString read Get_Caption write Set_Caption;
    property ManualNodes: WordBool read Get_ManualNodes write Set_ManualNodes;
    property EndpointDescriptor: _UAEndpointDescriptor read Get_EndpointDescriptor write _Set_EndpointDescriptor;
    property HostElement: _HostElement read Get_HostElement;
    property DiscoveryElement: _UADiscoveryElement read Get_DiscoveryElement;
  end;

// *********************************************************************//
// DispIntf:  _UAHostAndEndpointDialogDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {175A791E-4BB5-4731-9EA5-7D87055FA3AE}
// *********************************************************************//
  _UAHostAndEndpointDialogDisp = dispinterface
    ['{175A791E-4BB5-4731-9EA5-7D87055FA3AE}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Tag: OleVariant dispid 1610743813;
    procedure Reset; dispid 1610743815;
    function ShowDialog(const owner: IWin32Window): DialogResult; dispid 1610743816;
    property RetainAppearance: WordBool dispid 1610743817;
    procedure RevertAppearance; dispid 1610743819;
    property SizeFactor: {NOT_OLEAUTO(SizeF)}OleVariant dispid 1610743820;
    property SizeFactorName: WideString dispid 1610743822;
    procedure SetTag(Tag: OleVariant); dispid 1610743824;
    property ClientSelector: _EasyUAClientSelector dispid 1610743825;
    property Caption: WideString dispid 1610743827;
    property ManualNodes: WordBool dispid 1610743829;
    property EndpointDescriptor: _UAEndpointDescriptor dispid 1610743831;
    property HostElement: _HostElement readonly dispid 1610743833;
    property DiscoveryElement: _UADiscoveryElement readonly dispid 1610743834;
  end;

// *********************************************************************//
// Interface: _UADataDialog
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {68798837-AA6C-4412-B9A2-F069BF8BE160}
// *********************************************************************//
  _UADataDialog = interface(IDispatch)
    ['{68798837-AA6C-4412-B9A2-F069BF8BE160}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Tag: OleVariant; safecall;
    procedure _Set_Tag(pRetVal: OleVariant); safecall;
    procedure Reset; safecall;
    function ShowDialog(const owner: IWin32Window): DialogResult; safecall;
    function Get_RetainAppearance: WordBool; safecall;
    procedure Set_RetainAppearance(pRetVal: WordBool); safecall;
    procedure RevertAppearance; safecall;
    function Get_SizeFactor: SizeF; safecall;
    procedure Set_SizeFactor(pRetVal: SizeF); safecall;
    function Get_SizeFactorName: WideString; safecall;
    procedure Set_SizeFactorName(const pRetVal: WideString); safecall;
    procedure SetTag(Tag: OleVariant); safecall;
    function Get_ClientSelector: _EasyUAClientSelector; safecall;
    procedure _Set_ClientSelector(const pRetVal: _EasyUAClientSelector); safecall;
    function Get_IncludeProperties: WordBool; safecall;
    procedure Set_IncludeProperties(pRetVal: WordBool); safecall;
    function Get_LooseReferenceTypes: WordBool; safecall;
    procedure Set_LooseReferenceTypes(pRetVal: WordBool); safecall;
    function Get_ManualNodes: WordBool; safecall;
    procedure Set_ManualNodes(pRetVal: WordBool); safecall;
    function Get_MultiSelect: WordBool; safecall;
    procedure Set_MultiSelect(pRetVal: WordBool); safecall;
    function Get_UserPickEndpoint: WordBool; safecall;
    procedure Set_UserPickEndpoint(pRetVal: WordBool); safecall;
    function Get_EndpointDescriptor: _UAEndpointDescriptor; safecall;
    procedure _Set_EndpointDescriptor(const pRetVal: _UAEndpointDescriptor); safecall;
    function Get_EndpointDescriptors: PSafeArray; safecall;
    procedure Set_EndpointDescriptors(pRetVal: PSafeArray); safecall;
    function Get_NodeDescriptor: _UANodeDescriptor; safecall;
    procedure _Set_NodeDescriptor(const pRetVal: _UANodeDescriptor); safecall;
    function Get_NodeDescriptors: PSafeArray; safecall;
    procedure Set_NodeDescriptors(pRetVal: PSafeArray); safecall;
    function Get_NodeElement: _UANodeElement; safecall;
    function Get_NodeElements: PSafeArray; safecall;
    function Get_StartNodeDescriptor: _UANodeDescriptor; safecall;
    procedure _Set_StartNodeDescriptor(const pRetVal: _UANodeDescriptor); safecall;
    procedure SetEndpointDescriptors(var EndpointDescriptors: PSafeArray); safecall;
    procedure SetNodeDescriptors(var NodeDescriptors: PSafeArray); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property ClientSelector: _EasyUAClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property IncludeProperties: WordBool read Get_IncludeProperties write Set_IncludeProperties;
    property LooseReferenceTypes: WordBool read Get_LooseReferenceTypes write Set_LooseReferenceTypes;
    property ManualNodes: WordBool read Get_ManualNodes write Set_ManualNodes;
    property MultiSelect: WordBool read Get_MultiSelect write Set_MultiSelect;
    property UserPickEndpoint: WordBool read Get_UserPickEndpoint write Set_UserPickEndpoint;
    property EndpointDescriptor: _UAEndpointDescriptor read Get_EndpointDescriptor write _Set_EndpointDescriptor;
    property EndpointDescriptors: PSafeArray read Get_EndpointDescriptors write Set_EndpointDescriptors;
    property NodeDescriptor: _UANodeDescriptor read Get_NodeDescriptor write _Set_NodeDescriptor;
    property NodeDescriptors: PSafeArray read Get_NodeDescriptors write Set_NodeDescriptors;
    property NodeElement: _UANodeElement read Get_NodeElement;
    property NodeElements: PSafeArray read Get_NodeElements;
    property StartNodeDescriptor: _UANodeDescriptor read Get_StartNodeDescriptor write _Set_StartNodeDescriptor;
  end;

// *********************************************************************//
// DispIntf:  _UADataDialogDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {68798837-AA6C-4412-B9A2-F069BF8BE160}
// *********************************************************************//
  _UADataDialogDisp = dispinterface
    ['{68798837-AA6C-4412-B9A2-F069BF8BE160}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Tag: OleVariant dispid 1610743813;
    procedure Reset; dispid 1610743815;
    function ShowDialog(const owner: IWin32Window): DialogResult; dispid 1610743816;
    property RetainAppearance: WordBool dispid 1610743817;
    procedure RevertAppearance; dispid 1610743819;
    property SizeFactor: {NOT_OLEAUTO(SizeF)}OleVariant dispid 1610743820;
    property SizeFactorName: WideString dispid 1610743822;
    procedure SetTag(Tag: OleVariant); dispid 1610743824;
    property ClientSelector: _EasyUAClientSelector dispid 1610743825;
    property IncludeProperties: WordBool dispid 1610743827;
    property LooseReferenceTypes: WordBool dispid 1610743829;
    property ManualNodes: WordBool dispid 1610743831;
    property MultiSelect: WordBool dispid 1610743833;
    property UserPickEndpoint: WordBool dispid 1610743835;
    property EndpointDescriptor: _UAEndpointDescriptor dispid 1610743837;
    property EndpointDescriptors: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743839;
    property NodeDescriptor: _UANodeDescriptor dispid 1610743841;
    property NodeDescriptors: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743843;
    property NodeElement: _UANodeElement readonly dispid 1610743845;
    property NodeElements: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743846;
    property StartNodeDescriptor: _UANodeDescriptor dispid 1610743847;
    procedure SetEndpointDescriptors(var EndpointDescriptors: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743849;
    procedure SetNodeDescriptors(var NodeDescriptors: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743850;
  end;

// *********************************************************************//
// Interface: _OpcBrowseInputs
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F3B1F692-DFCD-4C63-8C93-930E5D220789}
// *********************************************************************//
  _OpcBrowseInputs = interface(IDispatch)
    ['{F3B1F692-DFCD-4C63-8C93-930E5D220789}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_EnabledServerFamilies: ServerFamilies; safecall;
    procedure Set_EnabledServerFamilies(pRetVal: ServerFamilies); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property EnabledServerFamilies: ServerFamilies read Get_EnabledServerFamilies write Set_EnabledServerFamilies;
  end;

// *********************************************************************//
// DispIntf:  _OpcBrowseInputsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F3B1F692-DFCD-4C63-8C93-930E5D220789}
// *********************************************************************//
  _OpcBrowseInputsDisp = dispinterface
    ['{F3B1F692-DFCD-4C63-8C93-930E5D220789}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property EnabledServerFamilies: ServerFamilies dispid 1610743814;
  end;

// *********************************************************************//
// Interface: _OpcBrowseInputsOutputs
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2A9A8B80-F43F-4236-B090-0D336DD2A971}
// *********************************************************************//
  _OpcBrowseInputsOutputs = interface(IDispatch)
    ['{2A9A8B80-F43F-4236-B090-0D336DD2A971}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_CurrentNodeDescriptor: _OpcBrowseNodeDescriptor; safecall;
    procedure _Set_CurrentNodeDescriptor(const pRetVal: _OpcBrowseNodeDescriptor); safecall;
    function Get_SelectionDescriptors: _OpcBrowseNodeDescriptorCollection; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property CurrentNodeDescriptor: _OpcBrowseNodeDescriptor read Get_CurrentNodeDescriptor write _Set_CurrentNodeDescriptor;
    property SelectionDescriptors: _OpcBrowseNodeDescriptorCollection read Get_SelectionDescriptors;
  end;

// *********************************************************************//
// DispIntf:  _OpcBrowseInputsOutputsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2A9A8B80-F43F-4236-B090-0D336DD2A971}
// *********************************************************************//
  _OpcBrowseInputsOutputsDisp = dispinterface
    ['{2A9A8B80-F43F-4236-B090-0D336DD2A971}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property CurrentNodeDescriptor: _OpcBrowseNodeDescriptor dispid 1610743814;
    property SelectionDescriptors: _OpcBrowseNodeDescriptorCollection readonly dispid 1610743816;
  end;

// *********************************************************************//
// Interface: _OpcBrowseMode
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F6F1B857-7596-41EA-8260-7F522B314940}
// *********************************************************************//
  _OpcBrowseMode = interface(IDispatch)
    ['{F6F1B857-7596-41EA-8260-7F522B314940}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_ManualNodes: WordBool; safecall;
    procedure Set_ManualNodes(pRetVal: WordBool); safecall;
    function Get_MultiSelect: WordBool; safecall;
    procedure Set_MultiSelect(pRetVal: WordBool); safecall;
    function Get_ShowListBranches: WordBool; safecall;
    procedure Set_ShowListBranches(pRetVal: WordBool); safecall;
    function Get_AnchorElementType: OpcElementType; safecall;
    procedure Set_AnchorElementType(pRetVal: OpcElementType); safecall;
    function Get_SelectElementType: OpcElementType; safecall;
    procedure Set_SelectElementType(pRetVal: OpcElementType); safecall;
    function IsSelectable(elementType: OpcElementType): WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ManualNodes: WordBool read Get_ManualNodes write Set_ManualNodes;
    property MultiSelect: WordBool read Get_MultiSelect write Set_MultiSelect;
    property ShowListBranches: WordBool read Get_ShowListBranches write Set_ShowListBranches;
    property AnchorElementType: OpcElementType read Get_AnchorElementType write Set_AnchorElementType;
    property SelectElementType: OpcElementType read Get_SelectElementType write Set_SelectElementType;
  end;

// *********************************************************************//
// DispIntf:  _OpcBrowseModeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F6F1B857-7596-41EA-8260-7F522B314940}
// *********************************************************************//
  _OpcBrowseModeDisp = dispinterface
    ['{F6F1B857-7596-41EA-8260-7F522B314940}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property ManualNodes: WordBool dispid 1610743814;
    property MultiSelect: WordBool dispid 1610743816;
    property ShowListBranches: WordBool dispid 1610743818;
    property AnchorElementType: OpcElementType dispid 1610743820;
    property SelectElementType: OpcElementType dispid 1610743822;
    function IsSelectable(elementType: OpcElementType): WordBool; dispid 1610743824;
  end;

// *********************************************************************//
// Interface: _OpcBrowseNodeDescriptor
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {019441F9-BB58-4BD3-B2B9-2E57D4F7A43B}
// *********************************************************************//
  _OpcBrowseNodeDescriptor = interface(IDispatch)
    ['{019441F9-BB58-4BD3-B2B9-2E57D4F7A43B}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_DANodeDescriptor: _DANodeDescriptor; safecall;
    procedure _Set_DANodeDescriptor(const pRetVal: _DANodeDescriptor); safecall;
    function Get_DAPropertyDescriptor: _DAPropertyDescriptor; safecall;
    procedure _Set_DAPropertyDescriptor(const pRetVal: _DAPropertyDescriptor); safecall;
    function Get_DAAccessPath: WideString; safecall;
    procedure Set_DAAccessPath(const pRetVal: WideString); safecall;
    function Get_AECategoryId: Integer; safecall;
    procedure Set_AECategoryId(pRetVal: Integer); safecall;
    function Get_AEAttributeId: Integer; safecall;
    procedure Set_AEAttributeId(pRetVal: Integer); safecall;
    function Get_AEConditionName: WideString; safecall;
    procedure Set_AEConditionName(const pRetVal: WideString); safecall;
    function Get_AESubconditionName: WideString; safecall;
    procedure Set_AESubconditionName(const pRetVal: WideString); safecall;
    function Get_AENodeDescriptor: _AENodeDescriptor; safecall;
    procedure _Set_AENodeDescriptor(const pRetVal: _AENodeDescriptor); safecall;
    function Get_ServerDescriptor: _ServerDescriptor; safecall;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property DANodeDescriptor: _DANodeDescriptor read Get_DANodeDescriptor write _Set_DANodeDescriptor;
    property DAPropertyDescriptor: _DAPropertyDescriptor read Get_DAPropertyDescriptor write _Set_DAPropertyDescriptor;
    property DAAccessPath: WideString read Get_DAAccessPath write Set_DAAccessPath;
    property AECategoryId: Integer read Get_AECategoryId write Set_AECategoryId;
    property AEAttributeId: Integer read Get_AEAttributeId write Set_AEAttributeId;
    property AEConditionName: WideString read Get_AEConditionName write Set_AEConditionName;
    property AESubconditionName: WideString read Get_AESubconditionName write Set_AESubconditionName;
    property AENodeDescriptor: _AENodeDescriptor read Get_AENodeDescriptor write _Set_AENodeDescriptor;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
  end;

// *********************************************************************//
// DispIntf:  _OpcBrowseNodeDescriptorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {019441F9-BB58-4BD3-B2B9-2E57D4F7A43B}
// *********************************************************************//
  _OpcBrowseNodeDescriptorDisp = dispinterface
    ['{019441F9-BB58-4BD3-B2B9-2E57D4F7A43B}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property DANodeDescriptor: _DANodeDescriptor dispid 1610743814;
    property DAPropertyDescriptor: _DAPropertyDescriptor dispid 1610743816;
    property DAAccessPath: WideString dispid 1610743818;
    property AECategoryId: Integer dispid 1610743820;
    property AEAttributeId: Integer dispid 1610743822;
    property AEConditionName: WideString dispid 1610743824;
    property AESubconditionName: WideString dispid 1610743826;
    property AENodeDescriptor: _AENodeDescriptor dispid 1610743828;
    property ServerDescriptor: _ServerDescriptor dispid 1610743830;
  end;

// *********************************************************************//
// Interface: _OpcBrowseNodeElement
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CF1B2DFF-EF65-472A-8BA0-19BD6232C866}
// *********************************************************************//
  _OpcBrowseNodeElement = interface(IDispatch)
    ['{CF1B2DFF-EF65-472A-8BA0-19BD6232C866}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_ComputerElement: _ComputerElement; safecall;
    procedure _Set_ComputerElement(const pRetVal: _ComputerElement); safecall;
    function Get_ServerElement: _ServerElement; safecall;
    procedure _Set_ServerElement(const pRetVal: _ServerElement); safecall;
    function Get_DANodeElement: _DANodeElement; safecall;
    procedure _Set_DANodeElement(const pRetVal: _DANodeElement); safecall;
    function Get_DAPropertyElement: _DAPropertyElement; safecall;
    procedure _Set_DAPropertyElement(const pRetVal: _DAPropertyElement); safecall;
    function Get_AECategoryElement: _AECategoryElement; safecall;
    procedure _Set_AECategoryElement(const pRetVal: _AECategoryElement); safecall;
    function Get_AEAttributeElement: _AEAttributeElement; safecall;
    procedure _Set_AEAttributeElement(const pRetVal: _AEAttributeElement); safecall;
    function Get_AEConditionElement: _AEConditionElement; safecall;
    procedure _Set_AEConditionElement(const pRetVal: _AEConditionElement); safecall;
    function Get_AESubconditionElement: _AESubconditionElement; safecall;
    procedure _Set_AESubconditionElement(const pRetVal: _AESubconditionElement); safecall;
    function Get_AENodeElement: _AENodeElement; safecall;
    procedure _Set_AENodeElement(const pRetVal: _AENodeElement); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ComputerElement: _ComputerElement read Get_ComputerElement write _Set_ComputerElement;
    property ServerElement: _ServerElement read Get_ServerElement write _Set_ServerElement;
    property DANodeElement: _DANodeElement read Get_DANodeElement write _Set_DANodeElement;
    property DAPropertyElement: _DAPropertyElement read Get_DAPropertyElement write _Set_DAPropertyElement;
    property AECategoryElement: _AECategoryElement read Get_AECategoryElement write _Set_AECategoryElement;
    property AEAttributeElement: _AEAttributeElement read Get_AEAttributeElement write _Set_AEAttributeElement;
    property AEConditionElement: _AEConditionElement read Get_AEConditionElement write _Set_AEConditionElement;
    property AESubconditionElement: _AESubconditionElement read Get_AESubconditionElement write _Set_AESubconditionElement;
    property AENodeElement: _AENodeElement read Get_AENodeElement write _Set_AENodeElement;
  end;

// *********************************************************************//
// DispIntf:  _OpcBrowseNodeElementDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CF1B2DFF-EF65-472A-8BA0-19BD6232C866}
// *********************************************************************//
  _OpcBrowseNodeElementDisp = dispinterface
    ['{CF1B2DFF-EF65-472A-8BA0-19BD6232C866}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property ComputerElement: _ComputerElement dispid 1610743814;
    property ServerElement: _ServerElement dispid 1610743816;
    property DANodeElement: _DANodeElement dispid 1610743818;
    property DAPropertyElement: _DAPropertyElement dispid 1610743820;
    property AECategoryElement: _AECategoryElement dispid 1610743822;
    property AEAttributeElement: _AEAttributeElement dispid 1610743824;
    property AEConditionElement: _AEConditionElement dispid 1610743826;
    property AESubconditionElement: _AESubconditionElement dispid 1610743828;
    property AENodeElement: _AENodeElement dispid 1610743830;
  end;

// *********************************************************************//
// Interface: _OpcBrowseOutputs
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {361172AA-7D78-48B9-87D2-C0908E70FD1E}
// *********************************************************************//
  _OpcBrowseOutputs = interface(IDispatch)
    ['{361172AA-7D78-48B9-87D2-C0908E70FD1E}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_CurrentNodeElement: _OpcBrowseNodeElement; safecall;
    procedure _Set_CurrentNodeElement(const pRetVal: _OpcBrowseNodeElement); safecall;
    function Get_SelectionElements: _OpcBrowseNodeElementCollection; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property CurrentNodeElement: _OpcBrowseNodeElement read Get_CurrentNodeElement write _Set_CurrentNodeElement;
    property SelectionElements: _OpcBrowseNodeElementCollection read Get_SelectionElements;
  end;

// *********************************************************************//
// DispIntf:  _OpcBrowseOutputsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {361172AA-7D78-48B9-87D2-C0908E70FD1E}
// *********************************************************************//
  _OpcBrowseOutputsDisp = dispinterface
    ['{361172AA-7D78-48B9-87D2-C0908E70FD1E}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property CurrentNodeElement: _OpcBrowseNodeElement dispid 1610743814;
    property SelectionElements: _OpcBrowseNodeElementCollection readonly dispid 1610743816;
  end;

// *********************************************************************//
// Interface: _OpcBrowseNodeDescriptorCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A92E4086-E2D0-4B07-8E19-5D7B5B0A3364}
// *********************************************************************//
  _OpcBrowseNodeDescriptorCollection = interface(IDispatch)
    ['{A92E4086-E2D0-4B07-8E19-5D7B5B0A3364}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(index: Integer): _OpcBrowseNodeDescriptor; safecall;
    procedure _Set_Item(index: Integer; const pRetVal: _OpcBrowseNodeDescriptor); safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(Item: OleVariant); safecall;
    procedure Clear; safecall;
    function Contains(Item: OleVariant): WordBool; safecall;
    function IndexOf(Item: OleVariant): Integer; safecall;
    procedure Insert(index: Integer; Item: OleVariant); safecall;
    function Remove(Item: OleVariant): WordBool; safecall;
    procedure RemoveAt(index: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property Item[index: Integer]: _OpcBrowseNodeDescriptor read Get_Item write _Set_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _OpcBrowseNodeDescriptorCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A92E4086-E2D0-4B07-8E19-5D7B5B0A3364}
// *********************************************************************//
  _OpcBrowseNodeDescriptorCollectionDisp = dispinterface
    ['{A92E4086-E2D0-4B07-8E19-5D7B5B0A3364}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[index: Integer]: _OpcBrowseNodeDescriptor dispid 0; default;
    property Count: Integer readonly dispid 1610743814;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(Item: OleVariant); dispid 1610743816;
    procedure Clear; dispid 1610743817;
    function Contains(Item: OleVariant): WordBool; dispid 1610743818;
    function IndexOf(Item: OleVariant): Integer; dispid 1610743819;
    procedure Insert(index: Integer; Item: OleVariant); dispid 1610743820;
    function Remove(Item: OleVariant): WordBool; dispid 1610743821;
    procedure RemoveAt(index: Integer); dispid 1610743822;
  end;

// *********************************************************************//
// Interface: _OpcBrowseNodeElementCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {24D5CF0C-88BF-446B-BA78-BBDC022D1EBE}
// *********************************************************************//
  _OpcBrowseNodeElementCollection = interface(IDispatch)
    ['{24D5CF0C-88BF-446B-BA78-BBDC022D1EBE}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(index: Integer): _OpcBrowseNodeElement; safecall;
    procedure _Set_Item(index: Integer; const pRetVal: _OpcBrowseNodeElement); safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(Item: OleVariant); safecall;
    procedure Clear; safecall;
    function Contains(Item: OleVariant): WordBool; safecall;
    function IndexOf(Item: OleVariant): Integer; safecall;
    procedure Insert(index: Integer; Item: OleVariant); safecall;
    function Remove(Item: OleVariant): WordBool; safecall;
    procedure RemoveAt(index: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property Item[index: Integer]: _OpcBrowseNodeElement read Get_Item write _Set_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _OpcBrowseNodeElementCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {24D5CF0C-88BF-446B-BA78-BBDC022D1EBE}
// *********************************************************************//
  _OpcBrowseNodeElementCollectionDisp = dispinterface
    ['{24D5CF0C-88BF-446B-BA78-BBDC022D1EBE}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[index: Integer]: _OpcBrowseNodeElement dispid 0; default;
    property Count: Integer readonly dispid 1610743814;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(Item: OleVariant); dispid 1610743816;
    procedure Clear; dispid 1610743817;
    function Contains(Item: OleVariant): WordBool; dispid 1610743818;
    function IndexOf(Item: OleVariant): Integer; dispid 1610743819;
    procedure Insert(index: Integer; Item: OleVariant); dispid 1610743820;
    function Remove(Item: OleVariant): WordBool; dispid 1610743821;
    procedure RemoveAt(index: Integer); dispid 1610743822;
  end;

// *********************************************************************//
// Interface: _OpcBrowseDialog
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0AA07238-D0EB-44A6-B1A4-C18F6BF4DE44}
// *********************************************************************//
  _OpcBrowseDialog = interface(IDispatch)
    ['{0AA07238-D0EB-44A6-B1A4-C18F6BF4DE44}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Tag: OleVariant; safecall;
    procedure _Set_Tag(pRetVal: OleVariant); safecall;
    procedure Reset; safecall;
    function ShowDialog(const owner: IWin32Window): DialogResult; safecall;
    function Get_AEClientSelector: _EasyAEClientSelector; safecall;
    procedure _Set_AEClientSelector(const pRetVal: _EasyAEClientSelector); safecall;
    function Get_DAClientSelector: _EasyDAClientSelector; safecall;
    procedure _Set_DAClientSelector(const pRetVal: _EasyDAClientSelector); safecall;
    function Get_Mode: _OpcBrowseMode; safecall;
    function Get_Inputs: _OpcBrowseInputs; safecall;
    function Get_InputsOutputs: _OpcBrowseInputsOutputs; safecall;
    function Get_Outputs: _OpcBrowseOutputs; safecall;
    function Get_Simulated: WordBool; safecall;
    procedure Set_Simulated(pRetVal: WordBool); safecall;
    procedure SetTag(Tag: OleVariant); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property AEClientSelector: _EasyAEClientSelector read Get_AEClientSelector write _Set_AEClientSelector;
    property DAClientSelector: _EasyDAClientSelector read Get_DAClientSelector write _Set_DAClientSelector;
    property Mode: _OpcBrowseMode read Get_Mode;
    property Inputs: _OpcBrowseInputs read Get_Inputs;
    property InputsOutputs: _OpcBrowseInputsOutputs read Get_InputsOutputs;
    property Outputs: _OpcBrowseOutputs read Get_Outputs;
    property Simulated: WordBool read Get_Simulated write Set_Simulated;
  end;

// *********************************************************************//
// DispIntf:  _OpcBrowseDialogDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0AA07238-D0EB-44A6-B1A4-C18F6BF4DE44}
// *********************************************************************//
  _OpcBrowseDialogDisp = dispinterface
    ['{0AA07238-D0EB-44A6-B1A4-C18F6BF4DE44}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Tag: OleVariant dispid 1610743813;
    procedure Reset; dispid 1610743815;
    function ShowDialog(const owner: IWin32Window): DialogResult; dispid 1610743816;
    property AEClientSelector: _EasyAEClientSelector dispid 1610743817;
    property DAClientSelector: _EasyDAClientSelector dispid 1610743819;
    property Mode: _OpcBrowseMode readonly dispid 1610743821;
    property Inputs: _OpcBrowseInputs readonly dispid 1610743822;
    property InputsOutputs: _OpcBrowseInputsOutputs readonly dispid 1610743823;
    property Outputs: _OpcBrowseOutputs readonly dispid 1610743824;
    property Simulated: WordBool dispid 1610743825;
    procedure SetTag(Tag: OleVariant); dispid 1610743827;
  end;

// *********************************************************************//
// Interface: _OpcDialog
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1D016179-EFD8-44BB-AF07-9DEAEFD4044C}
// *********************************************************************//
  _OpcDialog = interface(IDispatch)
    ['{1D016179-EFD8-44BB-AF07-9DEAEFD4044C}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Tag: OleVariant; safecall;
    procedure _Set_Tag(pRetVal: OleVariant); safecall;
    procedure Reset; safecall;
    function ShowDialog(const owner: IWin32Window): DialogResult; safecall;
    function Get_RetainAppearance: WordBool; safecall;
    procedure Set_RetainAppearance(pRetVal: WordBool); safecall;
    procedure RevertAppearance; safecall;
    function Get_SizeFactor: SizeF; safecall;
    procedure Set_SizeFactor(pRetVal: SizeF); safecall;
    function Get_SizeFactorName: WideString; safecall;
    procedure Set_SizeFactorName(const pRetVal: WideString); safecall;
    procedure SetTag(Tag: OleVariant); safecall;
    function Get_AEClientSelector: _EasyAEClientSelector; safecall;
    procedure _Set_AEClientSelector(const pRetVal: _EasyAEClientSelector); safecall;
    function Get_DAClientSelector: _EasyDAClientSelector; safecall;
    procedure _Set_DAClientSelector(const pRetVal: _EasyDAClientSelector); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property AEClientSelector: _EasyAEClientSelector read Get_AEClientSelector write _Set_AEClientSelector;
    property DAClientSelector: _EasyDAClientSelector read Get_DAClientSelector write _Set_DAClientSelector;
  end;

// *********************************************************************//
// DispIntf:  _OpcDialogDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1D016179-EFD8-44BB-AF07-9DEAEFD4044C}
// *********************************************************************//
  _OpcDialogDisp = dispinterface
    ['{1D016179-EFD8-44BB-AF07-9DEAEFD4044C}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Tag: OleVariant dispid 1610743813;
    procedure Reset; dispid 1610743815;
    function ShowDialog(const owner: IWin32Window): DialogResult; dispid 1610743816;
    property RetainAppearance: WordBool dispid 1610743817;
    procedure RevertAppearance; dispid 1610743819;
    property SizeFactor: {NOT_OLEAUTO(SizeF)}OleVariant dispid 1610743820;
    property SizeFactorName: WideString dispid 1610743822;
    procedure SetTag(Tag: OleVariant); dispid 1610743824;
    property AEClientSelector: _EasyAEClientSelector dispid 1610743825;
    property DAClientSelector: _EasyDAClientSelector dispid 1610743827;
  end;

// *********************************************************************//
// Interface: _OpcServerDialog
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {50F0BA3D-30B6-40C6-882A-323484B9DD4C}
// *********************************************************************//
  _OpcServerDialog = interface(IDispatch)
    ['{50F0BA3D-30B6-40C6-882A-323484B9DD4C}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Tag: OleVariant; safecall;
    procedure _Set_Tag(pRetVal: OleVariant); safecall;
    procedure Reset; safecall;
    function ShowDialog(const owner: IWin32Window): DialogResult; safecall;
    function Get_RetainAppearance: WordBool; safecall;
    procedure Set_RetainAppearance(pRetVal: WordBool); safecall;
    procedure RevertAppearance; safecall;
    function Get_SizeFactor: SizeF; safecall;
    procedure Set_SizeFactor(pRetVal: SizeF); safecall;
    function Get_SizeFactorName: WideString; safecall;
    procedure Set_SizeFactorName(const pRetVal: WideString); safecall;
    procedure SetTag(Tag: OleVariant); safecall;
    function Get_AEClientSelector: _EasyAEClientSelector; safecall;
    procedure _Set_AEClientSelector(const pRetVal: _EasyAEClientSelector); safecall;
    function Get_DAClientSelector: _EasyDAClientSelector; safecall;
    procedure _Set_DAClientSelector(const pRetVal: _EasyDAClientSelector); safecall;
    function Get_ServerFamilies: ServerFamilies; safecall;
    procedure Set_ServerFamilies(pRetVal: ServerFamilies); safecall;
    function Get_Location: WideString; safecall;
    procedure Set_Location(const pRetVal: WideString); safecall;
    function Get_ServerClass: WideString; safecall;
    procedure Set_ServerClass(const pRetVal: WideString); safecall;
    function Get_ServerProgram: WideString; safecall;
    procedure Set_ServerProgram(const pRetVal: WideString); safecall;
    function Get_UrlString: WideString; safecall;
    procedure Set_UrlString(const pRetVal: WideString); safecall;
    function Get_ServerElement: _ServerElement; safecall;
    function Get_Technologies: OpcTechnologies; safecall;
    procedure Set_Technologies(pRetVal: OpcTechnologies); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property AEClientSelector: _EasyAEClientSelector read Get_AEClientSelector write _Set_AEClientSelector;
    property DAClientSelector: _EasyDAClientSelector read Get_DAClientSelector write _Set_DAClientSelector;
    property ServerFamilies: ServerFamilies read Get_ServerFamilies write Set_ServerFamilies;
    property Location: WideString read Get_Location write Set_Location;
    property ServerClass: WideString read Get_ServerClass write Set_ServerClass;
    property ServerProgram: WideString read Get_ServerProgram write Set_ServerProgram;
    property UrlString: WideString read Get_UrlString write Set_UrlString;
    property ServerElement: _ServerElement read Get_ServerElement;
    property Technologies: OpcTechnologies read Get_Technologies write Set_Technologies;
  end;

// *********************************************************************//
// DispIntf:  _OpcServerDialogDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {50F0BA3D-30B6-40C6-882A-323484B9DD4C}
// *********************************************************************//
  _OpcServerDialogDisp = dispinterface
    ['{50F0BA3D-30B6-40C6-882A-323484B9DD4C}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Tag: OleVariant dispid 1610743813;
    procedure Reset; dispid 1610743815;
    function ShowDialog(const owner: IWin32Window): DialogResult; dispid 1610743816;
    property RetainAppearance: WordBool dispid 1610743817;
    procedure RevertAppearance; dispid 1610743819;
    property SizeFactor: {NOT_OLEAUTO(SizeF)}OleVariant dispid 1610743820;
    property SizeFactorName: WideString dispid 1610743822;
    procedure SetTag(Tag: OleVariant); dispid 1610743824;
    property AEClientSelector: _EasyAEClientSelector dispid 1610743825;
    property DAClientSelector: _EasyDAClientSelector dispid 1610743827;
    property ServerFamilies: ServerFamilies dispid 1610743829;
    property Location: WideString dispid 1610743831;
    property ServerClass: WideString dispid 1610743833;
    property ServerProgram: WideString dispid 1610743835;
    property UrlString: WideString dispid 1610743837;
    property ServerElement: _ServerElement readonly dispid 1610743839;
    property Technologies: OpcTechnologies dispid 1610743840;
  end;

// *********************************************************************//
// Interface: _OpcComputerAndServerDialog
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B27210A2-2E46-4417-B549-714B50BC7C86}
// *********************************************************************//
  _OpcComputerAndServerDialog = interface(IDispatch)
    ['{B27210A2-2E46-4417-B549-714B50BC7C86}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Tag: OleVariant; safecall;
    procedure _Set_Tag(pRetVal: OleVariant); safecall;
    procedure Reset; safecall;
    function ShowDialog(const owner: IWin32Window): DialogResult; safecall;
    function Get_RetainAppearance: WordBool; safecall;
    procedure Set_RetainAppearance(pRetVal: WordBool); safecall;
    procedure RevertAppearance; safecall;
    function Get_SizeFactor: SizeF; safecall;
    procedure Set_SizeFactor(pRetVal: SizeF); safecall;
    function Get_SizeFactorName: WideString; safecall;
    procedure Set_SizeFactorName(const pRetVal: WideString); safecall;
    procedure SetTag(Tag: OleVariant); safecall;
    function Get_AEClientSelector: _EasyAEClientSelector; safecall;
    procedure _Set_AEClientSelector(const pRetVal: _EasyAEClientSelector); safecall;
    function Get_DAClientSelector: _EasyDAClientSelector; safecall;
    procedure _Set_DAClientSelector(const pRetVal: _EasyDAClientSelector); safecall;
    function Get_ManualNodes: WordBool; safecall;
    procedure Set_ManualNodes(pRetVal: WordBool); safecall;
    function Get_ServerFamilies: ServerFamilies; safecall;
    procedure Set_ServerFamilies(pRetVal: ServerFamilies); safecall;
    function Get_ServerDescriptor: _ServerDescriptor; safecall;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor); safecall;
    function Get_ComputerElement: _ComputerElement; safecall;
    function Get_ServerElement: _ServerElement; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property AEClientSelector: _EasyAEClientSelector read Get_AEClientSelector write _Set_AEClientSelector;
    property DAClientSelector: _EasyDAClientSelector read Get_DAClientSelector write _Set_DAClientSelector;
    property ManualNodes: WordBool read Get_ManualNodes write Set_ManualNodes;
    property ServerFamilies: ServerFamilies read Get_ServerFamilies write Set_ServerFamilies;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property ComputerElement: _ComputerElement read Get_ComputerElement;
    property ServerElement: _ServerElement read Get_ServerElement;
  end;

// *********************************************************************//
// DispIntf:  _OpcComputerAndServerDialogDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B27210A2-2E46-4417-B549-714B50BC7C86}
// *********************************************************************//
  _OpcComputerAndServerDialogDisp = dispinterface
    ['{B27210A2-2E46-4417-B549-714B50BC7C86}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Tag: OleVariant dispid 1610743813;
    procedure Reset; dispid 1610743815;
    function ShowDialog(const owner: IWin32Window): DialogResult; dispid 1610743816;
    property RetainAppearance: WordBool dispid 1610743817;
    procedure RevertAppearance; dispid 1610743819;
    property SizeFactor: {NOT_OLEAUTO(SizeF)}OleVariant dispid 1610743820;
    property SizeFactorName: WideString dispid 1610743822;
    procedure SetTag(Tag: OleVariant); dispid 1610743824;
    property AEClientSelector: _EasyAEClientSelector dispid 1610743825;
    property DAClientSelector: _EasyDAClientSelector dispid 1610743827;
    property ManualNodes: WordBool dispid 1610743829;
    property ServerFamilies: ServerFamilies dispid 1610743831;
    property ServerDescriptor: _ServerDescriptor dispid 1610743833;
    property ComputerElement: _ComputerElement readonly dispid 1610743835;
    property ServerElement: _ServerElement readonly dispid 1610743836;
  end;

// *********************************************************************//
// Interface: _DADialog
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {24225CEA-40AD-4EEA-9E6D-D81EDD410BDB}
// *********************************************************************//
  _DADialog = interface(IDispatch)
    ['{24225CEA-40AD-4EEA-9E6D-D81EDD410BDB}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Tag: OleVariant; safecall;
    procedure _Set_Tag(pRetVal: OleVariant); safecall;
    procedure Reset; safecall;
    function ShowDialog(const owner: IWin32Window): DialogResult; safecall;
    function Get_RetainAppearance: WordBool; safecall;
    procedure Set_RetainAppearance(pRetVal: WordBool); safecall;
    procedure RevertAppearance; safecall;
    function Get_SizeFactor: SizeF; safecall;
    procedure Set_SizeFactor(pRetVal: SizeF); safecall;
    function Get_SizeFactorName: WideString; safecall;
    procedure Set_SizeFactorName(const pRetVal: WideString); safecall;
    procedure SetTag(Tag: OleVariant); safecall;
    function Get_ClientSelector: _EasyDAClientSelector; safecall;
    procedure _Set_ClientSelector(const pRetVal: _EasyDAClientSelector); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property ClientSelector: _EasyDAClientSelector read Get_ClientSelector write _Set_ClientSelector;
  end;

// *********************************************************************//
// DispIntf:  _DADialogDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {24225CEA-40AD-4EEA-9E6D-D81EDD410BDB}
// *********************************************************************//
  _DADialogDisp = dispinterface
    ['{24225CEA-40AD-4EEA-9E6D-D81EDD410BDB}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Tag: OleVariant dispid 1610743813;
    procedure Reset; dispid 1610743815;
    function ShowDialog(const owner: IWin32Window): DialogResult; dispid 1610743816;
    property RetainAppearance: WordBool dispid 1610743817;
    procedure RevertAppearance; dispid 1610743819;
    property SizeFactor: {NOT_OLEAUTO(SizeF)}OleVariant dispid 1610743820;
    property SizeFactorName: WideString dispid 1610743822;
    procedure SetTag(Tag: OleVariant); dispid 1610743824;
    property ClientSelector: _EasyDAClientSelector dispid 1610743825;
  end;

// *********************************************************************//
// Interface: _DAPropertyDialog
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9E32D282-E50A-4392-A25C-4A0ECC3B8C5B}
// *********************************************************************//
  _DAPropertyDialog = interface(IDispatch)
    ['{9E32D282-E50A-4392-A25C-4A0ECC3B8C5B}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Tag: OleVariant; safecall;
    procedure _Set_Tag(pRetVal: OleVariant); safecall;
    procedure Reset; safecall;
    function ShowDialog(const owner: IWin32Window): DialogResult; safecall;
    function Get_RetainAppearance: WordBool; safecall;
    procedure Set_RetainAppearance(pRetVal: WordBool); safecall;
    procedure RevertAppearance; safecall;
    function Get_SizeFactor: SizeF; safecall;
    procedure Set_SizeFactor(pRetVal: SizeF); safecall;
    function Get_SizeFactorName: WideString; safecall;
    procedure Set_SizeFactorName(const pRetVal: WideString); safecall;
    procedure SetTag(Tag: OleVariant); safecall;
    function Get_ClientSelector: _EasyDAClientSelector; safecall;
    procedure _Set_ClientSelector(const pRetVal: _EasyDAClientSelector); safecall;
    function Get_ServerDescriptor: _ServerDescriptor; safecall;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor); safecall;
    function Get_NodeDescriptor: _DANodeDescriptor; safecall;
    procedure _Set_NodeDescriptor(const pRetVal: _DANodeDescriptor); safecall;
    function Get_PropertyDescriptor: _DAPropertyDescriptor; safecall;
    procedure _Set_PropertyDescriptor(const pRetVal: _DAPropertyDescriptor); safecall;
    function Get_PropertyElement: _DAPropertyElement; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property ClientSelector: _EasyDAClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property NodeDescriptor: _DANodeDescriptor read Get_NodeDescriptor write _Set_NodeDescriptor;
    property PropertyDescriptor: _DAPropertyDescriptor read Get_PropertyDescriptor write _Set_PropertyDescriptor;
    property PropertyElement: _DAPropertyElement read Get_PropertyElement;
  end;

// *********************************************************************//
// DispIntf:  _DAPropertyDialogDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9E32D282-E50A-4392-A25C-4A0ECC3B8C5B}
// *********************************************************************//
  _DAPropertyDialogDisp = dispinterface
    ['{9E32D282-E50A-4392-A25C-4A0ECC3B8C5B}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Tag: OleVariant dispid 1610743813;
    procedure Reset; dispid 1610743815;
    function ShowDialog(const owner: IWin32Window): DialogResult; dispid 1610743816;
    property RetainAppearance: WordBool dispid 1610743817;
    procedure RevertAppearance; dispid 1610743819;
    property SizeFactor: {NOT_OLEAUTO(SizeF)}OleVariant dispid 1610743820;
    property SizeFactorName: WideString dispid 1610743822;
    procedure SetTag(Tag: OleVariant); dispid 1610743824;
    property ClientSelector: _EasyDAClientSelector dispid 1610743825;
    property ServerDescriptor: _ServerDescriptor dispid 1610743827;
    property NodeDescriptor: _DANodeDescriptor dispid 1610743829;
    property PropertyDescriptor: _DAPropertyDescriptor dispid 1610743831;
    property PropertyElement: _DAPropertyElement readonly dispid 1610743833;
  end;

// *********************************************************************//
// Interface: _DAItemDialog
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {574447AC-4A29-45F6-9AD0-0093FB9170B4}
// *********************************************************************//
  _DAItemDialog = interface(IDispatch)
    ['{574447AC-4A29-45F6-9AD0-0093FB9170B4}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Tag: OleVariant; safecall;
    procedure _Set_Tag(pRetVal: OleVariant); safecall;
    procedure Reset; safecall;
    function ShowDialog(const owner: IWin32Window): DialogResult; safecall;
    function Get_RetainAppearance: WordBool; safecall;
    procedure Set_RetainAppearance(pRetVal: WordBool); safecall;
    procedure RevertAppearance; safecall;
    function Get_SizeFactor: SizeF; safecall;
    procedure Set_SizeFactor(pRetVal: SizeF); safecall;
    function Get_SizeFactorName: WideString; safecall;
    procedure Set_SizeFactorName(const pRetVal: WideString); safecall;
    procedure SetTag(Tag: OleVariant); safecall;
    function Get_ClientSelector: _EasyDAClientSelector; safecall;
    procedure _Set_ClientSelector(const pRetVal: _EasyDAClientSelector); safecall;
    function Get_MultiSelect: WordBool; safecall;
    procedure Set_MultiSelect(pRetVal: WordBool); safecall;
    function Get_ServerDescriptor: _ServerDescriptor; safecall;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor); safecall;
    function Get_NodeDescriptor: _DANodeDescriptor; safecall;
    procedure _Set_NodeDescriptor(const pRetVal: _DANodeDescriptor); safecall;
    function Get_NodeDescriptors: PSafeArray; safecall;
    procedure Set_NodeDescriptors(pRetVal: PSafeArray); safecall;
    function Get_NodeElement: _DANodeElement; safecall;
    function Get_NodeElements: PSafeArray; safecall;
    procedure SetNodeDescriptors(var NodeDescriptors: PSafeArray); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property ClientSelector: _EasyDAClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property MultiSelect: WordBool read Get_MultiSelect write Set_MultiSelect;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property NodeDescriptor: _DANodeDescriptor read Get_NodeDescriptor write _Set_NodeDescriptor;
    property NodeDescriptors: PSafeArray read Get_NodeDescriptors write Set_NodeDescriptors;
    property NodeElement: _DANodeElement read Get_NodeElement;
    property NodeElements: PSafeArray read Get_NodeElements;
  end;

// *********************************************************************//
// DispIntf:  _DAItemDialogDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {574447AC-4A29-45F6-9AD0-0093FB9170B4}
// *********************************************************************//
  _DAItemDialogDisp = dispinterface
    ['{574447AC-4A29-45F6-9AD0-0093FB9170B4}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Tag: OleVariant dispid 1610743813;
    procedure Reset; dispid 1610743815;
    function ShowDialog(const owner: IWin32Window): DialogResult; dispid 1610743816;
    property RetainAppearance: WordBool dispid 1610743817;
    procedure RevertAppearance; dispid 1610743819;
    property SizeFactor: {NOT_OLEAUTO(SizeF)}OleVariant dispid 1610743820;
    property SizeFactorName: WideString dispid 1610743822;
    procedure SetTag(Tag: OleVariant); dispid 1610743824;
    property ClientSelector: _EasyDAClientSelector dispid 1610743825;
    property MultiSelect: WordBool dispid 1610743827;
    property ServerDescriptor: _ServerDescriptor dispid 1610743829;
    property NodeDescriptor: _DANodeDescriptor dispid 1610743831;
    property NodeDescriptors: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743833;
    property NodeElement: _DANodeElement readonly dispid 1610743835;
    property NodeElements: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743836;
    procedure SetNodeDescriptors(var NodeDescriptors: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743837;
  end;

// *********************************************************************//
// Interface: _AEDialog
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C6416BB5-233D-4783-A01F-1F9201BF18CA}
// *********************************************************************//
  _AEDialog = interface(IDispatch)
    ['{C6416BB5-233D-4783-A01F-1F9201BF18CA}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Tag: OleVariant; safecall;
    procedure _Set_Tag(pRetVal: OleVariant); safecall;
    procedure Reset; safecall;
    function ShowDialog(const owner: IWin32Window): DialogResult; safecall;
    function Get_RetainAppearance: WordBool; safecall;
    procedure Set_RetainAppearance(pRetVal: WordBool); safecall;
    procedure RevertAppearance; safecall;
    function Get_SizeFactor: SizeF; safecall;
    procedure Set_SizeFactor(pRetVal: SizeF); safecall;
    function Get_SizeFactorName: WideString; safecall;
    procedure Set_SizeFactorName(const pRetVal: WideString); safecall;
    procedure SetTag(Tag: OleVariant); safecall;
    function Get_ClientSelector: _EasyAEClientSelector; safecall;
    procedure _Set_ClientSelector(const pRetVal: _EasyAEClientSelector); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property ClientSelector: _EasyAEClientSelector read Get_ClientSelector write _Set_ClientSelector;
  end;

// *********************************************************************//
// DispIntf:  _AEDialogDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C6416BB5-233D-4783-A01F-1F9201BF18CA}
// *********************************************************************//
  _AEDialogDisp = dispinterface
    ['{C6416BB5-233D-4783-A01F-1F9201BF18CA}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Tag: OleVariant dispid 1610743813;
    procedure Reset; dispid 1610743815;
    function ShowDialog(const owner: IWin32Window): DialogResult; dispid 1610743816;
    property RetainAppearance: WordBool dispid 1610743817;
    procedure RevertAppearance; dispid 1610743819;
    property SizeFactor: {NOT_OLEAUTO(SizeF)}OleVariant dispid 1610743820;
    property SizeFactorName: WideString dispid 1610743822;
    procedure SetTag(Tag: OleVariant); dispid 1610743824;
    property ClientSelector: _EasyAEClientSelector dispid 1610743825;
  end;

// *********************************************************************//
// Interface: _AEAttributeDialog
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F7B1A96C-69AB-4410-A691-CCA527B641DD}
// *********************************************************************//
  _AEAttributeDialog = interface(IDispatch)
    ['{F7B1A96C-69AB-4410-A691-CCA527B641DD}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Tag: OleVariant; safecall;
    procedure _Set_Tag(pRetVal: OleVariant); safecall;
    procedure Reset; safecall;
    function ShowDialog(const owner: IWin32Window): DialogResult; safecall;
    function Get_RetainAppearance: WordBool; safecall;
    procedure Set_RetainAppearance(pRetVal: WordBool); safecall;
    procedure RevertAppearance; safecall;
    function Get_SizeFactor: SizeF; safecall;
    procedure Set_SizeFactor(pRetVal: SizeF); safecall;
    function Get_SizeFactorName: WideString; safecall;
    procedure Set_SizeFactorName(const pRetVal: WideString); safecall;
    procedure SetTag(Tag: OleVariant); safecall;
    function Get_ClientSelector: _EasyAEClientSelector; safecall;
    procedure _Set_ClientSelector(const pRetVal: _EasyAEClientSelector); safecall;
    function Get_MultiSelect: WordBool; safecall;
    procedure Set_MultiSelect(pRetVal: WordBool); safecall;
    function Get_ServerDescriptor: _ServerDescriptor; safecall;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor); safecall;
    function Get_CategoryId: Integer; safecall;
    procedure Set_CategoryId(pRetVal: Integer); safecall;
    function Get_AttributeId: Integer; safecall;
    procedure Set_AttributeId(pRetVal: Integer); safecall;
    function Get_AttributeIds: _Int32Collection; safecall;
    procedure _Set_AttributeIds(const pRetVal: _Int32Collection); safecall;
    function Get_AttributeElement: _AEAttributeElement; safecall;
    function Get_AttributeElements: _AEAttributeElementCollection; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property ClientSelector: _EasyAEClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property MultiSelect: WordBool read Get_MultiSelect write Set_MultiSelect;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property CategoryId: Integer read Get_CategoryId write Set_CategoryId;
    property AttributeId: Integer read Get_AttributeId write Set_AttributeId;
    property AttributeIds: _Int32Collection read Get_AttributeIds write _Set_AttributeIds;
    property AttributeElement: _AEAttributeElement read Get_AttributeElement;
    property AttributeElements: _AEAttributeElementCollection read Get_AttributeElements;
  end;

// *********************************************************************//
// DispIntf:  _AEAttributeDialogDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F7B1A96C-69AB-4410-A691-CCA527B641DD}
// *********************************************************************//
  _AEAttributeDialogDisp = dispinterface
    ['{F7B1A96C-69AB-4410-A691-CCA527B641DD}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Tag: OleVariant dispid 1610743813;
    procedure Reset; dispid 1610743815;
    function ShowDialog(const owner: IWin32Window): DialogResult; dispid 1610743816;
    property RetainAppearance: WordBool dispid 1610743817;
    procedure RevertAppearance; dispid 1610743819;
    property SizeFactor: {NOT_OLEAUTO(SizeF)}OleVariant dispid 1610743820;
    property SizeFactorName: WideString dispid 1610743822;
    procedure SetTag(Tag: OleVariant); dispid 1610743824;
    property ClientSelector: _EasyAEClientSelector dispid 1610743825;
    property MultiSelect: WordBool dispid 1610743827;
    property ServerDescriptor: _ServerDescriptor dispid 1610743829;
    property CategoryId: Integer dispid 1610743831;
    property AttributeId: Integer dispid 1610743833;
    property AttributeIds: _Int32Collection dispid 1610743835;
    property AttributeElement: _AEAttributeElement readonly dispid 1610743837;
    property AttributeElements: _AEAttributeElementCollection readonly dispid 1610743838;
  end;

// *********************************************************************//
// Interface: _AECategoryConditionDialog
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9B7A7BAD-7578-4893-B948-BF334A94F3AF}
// *********************************************************************//
  _AECategoryConditionDialog = interface(IDispatch)
    ['{9B7A7BAD-7578-4893-B948-BF334A94F3AF}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Tag: OleVariant; safecall;
    procedure _Set_Tag(pRetVal: OleVariant); safecall;
    procedure Reset; safecall;
    function ShowDialog(const owner: IWin32Window): DialogResult; safecall;
    function Get_RetainAppearance: WordBool; safecall;
    procedure Set_RetainAppearance(pRetVal: WordBool); safecall;
    procedure RevertAppearance; safecall;
    function Get_SizeFactor: SizeF; safecall;
    procedure Set_SizeFactor(pRetVal: SizeF); safecall;
    function Get_SizeFactorName: WideString; safecall;
    procedure Set_SizeFactorName(const pRetVal: WideString); safecall;
    procedure SetTag(Tag: OleVariant); safecall;
    function Get_ClientSelector: _EasyAEClientSelector; safecall;
    procedure _Set_ClientSelector(const pRetVal: _EasyAEClientSelector); safecall;
    function Get_ServerDescriptor: _ServerDescriptor; safecall;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor); safecall;
    function Get_CategoryId: Integer; safecall;
    procedure Set_CategoryId(pRetVal: Integer); safecall;
    function Get_ConditionName: WideString; safecall;
    procedure Set_ConditionName(const pRetVal: WideString); safecall;
    function Get_ConditionElement: _AEConditionElement; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property ClientSelector: _EasyAEClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property CategoryId: Integer read Get_CategoryId write Set_CategoryId;
    property ConditionName: WideString read Get_ConditionName write Set_ConditionName;
    property ConditionElement: _AEConditionElement read Get_ConditionElement;
  end;

// *********************************************************************//
// DispIntf:  _AECategoryConditionDialogDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9B7A7BAD-7578-4893-B948-BF334A94F3AF}
// *********************************************************************//
  _AECategoryConditionDialogDisp = dispinterface
    ['{9B7A7BAD-7578-4893-B948-BF334A94F3AF}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Tag: OleVariant dispid 1610743813;
    procedure Reset; dispid 1610743815;
    function ShowDialog(const owner: IWin32Window): DialogResult; dispid 1610743816;
    property RetainAppearance: WordBool dispid 1610743817;
    procedure RevertAppearance; dispid 1610743819;
    property SizeFactor: {NOT_OLEAUTO(SizeF)}OleVariant dispid 1610743820;
    property SizeFactorName: WideString dispid 1610743822;
    procedure SetTag(Tag: OleVariant); dispid 1610743824;
    property ClientSelector: _EasyAEClientSelector dispid 1610743825;
    property ServerDescriptor: _ServerDescriptor dispid 1610743827;
    property CategoryId: Integer dispid 1610743829;
    property ConditionName: WideString dispid 1610743831;
    property ConditionElement: _AEConditionElement readonly dispid 1610743833;
  end;

// *********************************************************************//
// Interface: _AECategoryDialog
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DD0372DA-A834-4AD4-85A2-678AF6AA52DD}
// *********************************************************************//
  _AECategoryDialog = interface(IDispatch)
    ['{DD0372DA-A834-4AD4-85A2-678AF6AA52DD}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Tag: OleVariant; safecall;
    procedure _Set_Tag(pRetVal: OleVariant); safecall;
    procedure Reset; safecall;
    function ShowDialog(const owner: IWin32Window): DialogResult; safecall;
    function Get_RetainAppearance: WordBool; safecall;
    procedure Set_RetainAppearance(pRetVal: WordBool); safecall;
    procedure RevertAppearance; safecall;
    function Get_SizeFactor: SizeF; safecall;
    procedure Set_SizeFactor(pRetVal: SizeF); safecall;
    function Get_SizeFactorName: WideString; safecall;
    procedure Set_SizeFactorName(const pRetVal: WideString); safecall;
    procedure SetTag(Tag: OleVariant); safecall;
    function Get_ClientSelector: _EasyAEClientSelector; safecall;
    procedure _Set_ClientSelector(const pRetVal: _EasyAEClientSelector); safecall;
    function Get_MultiSelect: WordBool; safecall;
    procedure Set_MultiSelect(pRetVal: WordBool); safecall;
    function Get_ServerDescriptor: _ServerDescriptor; safecall;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor); safecall;
    function Get_EventTypes: _AEEventType; safecall;
    procedure _Set_EventTypes(const pRetVal: _AEEventType); safecall;
    function Get_CategoryId: Integer; safecall;
    procedure Set_CategoryId(pRetVal: Integer); safecall;
    function Get_CategoryIds: _Int32Collection; safecall;
    procedure _Set_CategoryIds(const pRetVal: _Int32Collection); safecall;
    function Get_CategoryElements: _AECategoryElementCollection; safecall;
    function Get_CategoryElement: _AECategoryElement; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property ClientSelector: _EasyAEClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property MultiSelect: WordBool read Get_MultiSelect write Set_MultiSelect;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property EventTypes: _AEEventType read Get_EventTypes write _Set_EventTypes;
    property CategoryId: Integer read Get_CategoryId write Set_CategoryId;
    property CategoryIds: _Int32Collection read Get_CategoryIds write _Set_CategoryIds;
    property CategoryElements: _AECategoryElementCollection read Get_CategoryElements;
    property CategoryElement: _AECategoryElement read Get_CategoryElement;
  end;

// *********************************************************************//
// DispIntf:  _AECategoryDialogDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DD0372DA-A834-4AD4-85A2-678AF6AA52DD}
// *********************************************************************//
  _AECategoryDialogDisp = dispinterface
    ['{DD0372DA-A834-4AD4-85A2-678AF6AA52DD}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Tag: OleVariant dispid 1610743813;
    procedure Reset; dispid 1610743815;
    function ShowDialog(const owner: IWin32Window): DialogResult; dispid 1610743816;
    property RetainAppearance: WordBool dispid 1610743817;
    procedure RevertAppearance; dispid 1610743819;
    property SizeFactor: {NOT_OLEAUTO(SizeF)}OleVariant dispid 1610743820;
    property SizeFactorName: WideString dispid 1610743822;
    procedure SetTag(Tag: OleVariant); dispid 1610743824;
    property ClientSelector: _EasyAEClientSelector dispid 1610743825;
    property MultiSelect: WordBool dispid 1610743827;
    property ServerDescriptor: _ServerDescriptor dispid 1610743829;
    property EventTypes: _AEEventType dispid 1610743831;
    property CategoryId: Integer dispid 1610743833;
    property CategoryIds: _Int32Collection dispid 1610743835;
    property CategoryElements: _AECategoryElementCollection readonly dispid 1610743837;
    property CategoryElement: _AECategoryElement readonly dispid 1610743838;
  end;

// *********************************************************************//
// Interface: _AEAreaOrSourceDialog
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {95393EA9-8524-4AE2-A3E5-1B9B63C12BD4}
// *********************************************************************//
  _AEAreaOrSourceDialog = interface(IDispatch)
    ['{95393EA9-8524-4AE2-A3E5-1B9B63C12BD4}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Tag: OleVariant; safecall;
    procedure _Set_Tag(pRetVal: OleVariant); safecall;
    procedure Reset; safecall;
    function ShowDialog(const owner: IWin32Window): DialogResult; safecall;
    function Get_RetainAppearance: WordBool; safecall;
    procedure Set_RetainAppearance(pRetVal: WordBool); safecall;
    procedure RevertAppearance; safecall;
    function Get_SizeFactor: SizeF; safecall;
    procedure Set_SizeFactor(pRetVal: SizeF); safecall;
    function Get_SizeFactorName: WideString; safecall;
    procedure Set_SizeFactorName(const pRetVal: WideString); safecall;
    procedure SetTag(Tag: OleVariant); safecall;
    function Get_ClientSelector: _EasyAEClientSelector; safecall;
    procedure _Set_ClientSelector(const pRetVal: _EasyAEClientSelector); safecall;
    function Get_MultiSelect: WordBool; safecall;
    procedure Set_MultiSelect(pRetVal: WordBool); safecall;
    function Get_ServerDescriptor: _ServerDescriptor; safecall;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor); safecall;
    function Get_NodeDescriptor: _AENodeDescriptor; safecall;
    procedure _Set_NodeDescriptor(const pRetVal: _AENodeDescriptor); safecall;
    function Get_AreaElements: PSafeArray; safecall;
    function Get_NodeElements: PSafeArray; safecall;
    function Get_SourceElements: PSafeArray; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property ClientSelector: _EasyAEClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property MultiSelect: WordBool read Get_MultiSelect write Set_MultiSelect;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property NodeDescriptor: _AENodeDescriptor read Get_NodeDescriptor write _Set_NodeDescriptor;
    property AreaElements: PSafeArray read Get_AreaElements;
    property NodeElements: PSafeArray read Get_NodeElements;
    property SourceElements: PSafeArray read Get_SourceElements;
  end;

// *********************************************************************//
// DispIntf:  _AEAreaOrSourceDialogDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {95393EA9-8524-4AE2-A3E5-1B9B63C12BD4}
// *********************************************************************//
  _AEAreaOrSourceDialogDisp = dispinterface
    ['{95393EA9-8524-4AE2-A3E5-1B9B63C12BD4}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Tag: OleVariant dispid 1610743813;
    procedure Reset; dispid 1610743815;
    function ShowDialog(const owner: IWin32Window): DialogResult; dispid 1610743816;
    property RetainAppearance: WordBool dispid 1610743817;
    procedure RevertAppearance; dispid 1610743819;
    property SizeFactor: {NOT_OLEAUTO(SizeF)}OleVariant dispid 1610743820;
    property SizeFactorName: WideString dispid 1610743822;
    procedure SetTag(Tag: OleVariant); dispid 1610743824;
    property ClientSelector: _EasyAEClientSelector dispid 1610743825;
    property MultiSelect: WordBool dispid 1610743827;
    property ServerDescriptor: _ServerDescriptor dispid 1610743829;
    property NodeDescriptor: _AENodeDescriptor dispid 1610743831;
    property AreaElements: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743833;
    property NodeElements: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743834;
    property SourceElements: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743835;
  end;

// *********************************************************************//
// The Class CoUABrowseDialog provides a Create and CreateRemote method to          
// create instances of the default interface _UABrowseDialog exposed by              
// the CoClass UABrowseDialog. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUABrowseDialog = class
    class function Create: _UABrowseDialog;
    class function CreateRemote(const MachineName: string): _UABrowseDialog;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TUABrowseDialog
// Help String      : Displays a dialog with various OPC-UA nodes (elements) from which the user can select.
// Default Interface: _UABrowseDialog
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TUABrowseDialog = class(TOleServer)
  private
    FIntf: _UABrowseDialog;
    function GetDefaultInterface: _UABrowseDialog;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_Tag: OleVariant;
    procedure _Set_Tag(pRetVal: OleVariant);
    function Get_ClientSelector: _EasyUAClientSelector;
    procedure _Set_ClientSelector(const pRetVal: _EasyUAClientSelector);
    function Get_Mode: _UABrowseMode;
    function Get_Inputs: _UABrowseInputs;
    function Get_InputsOutputs: _UABrowseInputsOutputs;
    function Get_Outputs: _UABrowseOutputs;
    function Get_Simulated: WordBool;
    procedure Set_Simulated(pRetVal: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _UABrowseDialog);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    procedure Reset;
    function ShowDialog(const owner: IWin32Window): DialogResult;
    procedure SetTag(Tag: OleVariant);
    property DefaultInterface: _UABrowseDialog read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property ClientSelector: _EasyUAClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property Mode: _UABrowseMode read Get_Mode;
    property Inputs: _UABrowseInputs read Get_Inputs;
    property InputsOutputs: _UABrowseInputsOutputs read Get_InputsOutputs;
    property Outputs: _UABrowseOutputs read Get_Outputs;
    property Simulated: WordBool read Get_Simulated write Set_Simulated;
  published
  end;

// *********************************************************************//
// The Class CoUABrowseInputs provides a Create and CreateRemote method to          
// create instances of the default interface _UABrowseInputs exposed by              
// the CoClass UABrowseInputs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUABrowseInputs = class
    class function Create: _UABrowseInputs;
    class function CreateRemote(const MachineName: string): _UABrowseInputs;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TUABrowseInputs
// Help String      : Contains inputs to OPC-UA user browsing.
// Default Interface: _UABrowseInputs
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TUABrowseInputs = class(TOleServer)
  private
    FIntf: _UABrowseInputs;
    function GetDefaultInterface: _UABrowseInputs;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _UABrowseInputs);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    property DefaultInterface: _UABrowseInputs read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
  published
  end;

// *********************************************************************//
// The Class CoUABrowseInputsOutputs provides a Create and CreateRemote method to          
// create instances of the default interface _UABrowseInputsOutputs exposed by              
// the CoClass UABrowseInputsOutputs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUABrowseInputsOutputs = class
    class function Create: _UABrowseInputsOutputs;
    class function CreateRemote(const MachineName: string): _UABrowseInputsOutputs;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TUABrowseInputsOutputs
// Help String      : Contains inputs/outputs to/from OPC-UA user browsing.
// Default Interface: _UABrowseInputsOutputs
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TUABrowseInputsOutputs = class(TOleServer)
  private
    FIntf: _UABrowseInputsOutputs;
    function GetDefaultInterface: _UABrowseInputsOutputs;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_CurrentNodeDescriptor: _UABrowseNodeDescriptor;
    procedure _Set_CurrentNodeDescriptor(const pRetVal: _UABrowseNodeDescriptor);
    function Get_SelectionDescriptors: _UABrowseNodeDescriptorCollection;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _UABrowseInputsOutputs);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    property DefaultInterface: _UABrowseInputsOutputs read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property CurrentNodeDescriptor: _UABrowseNodeDescriptor read Get_CurrentNodeDescriptor write _Set_CurrentNodeDescriptor;
    property SelectionDescriptors: _UABrowseNodeDescriptorCollection read Get_SelectionDescriptors;
  published
  end;

// *********************************************************************//
// The Class CoUABrowseMode provides a Create and CreateRemote method to          
// create instances of the default interface _UABrowseMode exposed by              
// the CoClass UABrowseMode. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUABrowseMode = class
    class function Create: _UABrowseMode;
    class function CreateRemote(const MachineName: string): _UABrowseMode;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TUABrowseMode
// Help String      : Determines the OPC-UA user browsing mode.
// Default Interface: _UABrowseMode
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TUABrowseMode = class(TOleServer)
  private
    FIntf: _UABrowseMode;
    function GetDefaultInterface: _UABrowseMode;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_ManualNodes: WordBool;
    procedure Set_ManualNodes(pRetVal: WordBool);
    function Get_MultiSelect: WordBool;
    procedure Set_MultiSelect(pRetVal: WordBool);
    function Get_ShowListBranches: WordBool;
    procedure Set_ShowListBranches(pRetVal: WordBool);
    function Get_AnchorElementType: UAElementType;
    procedure Set_AnchorElementType(pRetVal: UAElementType);
    function Get_NodeBrowseFilter: _UANodeBrowseFilter;
    procedure _Set_NodeBrowseFilter(const pRetVal: _UANodeBrowseFilter);
    function Get_SelectableNodeClasses: UANodeClass;
    procedure Set_SelectableNodeClasses(pRetVal: UANodeClass);
    function Get_SelectElementType: UAElementType;
    procedure Set_SelectElementType(pRetVal: UAElementType);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _UABrowseMode);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    function IsSelectable(elementType: UAElementType): WordBool;
    property DefaultInterface: _UABrowseMode read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property NodeBrowseFilter: _UANodeBrowseFilter read Get_NodeBrowseFilter write _Set_NodeBrowseFilter;
    property ManualNodes: WordBool read Get_ManualNodes write Set_ManualNodes;
    property MultiSelect: WordBool read Get_MultiSelect write Set_MultiSelect;
    property ShowListBranches: WordBool read Get_ShowListBranches write Set_ShowListBranches;
    property AnchorElementType: UAElementType read Get_AnchorElementType write Set_AnchorElementType;
    property SelectableNodeClasses: UANodeClass read Get_SelectableNodeClasses write Set_SelectableNodeClasses;
    property SelectElementType: UAElementType read Get_SelectElementType write Set_SelectElementType;
  published
  end;

// *********************************************************************//
// The Class CoUABrowseNodeDescriptor provides a Create and CreateRemote method to          
// create instances of the default interface _UABrowseNodeDescriptor exposed by              
// the CoClass UABrowseNodeDescriptor. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUABrowseNodeDescriptor = class
    class function Create: _UABrowseNodeDescriptor;
    class function CreateRemote(const MachineName: string): _UABrowseNodeDescriptor;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TUABrowseNodeDescriptor
// Help String      : Contains descriptor (an object specifying a node) for OPC-UA user browsing.
// Default Interface: _UABrowseNodeDescriptor
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TUABrowseNodeDescriptor = class(TOleServer)
  private
    FIntf: _UABrowseNodeDescriptor;
    function GetDefaultInterface: _UABrowseNodeDescriptor;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_NodeDescriptor: _UANodeDescriptor;
    procedure _Set_NodeDescriptor(const pRetVal: _UANodeDescriptor);
    function Get_AttributeId: UAAttributeId;
    procedure Set_AttributeId(pRetVal: UAAttributeId);
    function Get_EndpointDescriptor: _UAEndpointDescriptor;
    procedure _Set_EndpointDescriptor(const pRetVal: _UAEndpointDescriptor);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _UABrowseNodeDescriptor);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    property DefaultInterface: _UABrowseNodeDescriptor read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property NodeDescriptor: _UANodeDescriptor read Get_NodeDescriptor write _Set_NodeDescriptor;
    property EndpointDescriptor: _UAEndpointDescriptor read Get_EndpointDescriptor write _Set_EndpointDescriptor;
    property AttributeId: UAAttributeId read Get_AttributeId write Set_AttributeId;
  published
  end;

// *********************************************************************//
// The Class CoUABrowseNodeDescriptorCollection provides a Create and CreateRemote method to          
// create instances of the default interface _UABrowseNodeDescriptorCollection exposed by              
// the CoClass UABrowseNodeDescriptorCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUABrowseNodeDescriptorCollection = class
    class function Create: _UABrowseNodeDescriptorCollection;
    class function CreateRemote(const MachineName: string): _UABrowseNodeDescriptorCollection;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TUABrowseNodeDescriptorCollection
// Help String      : A collection of UABrowseNodeDescriptors.
// Default Interface: _UABrowseNodeDescriptorCollection
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TUABrowseNodeDescriptorCollection = class(TOleServer)
  private
    FIntf: _UABrowseNodeDescriptorCollection;
    function GetDefaultInterface: _UABrowseNodeDescriptorCollection;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_Item(index: Integer): _UABrowseNodeDescriptor;
    procedure _Set_Item(index: Integer; const pRetVal: _UABrowseNodeDescriptor);
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _UABrowseNodeDescriptorCollection);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function GetEnumerator: IEnumVARIANT;
    procedure Add(Item: OleVariant);
    procedure Clear;
    function Contains(Item: OleVariant): WordBool;
    function IndexOf(Item: OleVariant): Integer;
    procedure Insert(index: Integer; Item: OleVariant);
    function Remove(Item: OleVariant): WordBool;
    procedure RemoveAt(index: Integer);
    property DefaultInterface: _UABrowseNodeDescriptorCollection read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property Item[index: Integer]: _UABrowseNodeDescriptor read Get_Item write _Set_Item; default;
    property Count: Integer read Get_Count;
  published
  end;

// *********************************************************************//
// The Class CoUABrowseNodeElement provides a Create and CreateRemote method to          
// create instances of the default interface _UABrowseNodeElement exposed by              
// the CoClass UABrowseNodeElement. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUABrowseNodeElement = class
    class function Create: _UABrowseNodeElement;
    class function CreateRemote(const MachineName: string): _UABrowseNodeElement;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TUABrowseNodeElement
// Help String      : Contains an OPC-UA user browse element, i.a. all available information obtained about a node.
// Default Interface: _UABrowseNodeElement
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TUABrowseNodeElement = class(TOleServer)
  private
    FIntf: _UABrowseNodeElement;
    function GetDefaultInterface: _UABrowseNodeElement;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_DiscoveryElement: _UADiscoveryElement;
    procedure _Set_DiscoveryElement(const pRetVal: _UADiscoveryElement);
    function Get_HostElement: _HostElement;
    procedure _Set_HostElement(const pRetVal: _HostElement);
    function Get_NodeElement: _UANodeElement;
    procedure _Set_NodeElement(const pRetVal: _UANodeElement);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _UABrowseNodeElement);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    property DefaultInterface: _UABrowseNodeElement read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property DiscoveryElement: _UADiscoveryElement read Get_DiscoveryElement write _Set_DiscoveryElement;
    property HostElement: _HostElement read Get_HostElement write _Set_HostElement;
    property NodeElement: _UANodeElement read Get_NodeElement write _Set_NodeElement;
  published
  end;

// *********************************************************************//
// The Class CoUABrowseNodeElementCollection provides a Create and CreateRemote method to          
// create instances of the default interface _UABrowseNodeElementCollection exposed by              
// the CoClass UABrowseNodeElementCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUABrowseNodeElementCollection = class
    class function Create: _UABrowseNodeElementCollection;
    class function CreateRemote(const MachineName: string): _UABrowseNodeElementCollection;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TUABrowseNodeElementCollection
// Help String      : A collection of UABrowseNodeElements.
// Default Interface: _UABrowseNodeElementCollection
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TUABrowseNodeElementCollection = class(TOleServer)
  private
    FIntf: _UABrowseNodeElementCollection;
    function GetDefaultInterface: _UABrowseNodeElementCollection;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_Item(index: Integer): _UABrowseNodeElement;
    procedure _Set_Item(index: Integer; const pRetVal: _UABrowseNodeElement);
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _UABrowseNodeElementCollection);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function GetEnumerator: IEnumVARIANT;
    procedure Add(Item: OleVariant);
    procedure Clear;
    function Contains(Item: OleVariant): WordBool;
    function IndexOf(Item: OleVariant): Integer;
    procedure Insert(index: Integer; Item: OleVariant);
    function Remove(Item: OleVariant): WordBool;
    procedure RemoveAt(index: Integer);
    property DefaultInterface: _UABrowseNodeElementCollection read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property Item[index: Integer]: _UABrowseNodeElement read Get_Item write _Set_Item; default;
    property Count: Integer read Get_Count;
  published
  end;

// *********************************************************************//
// The Class CoUABrowseOutputs provides a Create and CreateRemote method to          
// create instances of the default interface _UABrowseOutputs exposed by              
// the CoClass UABrowseOutputs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUABrowseOutputs = class
    class function Create: _UABrowseOutputs;
    class function CreateRemote(const MachineName: string): _UABrowseOutputs;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TUABrowseOutputs
// Help String      : Contains outputs from OPC-UA user browsing.
// Default Interface: _UABrowseOutputs
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TUABrowseOutputs = class(TOleServer)
  private
    FIntf: _UABrowseOutputs;
    function GetDefaultInterface: _UABrowseOutputs;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_CurrentNodeElement: _UABrowseNodeElement;
    procedure _Set_CurrentNodeElement(const pRetVal: _UABrowseNodeElement);
    function Get_SelectionElements: _UABrowseNodeElementCollection;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _UABrowseOutputs);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    property DefaultInterface: _UABrowseOutputs read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property CurrentNodeElement: _UABrowseNodeElement read Get_CurrentNodeElement write _Set_CurrentNodeElement;
    property SelectionElements: _UABrowseNodeElementCollection read Get_SelectionElements;
  published
  end;

// *********************************************************************//
// The Class CoUADataDialog provides a Create and CreateRemote method to          
// create instances of the default interface _UADataDialog exposed by              
// the CoClass UADataDialog. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUADataDialog = class
    class function Create: _UADataDialog;
    class function CreateRemote(const MachineName: string): _UADataDialog;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TUADataDialog
// Help String      : Displays a dialog box from which the user can select an OPC-UA data node (a Data Variable or a Property).
// Default Interface: _UADataDialog
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TUADataDialog = class(TOleServer)
  private
    FIntf: _UADataDialog;
    function GetDefaultInterface: _UADataDialog;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_Tag: OleVariant;
    procedure _Set_Tag(pRetVal: OleVariant);
    function Get_RetainAppearance: WordBool;
    procedure Set_RetainAppearance(pRetVal: WordBool);
    function Get_SizeFactor: SizeF;
    procedure Set_SizeFactor(pRetVal: SizeF);
    function Get_SizeFactorName: WideString;
    procedure Set_SizeFactorName(const pRetVal: WideString);
    function Get_ClientSelector: _EasyUAClientSelector;
    procedure _Set_ClientSelector(const pRetVal: _EasyUAClientSelector);
    function Get_IncludeProperties: WordBool;
    procedure Set_IncludeProperties(pRetVal: WordBool);
    function Get_LooseReferenceTypes: WordBool;
    procedure Set_LooseReferenceTypes(pRetVal: WordBool);
    function Get_ManualNodes: WordBool;
    procedure Set_ManualNodes(pRetVal: WordBool);
    function Get_MultiSelect: WordBool;
    procedure Set_MultiSelect(pRetVal: WordBool);
    function Get_UserPickEndpoint: WordBool;
    procedure Set_UserPickEndpoint(pRetVal: WordBool);
    function Get_EndpointDescriptor: _UAEndpointDescriptor;
    procedure _Set_EndpointDescriptor(const pRetVal: _UAEndpointDescriptor);
    function Get_EndpointDescriptors: PSafeArray;
    procedure Set_EndpointDescriptors(pRetVal: PSafeArray);
    function Get_NodeDescriptor: _UANodeDescriptor;
    procedure _Set_NodeDescriptor(const pRetVal: _UANodeDescriptor);
    function Get_NodeDescriptors: PSafeArray;
    procedure Set_NodeDescriptors(pRetVal: PSafeArray);
    function Get_NodeElement: _UANodeElement;
    function Get_NodeElements: PSafeArray;
    function Get_StartNodeDescriptor: _UANodeDescriptor;
    procedure _Set_StartNodeDescriptor(const pRetVal: _UANodeDescriptor);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _UADataDialog);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    procedure Reset;
    function ShowDialog(const owner: IWin32Window): DialogResult;
    procedure RevertAppearance;
    procedure SetTag(Tag: OleVariant);
    procedure SetEndpointDescriptors(var EndpointDescriptors: PSafeArray);
    procedure SetNodeDescriptors(var NodeDescriptors: PSafeArray);
    property DefaultInterface: _UADataDialog read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property ClientSelector: _EasyUAClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property EndpointDescriptor: _UAEndpointDescriptor read Get_EndpointDescriptor write _Set_EndpointDescriptor;
    property NodeDescriptor: _UANodeDescriptor read Get_NodeDescriptor write _Set_NodeDescriptor;
    property NodeElement: _UANodeElement read Get_NodeElement;
    property NodeElements: PSafeArray read Get_NodeElements;
    property StartNodeDescriptor: _UANodeDescriptor read Get_StartNodeDescriptor write _Set_StartNodeDescriptor;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property IncludeProperties: WordBool read Get_IncludeProperties write Set_IncludeProperties;
    property LooseReferenceTypes: WordBool read Get_LooseReferenceTypes write Set_LooseReferenceTypes;
    property ManualNodes: WordBool read Get_ManualNodes write Set_ManualNodes;
    property MultiSelect: WordBool read Get_MultiSelect write Set_MultiSelect;
    property UserPickEndpoint: WordBool read Get_UserPickEndpoint write Set_UserPickEndpoint;
    property EndpointDescriptors: PSafeArray read Get_EndpointDescriptors write Set_EndpointDescriptors;
    property NodeDescriptors: PSafeArray read Get_NodeDescriptors write Set_NodeDescriptors;
  published
  end;

// *********************************************************************//
// The Class CoUAEndpointDialog provides a Create and CreateRemote method to          
// create instances of the default interface _UAEndpointDialog exposed by              
// the CoClass UAEndpointDialog. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUAEndpointDialog = class
    class function Create: _UAEndpointDialog;
    class function CreateRemote(const MachineName: string): _UAEndpointDialog;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TUAEndpointDialog
// Help String      : Displays a dialog box from which the user can select an OPC-UA server endpoint.
// Default Interface: _UAEndpointDialog
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TUAEndpointDialog = class(TOleServer)
  private
    FIntf: _UAEndpointDialog;
    function GetDefaultInterface: _UAEndpointDialog;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_Tag: OleVariant;
    procedure _Set_Tag(pRetVal: OleVariant);
    function Get_RetainAppearance: WordBool;
    procedure Set_RetainAppearance(pRetVal: WordBool);
    function Get_SizeFactor: SizeF;
    procedure Set_SizeFactor(pRetVal: SizeF);
    function Get_SizeFactorName: WideString;
    procedure Set_SizeFactorName(const pRetVal: WideString);
    function Get_ClientSelector: _EasyUAClientSelector;
    procedure _Set_ClientSelector(const pRetVal: _EasyUAClientSelector);
    function Get_DiscoveryHost: WideString;
    procedure Set_DiscoveryHost(const pRetVal: WideString);
    function Get_EndpointDescriptor: _UAEndpointDescriptor;
    procedure _Set_EndpointDescriptor(const pRetVal: _UAEndpointDescriptor);
    function Get_DiscoveryElement: _UADiscoveryElement;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _UAEndpointDialog);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    procedure Reset;
    function ShowDialog(const owner: IWin32Window): DialogResult;
    procedure RevertAppearance;
    procedure SetTag(Tag: OleVariant);
    property DefaultInterface: _UAEndpointDialog read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property ClientSelector: _EasyUAClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property EndpointDescriptor: _UAEndpointDescriptor read Get_EndpointDescriptor write _Set_EndpointDescriptor;
    property DiscoveryElement: _UADiscoveryElement read Get_DiscoveryElement;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property DiscoveryHost: WideString read Get_DiscoveryHost write Set_DiscoveryHost;
  published
  end;

// *********************************************************************//
// The Class CoUAHostAndEndpointDialog provides a Create and CreateRemote method to          
// create instances of the default interface _UAHostAndEndpointDialog exposed by              
// the CoClass UAHostAndEndpointDialog. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUAHostAndEndpointDialog = class
    class function Create: _UAHostAndEndpointDialog;
    class function CreateRemote(const MachineName: string): _UAHostAndEndpointDialog;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TUAHostAndEndpointDialog
// Help String      : Displays a dialog box from which the user can select a host (computer) and an endpoint of an OPC-UA server residing on it.
// Default Interface: _UAHostAndEndpointDialog
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TUAHostAndEndpointDialog = class(TOleServer)
  private
    FIntf: _UAHostAndEndpointDialog;
    function GetDefaultInterface: _UAHostAndEndpointDialog;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_Tag: OleVariant;
    procedure _Set_Tag(pRetVal: OleVariant);
    function Get_RetainAppearance: WordBool;
    procedure Set_RetainAppearance(pRetVal: WordBool);
    function Get_SizeFactor: SizeF;
    procedure Set_SizeFactor(pRetVal: SizeF);
    function Get_SizeFactorName: WideString;
    procedure Set_SizeFactorName(const pRetVal: WideString);
    function Get_ClientSelector: _EasyUAClientSelector;
    procedure _Set_ClientSelector(const pRetVal: _EasyUAClientSelector);
    function Get_Caption: WideString;
    procedure Set_Caption(const pRetVal: WideString);
    function Get_ManualNodes: WordBool;
    procedure Set_ManualNodes(pRetVal: WordBool);
    function Get_EndpointDescriptor: _UAEndpointDescriptor;
    procedure _Set_EndpointDescriptor(const pRetVal: _UAEndpointDescriptor);
    function Get_HostElement: _HostElement;
    function Get_DiscoveryElement: _UADiscoveryElement;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _UAHostAndEndpointDialog);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    procedure Reset;
    function ShowDialog(const owner: IWin32Window): DialogResult;
    procedure RevertAppearance;
    procedure SetTag(Tag: OleVariant);
    property DefaultInterface: _UAHostAndEndpointDialog read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property ClientSelector: _EasyUAClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property EndpointDescriptor: _UAEndpointDescriptor read Get_EndpointDescriptor write _Set_EndpointDescriptor;
    property HostElement: _HostElement read Get_HostElement;
    property DiscoveryElement: _UADiscoveryElement read Get_DiscoveryElement;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property Caption: WideString read Get_Caption write Set_Caption;
    property ManualNodes: WordBool read Get_ManualNodes write Set_ManualNodes;
  published
  end;

// *********************************************************************//
// The Class CoOpcBrowseDialog provides a Create and CreateRemote method to          
// create instances of the default interface _OpcBrowseDialog exposed by              
// the CoClass OpcBrowseDialog. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOpcBrowseDialog = class
    class function Create: _OpcBrowseDialog;
    class function CreateRemote(const MachineName: string): _OpcBrowseDialog;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TOpcBrowseDialog
// Help String      : Displays a dialog with various OPC nodes from which the user can select.
// Default Interface: _OpcBrowseDialog
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TOpcBrowseDialog = class(TOleServer)
  private
    FIntf: _OpcBrowseDialog;
    function GetDefaultInterface: _OpcBrowseDialog;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_Tag: OleVariant;
    procedure _Set_Tag(pRetVal: OleVariant);
    function Get_AEClientSelector: _EasyAEClientSelector;
    procedure _Set_AEClientSelector(const pRetVal: _EasyAEClientSelector);
    function Get_DAClientSelector: _EasyDAClientSelector;
    procedure _Set_DAClientSelector(const pRetVal: _EasyDAClientSelector);
    function Get_Mode: _OpcBrowseMode;
    function Get_Inputs: _OpcBrowseInputs;
    function Get_InputsOutputs: _OpcBrowseInputsOutputs;
    function Get_Outputs: _OpcBrowseOutputs;
    function Get_Simulated: WordBool;
    procedure Set_Simulated(pRetVal: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _OpcBrowseDialog);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    procedure Reset;
    function ShowDialog(const owner: IWin32Window): DialogResult;
    procedure SetTag(Tag: OleVariant);
    property DefaultInterface: _OpcBrowseDialog read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property AEClientSelector: _EasyAEClientSelector read Get_AEClientSelector write _Set_AEClientSelector;
    property DAClientSelector: _EasyDAClientSelector read Get_DAClientSelector write _Set_DAClientSelector;
    property Mode: _OpcBrowseMode read Get_Mode;
    property Inputs: _OpcBrowseInputs read Get_Inputs;
    property InputsOutputs: _OpcBrowseInputsOutputs read Get_InputsOutputs;
    property Outputs: _OpcBrowseOutputs read Get_Outputs;
    property Simulated: WordBool read Get_Simulated write Set_Simulated;
  published
  end;

// *********************************************************************//
// The Class CoOpcBrowseInputs provides a Create and CreateRemote method to          
// create instances of the default interface _OpcBrowseInputs exposed by              
// the CoClass OpcBrowseInputs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOpcBrowseInputs = class
    class function Create: _OpcBrowseInputs;
    class function CreateRemote(const MachineName: string): _OpcBrowseInputs;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TOpcBrowseInputs
// Help String      : Contains inputs to OPC "Classic" user browsing.
// Default Interface: _OpcBrowseInputs
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TOpcBrowseInputs = class(TOleServer)
  private
    FIntf: _OpcBrowseInputs;
    function GetDefaultInterface: _OpcBrowseInputs;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_EnabledServerFamilies: ServerFamilies;
    procedure Set_EnabledServerFamilies(pRetVal: ServerFamilies);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _OpcBrowseInputs);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    property DefaultInterface: _OpcBrowseInputs read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property EnabledServerFamilies: ServerFamilies read Get_EnabledServerFamilies write Set_EnabledServerFamilies;
  published
  end;

// *********************************************************************//
// The Class CoOpcBrowseInputsOutputs provides a Create and CreateRemote method to          
// create instances of the default interface _OpcBrowseInputsOutputs exposed by              
// the CoClass OpcBrowseInputsOutputs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOpcBrowseInputsOutputs = class
    class function Create: _OpcBrowseInputsOutputs;
    class function CreateRemote(const MachineName: string): _OpcBrowseInputsOutputs;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TOpcBrowseInputsOutputs
// Help String      : Contains inputs/outputs to/from OPC "Classic" user browsing.
// Default Interface: _OpcBrowseInputsOutputs
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TOpcBrowseInputsOutputs = class(TOleServer)
  private
    FIntf: _OpcBrowseInputsOutputs;
    function GetDefaultInterface: _OpcBrowseInputsOutputs;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_CurrentNodeDescriptor: _OpcBrowseNodeDescriptor;
    procedure _Set_CurrentNodeDescriptor(const pRetVal: _OpcBrowseNodeDescriptor);
    function Get_SelectionDescriptors: _OpcBrowseNodeDescriptorCollection;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _OpcBrowseInputsOutputs);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    property DefaultInterface: _OpcBrowseInputsOutputs read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property CurrentNodeDescriptor: _OpcBrowseNodeDescriptor read Get_CurrentNodeDescriptor write _Set_CurrentNodeDescriptor;
    property SelectionDescriptors: _OpcBrowseNodeDescriptorCollection read Get_SelectionDescriptors;
  published
  end;

// *********************************************************************//
// The Class CoOpcBrowseMode provides a Create and CreateRemote method to          
// create instances of the default interface _OpcBrowseMode exposed by              
// the CoClass OpcBrowseMode. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOpcBrowseMode = class
    class function Create: _OpcBrowseMode;
    class function CreateRemote(const MachineName: string): _OpcBrowseMode;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TOpcBrowseMode
// Help String      : Determines the OPC "Classic" user browsing mode.
// Default Interface: _OpcBrowseMode
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TOpcBrowseMode = class(TOleServer)
  private
    FIntf: _OpcBrowseMode;
    function GetDefaultInterface: _OpcBrowseMode;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_ManualNodes: WordBool;
    procedure Set_ManualNodes(pRetVal: WordBool);
    function Get_MultiSelect: WordBool;
    procedure Set_MultiSelect(pRetVal: WordBool);
    function Get_ShowListBranches: WordBool;
    procedure Set_ShowListBranches(pRetVal: WordBool);
    function Get_AnchorElementType: OpcElementType;
    procedure Set_AnchorElementType(pRetVal: OpcElementType);
    function Get_SelectElementType: OpcElementType;
    procedure Set_SelectElementType(pRetVal: OpcElementType);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _OpcBrowseMode);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    function IsSelectable(elementType: OpcElementType): WordBool;
    property DefaultInterface: _OpcBrowseMode read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ManualNodes: WordBool read Get_ManualNodes write Set_ManualNodes;
    property MultiSelect: WordBool read Get_MultiSelect write Set_MultiSelect;
    property ShowListBranches: WordBool read Get_ShowListBranches write Set_ShowListBranches;
    property AnchorElementType: OpcElementType read Get_AnchorElementType write Set_AnchorElementType;
    property SelectElementType: OpcElementType read Get_SelectElementType write Set_SelectElementType;
  published
  end;

// *********************************************************************//
// The Class CoOpcBrowseNodeDescriptor provides a Create and CreateRemote method to          
// create instances of the default interface _OpcBrowseNodeDescriptor exposed by              
// the CoClass OpcBrowseNodeDescriptor. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOpcBrowseNodeDescriptor = class
    class function Create: _OpcBrowseNodeDescriptor;
    class function CreateRemote(const MachineName: string): _OpcBrowseNodeDescriptor;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TOpcBrowseNodeDescriptor
// Help String      : Contains descriptor (an object specifying a node) for OPC "Classic" user browsing.
// Default Interface: _OpcBrowseNodeDescriptor
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TOpcBrowseNodeDescriptor = class(TOleServer)
  private
    FIntf: _OpcBrowseNodeDescriptor;
    function GetDefaultInterface: _OpcBrowseNodeDescriptor;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_DANodeDescriptor: _DANodeDescriptor;
    procedure _Set_DANodeDescriptor(const pRetVal: _DANodeDescriptor);
    function Get_DAPropertyDescriptor: _DAPropertyDescriptor;
    procedure _Set_DAPropertyDescriptor(const pRetVal: _DAPropertyDescriptor);
    function Get_DAAccessPath: WideString;
    procedure Set_DAAccessPath(const pRetVal: WideString);
    function Get_AECategoryId: Integer;
    procedure Set_AECategoryId(pRetVal: Integer);
    function Get_AEAttributeId: Integer;
    procedure Set_AEAttributeId(pRetVal: Integer);
    function Get_AEConditionName: WideString;
    procedure Set_AEConditionName(const pRetVal: WideString);
    function Get_AESubconditionName: WideString;
    procedure Set_AESubconditionName(const pRetVal: WideString);
    function Get_AENodeDescriptor: _AENodeDescriptor;
    procedure _Set_AENodeDescriptor(const pRetVal: _AENodeDescriptor);
    function Get_ServerDescriptor: _ServerDescriptor;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _OpcBrowseNodeDescriptor);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    property DefaultInterface: _OpcBrowseNodeDescriptor read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property DANodeDescriptor: _DANodeDescriptor read Get_DANodeDescriptor write _Set_DANodeDescriptor;
    property DAPropertyDescriptor: _DAPropertyDescriptor read Get_DAPropertyDescriptor write _Set_DAPropertyDescriptor;
    property AENodeDescriptor: _AENodeDescriptor read Get_AENodeDescriptor write _Set_AENodeDescriptor;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property DAAccessPath: WideString read Get_DAAccessPath write Set_DAAccessPath;
    property AECategoryId: Integer read Get_AECategoryId write Set_AECategoryId;
    property AEAttributeId: Integer read Get_AEAttributeId write Set_AEAttributeId;
    property AEConditionName: WideString read Get_AEConditionName write Set_AEConditionName;
    property AESubconditionName: WideString read Get_AESubconditionName write Set_AESubconditionName;
  published
  end;

// *********************************************************************//
// The Class CoOpcBrowseNodeDescriptorCollection provides a Create and CreateRemote method to          
// create instances of the default interface _OpcBrowseNodeDescriptorCollection exposed by              
// the CoClass OpcBrowseNodeDescriptorCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOpcBrowseNodeDescriptorCollection = class
    class function Create: _OpcBrowseNodeDescriptorCollection;
    class function CreateRemote(const MachineName: string): _OpcBrowseNodeDescriptorCollection;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TOpcBrowseNodeDescriptorCollection
// Help String      : A collection of OpcBrowseNodeDescriptors.
// Default Interface: _OpcBrowseNodeDescriptorCollection
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TOpcBrowseNodeDescriptorCollection = class(TOleServer)
  private
    FIntf: _OpcBrowseNodeDescriptorCollection;
    function GetDefaultInterface: _OpcBrowseNodeDescriptorCollection;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_Item(index: Integer): _OpcBrowseNodeDescriptor;
    procedure _Set_Item(index: Integer; const pRetVal: _OpcBrowseNodeDescriptor);
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _OpcBrowseNodeDescriptorCollection);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function GetEnumerator: IEnumVARIANT;
    procedure Add(Item: OleVariant);
    procedure Clear;
    function Contains(Item: OleVariant): WordBool;
    function IndexOf(Item: OleVariant): Integer;
    procedure Insert(index: Integer; Item: OleVariant);
    function Remove(Item: OleVariant): WordBool;
    procedure RemoveAt(index: Integer);
    property DefaultInterface: _OpcBrowseNodeDescriptorCollection read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property Item[index: Integer]: _OpcBrowseNodeDescriptor read Get_Item write _Set_Item; default;
    property Count: Integer read Get_Count;
  published
  end;

// *********************************************************************//
// The Class CoOpcBrowseNodeElement provides a Create and CreateRemote method to          
// create instances of the default interface _OpcBrowseNodeElement exposed by              
// the CoClass OpcBrowseNodeElement. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOpcBrowseNodeElement = class
    class function Create: _OpcBrowseNodeElement;
    class function CreateRemote(const MachineName: string): _OpcBrowseNodeElement;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TOpcBrowseNodeElement
// Help String      : Contains an OPC "Classic" user browse element, i.a. all available information obtained about a node.
// Default Interface: _OpcBrowseNodeElement
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TOpcBrowseNodeElement = class(TOleServer)
  private
    FIntf: _OpcBrowseNodeElement;
    function GetDefaultInterface: _OpcBrowseNodeElement;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_ComputerElement: _ComputerElement;
    procedure _Set_ComputerElement(const pRetVal: _ComputerElement);
    function Get_ServerElement: _ServerElement;
    procedure _Set_ServerElement(const pRetVal: _ServerElement);
    function Get_DANodeElement: _DANodeElement;
    procedure _Set_DANodeElement(const pRetVal: _DANodeElement);
    function Get_DAPropertyElement: _DAPropertyElement;
    procedure _Set_DAPropertyElement(const pRetVal: _DAPropertyElement);
    function Get_AECategoryElement: _AECategoryElement;
    procedure _Set_AECategoryElement(const pRetVal: _AECategoryElement);
    function Get_AEAttributeElement: _AEAttributeElement;
    procedure _Set_AEAttributeElement(const pRetVal: _AEAttributeElement);
    function Get_AEConditionElement: _AEConditionElement;
    procedure _Set_AEConditionElement(const pRetVal: _AEConditionElement);
    function Get_AESubconditionElement: _AESubconditionElement;
    procedure _Set_AESubconditionElement(const pRetVal: _AESubconditionElement);
    function Get_AENodeElement: _AENodeElement;
    procedure _Set_AENodeElement(const pRetVal: _AENodeElement);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _OpcBrowseNodeElement);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    property DefaultInterface: _OpcBrowseNodeElement read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ComputerElement: _ComputerElement read Get_ComputerElement write _Set_ComputerElement;
    property ServerElement: _ServerElement read Get_ServerElement write _Set_ServerElement;
    property DANodeElement: _DANodeElement read Get_DANodeElement write _Set_DANodeElement;
    property DAPropertyElement: _DAPropertyElement read Get_DAPropertyElement write _Set_DAPropertyElement;
    property AECategoryElement: _AECategoryElement read Get_AECategoryElement write _Set_AECategoryElement;
    property AEAttributeElement: _AEAttributeElement read Get_AEAttributeElement write _Set_AEAttributeElement;
    property AEConditionElement: _AEConditionElement read Get_AEConditionElement write _Set_AEConditionElement;
    property AESubconditionElement: _AESubconditionElement read Get_AESubconditionElement write _Set_AESubconditionElement;
    property AENodeElement: _AENodeElement read Get_AENodeElement write _Set_AENodeElement;
  published
  end;

// *********************************************************************//
// The Class CoOpcBrowseNodeElementCollection provides a Create and CreateRemote method to          
// create instances of the default interface _OpcBrowseNodeElementCollection exposed by              
// the CoClass OpcBrowseNodeElementCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOpcBrowseNodeElementCollection = class
    class function Create: _OpcBrowseNodeElementCollection;
    class function CreateRemote(const MachineName: string): _OpcBrowseNodeElementCollection;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TOpcBrowseNodeElementCollection
// Help String      : A collection of OpcBrowseNodeElements.
// Default Interface: _OpcBrowseNodeElementCollection
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TOpcBrowseNodeElementCollection = class(TOleServer)
  private
    FIntf: _OpcBrowseNodeElementCollection;
    function GetDefaultInterface: _OpcBrowseNodeElementCollection;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_Item(index: Integer): _OpcBrowseNodeElement;
    procedure _Set_Item(index: Integer; const pRetVal: _OpcBrowseNodeElement);
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _OpcBrowseNodeElementCollection);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function GetEnumerator: IEnumVARIANT;
    procedure Add(Item: OleVariant);
    procedure Clear;
    function Contains(Item: OleVariant): WordBool;
    function IndexOf(Item: OleVariant): Integer;
    procedure Insert(index: Integer; Item: OleVariant);
    function Remove(Item: OleVariant): WordBool;
    procedure RemoveAt(index: Integer);
    property DefaultInterface: _OpcBrowseNodeElementCollection read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property Item[index: Integer]: _OpcBrowseNodeElement read Get_Item write _Set_Item; default;
    property Count: Integer read Get_Count;
  published
  end;

// *********************************************************************//
// The Class CoOpcBrowseOutputs provides a Create and CreateRemote method to          
// create instances of the default interface _OpcBrowseOutputs exposed by              
// the CoClass OpcBrowseOutputs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOpcBrowseOutputs = class
    class function Create: _OpcBrowseOutputs;
    class function CreateRemote(const MachineName: string): _OpcBrowseOutputs;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TOpcBrowseOutputs
// Help String      : Contains outputs from OPC "Classic" user browsing.
// Default Interface: _OpcBrowseOutputs
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TOpcBrowseOutputs = class(TOleServer)
  private
    FIntf: _OpcBrowseOutputs;
    function GetDefaultInterface: _OpcBrowseOutputs;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_CurrentNodeElement: _OpcBrowseNodeElement;
    procedure _Set_CurrentNodeElement(const pRetVal: _OpcBrowseNodeElement);
    function Get_SelectionElements: _OpcBrowseNodeElementCollection;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _OpcBrowseOutputs);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    function Clone: OleVariant;
    property DefaultInterface: _OpcBrowseOutputs read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property CurrentNodeElement: _OpcBrowseNodeElement read Get_CurrentNodeElement write _Set_CurrentNodeElement;
    property SelectionElements: _OpcBrowseNodeElementCollection read Get_SelectionElements;
  published
  end;

// *********************************************************************//
// The Class CoOpcComputerAndServerDialog provides a Create and CreateRemote method to          
// create instances of the default interface _OpcComputerAndServerDialog exposed by              
// the CoClass OpcComputerAndServerDialog. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOpcComputerAndServerDialog = class
    class function Create: _OpcComputerAndServerDialog;
    class function CreateRemote(const MachineName: string): _OpcComputerAndServerDialog;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TOpcComputerAndServerDialog
// Help String      : Displays a dialog box from which the user can select a computer and an OPC server residing on it.
// Default Interface: _OpcComputerAndServerDialog
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TOpcComputerAndServerDialog = class(TOleServer)
  private
    FIntf: _OpcComputerAndServerDialog;
    function GetDefaultInterface: _OpcComputerAndServerDialog;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_Tag: OleVariant;
    procedure _Set_Tag(pRetVal: OleVariant);
    function Get_RetainAppearance: WordBool;
    procedure Set_RetainAppearance(pRetVal: WordBool);
    function Get_SizeFactor: SizeF;
    procedure Set_SizeFactor(pRetVal: SizeF);
    function Get_SizeFactorName: WideString;
    procedure Set_SizeFactorName(const pRetVal: WideString);
    function Get_AEClientSelector: _EasyAEClientSelector;
    procedure _Set_AEClientSelector(const pRetVal: _EasyAEClientSelector);
    function Get_DAClientSelector: _EasyDAClientSelector;
    procedure _Set_DAClientSelector(const pRetVal: _EasyDAClientSelector);
    function Get_ManualNodes: WordBool;
    procedure Set_ManualNodes(pRetVal: WordBool);
    function Get_ServerFamilies: ServerFamilies;
    procedure Set_ServerFamilies(pRetVal: ServerFamilies);
    function Get_ServerDescriptor: _ServerDescriptor;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor);
    function Get_ComputerElement: _ComputerElement;
    function Get_ServerElement: _ServerElement;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _OpcComputerAndServerDialog);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    procedure Reset;
    function ShowDialog(const owner: IWin32Window): DialogResult;
    procedure RevertAppearance;
    procedure SetTag(Tag: OleVariant);
    property DefaultInterface: _OpcComputerAndServerDialog read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property AEClientSelector: _EasyAEClientSelector read Get_AEClientSelector write _Set_AEClientSelector;
    property DAClientSelector: _EasyDAClientSelector read Get_DAClientSelector write _Set_DAClientSelector;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property ComputerElement: _ComputerElement read Get_ComputerElement;
    property ServerElement: _ServerElement read Get_ServerElement;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property ManualNodes: WordBool read Get_ManualNodes write Set_ManualNodes;
    property ServerFamilies: ServerFamilies read Get_ServerFamilies write Set_ServerFamilies;
  published
  end;

// *********************************************************************//
// The Class CoOpcServerDialog provides a Create and CreateRemote method to          
// create instances of the default interface _OpcServerDialog exposed by              
// the CoClass OpcServerDialog. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOpcServerDialog = class
    class function Create: _OpcServerDialog;
    class function CreateRemote(const MachineName: string): _OpcServerDialog;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TOpcServerDialog
// Help String      : Displays a dialog box from which the user can select an OPC "Classic" server.
// Default Interface: _OpcServerDialog
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TOpcServerDialog = class(TOleServer)
  private
    FIntf: _OpcServerDialog;
    function GetDefaultInterface: _OpcServerDialog;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_Tag: OleVariant;
    procedure _Set_Tag(pRetVal: OleVariant);
    function Get_RetainAppearance: WordBool;
    procedure Set_RetainAppearance(pRetVal: WordBool);
    function Get_SizeFactor: SizeF;
    procedure Set_SizeFactor(pRetVal: SizeF);
    function Get_SizeFactorName: WideString;
    procedure Set_SizeFactorName(const pRetVal: WideString);
    function Get_AEClientSelector: _EasyAEClientSelector;
    procedure _Set_AEClientSelector(const pRetVal: _EasyAEClientSelector);
    function Get_DAClientSelector: _EasyDAClientSelector;
    procedure _Set_DAClientSelector(const pRetVal: _EasyDAClientSelector);
    function Get_ServerFamilies: ServerFamilies;
    procedure Set_ServerFamilies(pRetVal: ServerFamilies);
    function Get_Location: WideString;
    procedure Set_Location(const pRetVal: WideString);
    function Get_ServerClass: WideString;
    procedure Set_ServerClass(const pRetVal: WideString);
    function Get_ServerProgram: WideString;
    procedure Set_ServerProgram(const pRetVal: WideString);
    function Get_UrlString: WideString;
    procedure Set_UrlString(const pRetVal: WideString);
    function Get_ServerElement: _ServerElement;
    function Get_Technologies: OpcTechnologies;
    procedure Set_Technologies(pRetVal: OpcTechnologies);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _OpcServerDialog);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    procedure Reset;
    function ShowDialog(const owner: IWin32Window): DialogResult;
    procedure RevertAppearance;
    procedure SetTag(Tag: OleVariant);
    property DefaultInterface: _OpcServerDialog read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property AEClientSelector: _EasyAEClientSelector read Get_AEClientSelector write _Set_AEClientSelector;
    property DAClientSelector: _EasyDAClientSelector read Get_DAClientSelector write _Set_DAClientSelector;
    property ServerElement: _ServerElement read Get_ServerElement;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property ServerFamilies: ServerFamilies read Get_ServerFamilies write Set_ServerFamilies;
    property Location: WideString read Get_Location write Set_Location;
    property ServerClass: WideString read Get_ServerClass write Set_ServerClass;
    property ServerProgram: WideString read Get_ServerProgram write Set_ServerProgram;
    property UrlString: WideString read Get_UrlString write Set_UrlString;
    property Technologies: OpcTechnologies read Get_Technologies write Set_Technologies;
  published
  end;

// *********************************************************************//
// The Class CoDAItemDialog provides a Create and CreateRemote method to          
// create instances of the default interface _DAItemDialog exposed by              
// the CoClass DAItemDialog. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAItemDialog = class
    class function Create: _DAItemDialog;
    class function CreateRemote(const MachineName: string): _DAItemDialog;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDAItemDialog
// Help String      : Displays a dialog box from which the user can select an OPC Data Access item.
// Default Interface: _DAItemDialog
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TDAItemDialog = class(TOleServer)
  private
    FIntf: _DAItemDialog;
    function GetDefaultInterface: _DAItemDialog;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_Tag: OleVariant;
    procedure _Set_Tag(pRetVal: OleVariant);
    function Get_RetainAppearance: WordBool;
    procedure Set_RetainAppearance(pRetVal: WordBool);
    function Get_SizeFactor: SizeF;
    procedure Set_SizeFactor(pRetVal: SizeF);
    function Get_SizeFactorName: WideString;
    procedure Set_SizeFactorName(const pRetVal: WideString);
    function Get_ClientSelector: _EasyDAClientSelector;
    procedure _Set_ClientSelector(const pRetVal: _EasyDAClientSelector);
    function Get_MultiSelect: WordBool;
    procedure Set_MultiSelect(pRetVal: WordBool);
    function Get_ServerDescriptor: _ServerDescriptor;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor);
    function Get_NodeDescriptor: _DANodeDescriptor;
    procedure _Set_NodeDescriptor(const pRetVal: _DANodeDescriptor);
    function Get_NodeDescriptors: PSafeArray;
    procedure Set_NodeDescriptors(pRetVal: PSafeArray);
    function Get_NodeElement: _DANodeElement;
    function Get_NodeElements: PSafeArray;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _DAItemDialog);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    procedure Reset;
    function ShowDialog(const owner: IWin32Window): DialogResult;
    procedure RevertAppearance;
    procedure SetTag(Tag: OleVariant);
    procedure SetNodeDescriptors(var NodeDescriptors: PSafeArray);
    property DefaultInterface: _DAItemDialog read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property ClientSelector: _EasyDAClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property NodeDescriptor: _DANodeDescriptor read Get_NodeDescriptor write _Set_NodeDescriptor;
    property NodeElement: _DANodeElement read Get_NodeElement;
    property NodeElements: PSafeArray read Get_NodeElements;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property MultiSelect: WordBool read Get_MultiSelect write Set_MultiSelect;
    property NodeDescriptors: PSafeArray read Get_NodeDescriptors write Set_NodeDescriptors;
  published
  end;

// *********************************************************************//
// The Class CoDAPropertyDialog provides a Create and CreateRemote method to          
// create instances of the default interface _DAPropertyDialog exposed by              
// the CoClass DAPropertyDialog. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAPropertyDialog = class
    class function Create: _DAPropertyDialog;
    class function CreateRemote(const MachineName: string): _DAPropertyDialog;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDAPropertyDialog
// Help String      : Displays a dialog box from which the user can select an OPC Data Access property.
// Default Interface: _DAPropertyDialog
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TDAPropertyDialog = class(TOleServer)
  private
    FIntf: _DAPropertyDialog;
    function GetDefaultInterface: _DAPropertyDialog;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_Tag: OleVariant;
    procedure _Set_Tag(pRetVal: OleVariant);
    function Get_RetainAppearance: WordBool;
    procedure Set_RetainAppearance(pRetVal: WordBool);
    function Get_SizeFactor: SizeF;
    procedure Set_SizeFactor(pRetVal: SizeF);
    function Get_SizeFactorName: WideString;
    procedure Set_SizeFactorName(const pRetVal: WideString);
    function Get_ClientSelector: _EasyDAClientSelector;
    procedure _Set_ClientSelector(const pRetVal: _EasyDAClientSelector);
    function Get_ServerDescriptor: _ServerDescriptor;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor);
    function Get_NodeDescriptor: _DANodeDescriptor;
    procedure _Set_NodeDescriptor(const pRetVal: _DANodeDescriptor);
    function Get_PropertyDescriptor: _DAPropertyDescriptor;
    procedure _Set_PropertyDescriptor(const pRetVal: _DAPropertyDescriptor);
    function Get_PropertyElement: _DAPropertyElement;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _DAPropertyDialog);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    procedure Reset;
    function ShowDialog(const owner: IWin32Window): DialogResult;
    procedure RevertAppearance;
    procedure SetTag(Tag: OleVariant);
    property DefaultInterface: _DAPropertyDialog read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property ClientSelector: _EasyDAClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property NodeDescriptor: _DANodeDescriptor read Get_NodeDescriptor write _Set_NodeDescriptor;
    property PropertyDescriptor: _DAPropertyDescriptor read Get_PropertyDescriptor write _Set_PropertyDescriptor;
    property PropertyElement: _DAPropertyElement read Get_PropertyElement;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
  published
  end;

// *********************************************************************//
// The Class CoAEAttributeDialog provides a Create and CreateRemote method to          
// create instances of the default interface _AEAttributeDialog exposed by              
// the CoClass AEAttributeDialog. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAEAttributeDialog = class
    class function Create: _AEAttributeDialog;
    class function CreateRemote(const MachineName: string): _AEAttributeDialog;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TAEAttributeDialog
// Help String      : Displays a dialog box from which the user can select OPC-A&E event attributes.
// Default Interface: _AEAttributeDialog
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TAEAttributeDialog = class(TOleServer)
  private
    FIntf: _AEAttributeDialog;
    function GetDefaultInterface: _AEAttributeDialog;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_Tag: OleVariant;
    procedure _Set_Tag(pRetVal: OleVariant);
    function Get_RetainAppearance: WordBool;
    procedure Set_RetainAppearance(pRetVal: WordBool);
    function Get_SizeFactor: SizeF;
    procedure Set_SizeFactor(pRetVal: SizeF);
    function Get_SizeFactorName: WideString;
    procedure Set_SizeFactorName(const pRetVal: WideString);
    function Get_ClientSelector: _EasyAEClientSelector;
    procedure _Set_ClientSelector(const pRetVal: _EasyAEClientSelector);
    function Get_MultiSelect: WordBool;
    procedure Set_MultiSelect(pRetVal: WordBool);
    function Get_ServerDescriptor: _ServerDescriptor;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor);
    function Get_CategoryId: Integer;
    procedure Set_CategoryId(pRetVal: Integer);
    function Get_AttributeId: Integer;
    procedure Set_AttributeId(pRetVal: Integer);
    function Get_AttributeIds: _Int32Collection;
    procedure _Set_AttributeIds(const pRetVal: _Int32Collection);
    function Get_AttributeElement: _AEAttributeElement;
    function Get_AttributeElements: _AEAttributeElementCollection;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _AEAttributeDialog);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    procedure Reset;
    function ShowDialog(const owner: IWin32Window): DialogResult;
    procedure RevertAppearance;
    procedure SetTag(Tag: OleVariant);
    property DefaultInterface: _AEAttributeDialog read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property ClientSelector: _EasyAEClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property AttributeIds: _Int32Collection read Get_AttributeIds write _Set_AttributeIds;
    property AttributeElement: _AEAttributeElement read Get_AttributeElement;
    property AttributeElements: _AEAttributeElementCollection read Get_AttributeElements;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property MultiSelect: WordBool read Get_MultiSelect write Set_MultiSelect;
    property CategoryId: Integer read Get_CategoryId write Set_CategoryId;
    property AttributeId: Integer read Get_AttributeId write Set_AttributeId;
  published
  end;

// *********************************************************************//
// The Class CoAECategoryConditionDialog provides a Create and CreateRemote method to          
// create instances of the default interface _AECategoryConditionDialog exposed by              
// the CoClass AECategoryConditionDialog. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAECategoryConditionDialog = class
    class function Create: _AECategoryConditionDialog;
    class function CreateRemote(const MachineName: string): _AECategoryConditionDialog;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TAECategoryConditionDialog
// Help String      : Displays a dialog box from which the user can select OPC-A&E category available on a specified event condition.
// Default Interface: _AECategoryConditionDialog
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TAECategoryConditionDialog = class(TOleServer)
  private
    FIntf: _AECategoryConditionDialog;
    function GetDefaultInterface: _AECategoryConditionDialog;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_Tag: OleVariant;
    procedure _Set_Tag(pRetVal: OleVariant);
    function Get_RetainAppearance: WordBool;
    procedure Set_RetainAppearance(pRetVal: WordBool);
    function Get_SizeFactor: SizeF;
    procedure Set_SizeFactor(pRetVal: SizeF);
    function Get_SizeFactorName: WideString;
    procedure Set_SizeFactorName(const pRetVal: WideString);
    function Get_ClientSelector: _EasyAEClientSelector;
    procedure _Set_ClientSelector(const pRetVal: _EasyAEClientSelector);
    function Get_ServerDescriptor: _ServerDescriptor;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor);
    function Get_CategoryId: Integer;
    procedure Set_CategoryId(pRetVal: Integer);
    function Get_ConditionName: WideString;
    procedure Set_ConditionName(const pRetVal: WideString);
    function Get_ConditionElement: _AEConditionElement;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _AECategoryConditionDialog);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    procedure Reset;
    function ShowDialog(const owner: IWin32Window): DialogResult;
    procedure RevertAppearance;
    procedure SetTag(Tag: OleVariant);
    property DefaultInterface: _AECategoryConditionDialog read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property ClientSelector: _EasyAEClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property ConditionElement: _AEConditionElement read Get_ConditionElement;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property CategoryId: Integer read Get_CategoryId write Set_CategoryId;
    property ConditionName: WideString read Get_ConditionName write Set_ConditionName;
  published
  end;

// *********************************************************************//
// The Class CoAECategoryDialog provides a Create and CreateRemote method to          
// create instances of the default interface _AECategoryDialog exposed by              
// the CoClass AECategoryDialog. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAECategoryDialog = class
    class function Create: _AECategoryDialog;
    class function CreateRemote(const MachineName: string): _AECategoryDialog;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TAECategoryDialog
// Help String      : Displays a dialog box from which the user can select OPC-A&E event categories.
// Default Interface: _AECategoryDialog
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TAECategoryDialog = class(TOleServer)
  private
    FIntf: _AECategoryDialog;
    function GetDefaultInterface: _AECategoryDialog;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_Tag: OleVariant;
    procedure _Set_Tag(pRetVal: OleVariant);
    function Get_RetainAppearance: WordBool;
    procedure Set_RetainAppearance(pRetVal: WordBool);
    function Get_SizeFactor: SizeF;
    procedure Set_SizeFactor(pRetVal: SizeF);
    function Get_SizeFactorName: WideString;
    procedure Set_SizeFactorName(const pRetVal: WideString);
    function Get_ClientSelector: _EasyAEClientSelector;
    procedure _Set_ClientSelector(const pRetVal: _EasyAEClientSelector);
    function Get_MultiSelect: WordBool;
    procedure Set_MultiSelect(pRetVal: WordBool);
    function Get_ServerDescriptor: _ServerDescriptor;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor);
    function Get_EventTypes: _AEEventType;
    procedure _Set_EventTypes(const pRetVal: _AEEventType);
    function Get_CategoryId: Integer;
    procedure Set_CategoryId(pRetVal: Integer);
    function Get_CategoryIds: _Int32Collection;
    procedure _Set_CategoryIds(const pRetVal: _Int32Collection);
    function Get_CategoryElements: _AECategoryElementCollection;
    function Get_CategoryElement: _AECategoryElement;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _AECategoryDialog);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    procedure Reset;
    function ShowDialog(const owner: IWin32Window): DialogResult;
    procedure RevertAppearance;
    procedure SetTag(Tag: OleVariant);
    property DefaultInterface: _AECategoryDialog read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property ClientSelector: _EasyAEClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property EventTypes: _AEEventType read Get_EventTypes write _Set_EventTypes;
    property CategoryIds: _Int32Collection read Get_CategoryIds write _Set_CategoryIds;
    property CategoryElements: _AECategoryElementCollection read Get_CategoryElements;
    property CategoryElement: _AECategoryElement read Get_CategoryElement;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property MultiSelect: WordBool read Get_MultiSelect write Set_MultiSelect;
    property CategoryId: Integer read Get_CategoryId write Set_CategoryId;
  published
  end;

// *********************************************************************//
// The Class CoAEAreaOrSourceDialog provides a Create and CreateRemote method to          
// create instances of the default interface _AEAreaOrSourceDialog exposed by              
// the CoClass AEAreaOrSourceDialog. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAEAreaOrSourceDialog = class
    class function Create: _AEAreaOrSourceDialog;
    class function CreateRemote(const MachineName: string): _AEAreaOrSourceDialog;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TAEAreaOrSourceDialog
// Help String      : Displays a dialog box from which the user can select OPC-A&E event areas or sources.
// Default Interface: _AEAreaOrSourceDialog
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TAEAreaOrSourceDialog = class(TOleServer)
  private
    FIntf: _AEAreaOrSourceDialog;
    function GetDefaultInterface: _AEAreaOrSourceDialog;
  protected
    procedure InitServerData; override;
    function Get_ToString: WideString;
    function Get_DisplayString: WideString;
    function Get_Tag: OleVariant;
    procedure _Set_Tag(pRetVal: OleVariant);
    function Get_RetainAppearance: WordBool;
    procedure Set_RetainAppearance(pRetVal: WordBool);
    function Get_SizeFactor: SizeF;
    procedure Set_SizeFactor(pRetVal: SizeF);
    function Get_SizeFactorName: WideString;
    procedure Set_SizeFactorName(const pRetVal: WideString);
    function Get_ClientSelector: _EasyAEClientSelector;
    procedure _Set_ClientSelector(const pRetVal: _EasyAEClientSelector);
    function Get_MultiSelect: WordBool;
    procedure Set_MultiSelect(pRetVal: WordBool);
    function Get_ServerDescriptor: _ServerDescriptor;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor);
    function Get_NodeDescriptor: _AENodeDescriptor;
    procedure _Set_NodeDescriptor(const pRetVal: _AENodeDescriptor);
    function Get_AreaElements: PSafeArray;
    function Get_NodeElements: PSafeArray;
    function Get_SourceElements: PSafeArray;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _AEAreaOrSourceDialog);
    procedure Disconnect; override;
    function Equals(obj: OleVariant): WordBool;
    function GetHashCode: Integer;
    function GetType: _Type;
    procedure Reset;
    function ShowDialog(const owner: IWin32Window): DialogResult;
    procedure RevertAppearance;
    procedure SetTag(Tag: OleVariant);
    property DefaultInterface: _AEAreaOrSourceDialog read GetDefaultInterface;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property ClientSelector: _EasyAEClientSelector read Get_ClientSelector write _Set_ClientSelector;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property NodeDescriptor: _AENodeDescriptor read Get_NodeDescriptor write _Set_NodeDescriptor;
    property AreaElements: PSafeArray read Get_AreaElements;
    property NodeElements: PSafeArray read Get_NodeElements;
    property SourceElements: PSafeArray read Get_SourceElements;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
    property MultiSelect: WordBool read Get_MultiSelect write Set_MultiSelect;
  published
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses System.Win.ComObj;

class function CoUABrowseDialog.Create: _UABrowseDialog;
begin
  Result := CreateComObject(CLASS_UABrowseDialog) as _UABrowseDialog;
end;

class function CoUABrowseDialog.CreateRemote(const MachineName: string): _UABrowseDialog;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UABrowseDialog) as _UABrowseDialog;
end;

procedure TUABrowseDialog.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D5E91058-41DF-40D9-8DCC-795F166D0311}';
    IntfIID:   '{7A206458-84DE-4066-ABD3-41016B63C32A}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TUABrowseDialog.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _UABrowseDialog;
  end;
end;

procedure TUABrowseDialog.ConnectTo(svrIntf: _UABrowseDialog);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TUABrowseDialog.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TUABrowseDialog.GetDefaultInterface: _UABrowseDialog;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TUABrowseDialog.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TUABrowseDialog.Destroy;
begin
  inherited Destroy;
end;

function TUABrowseDialog.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TUABrowseDialog.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TUABrowseDialog.Get_Tag: OleVariant;
begin
  Result := DefaultInterface.Tag;
end;

procedure TUABrowseDialog._Set_Tag(pRetVal: OleVariant);
begin
  DefaultInterface.Tag := pRetVal;
end;

function TUABrowseDialog.Get_ClientSelector: _EasyUAClientSelector;
begin
  Result := DefaultInterface.ClientSelector;
end;

procedure TUABrowseDialog._Set_ClientSelector(const pRetVal: _EasyUAClientSelector);
begin
  DefaultInterface.ClientSelector := pRetVal;
end;

function TUABrowseDialog.Get_Mode: _UABrowseMode;
begin
  Result := DefaultInterface.Mode;
end;

function TUABrowseDialog.Get_Inputs: _UABrowseInputs;
begin
  Result := DefaultInterface.Inputs;
end;

function TUABrowseDialog.Get_InputsOutputs: _UABrowseInputsOutputs;
begin
  Result := DefaultInterface.InputsOutputs;
end;

function TUABrowseDialog.Get_Outputs: _UABrowseOutputs;
begin
  Result := DefaultInterface.Outputs;
end;

function TUABrowseDialog.Get_Simulated: WordBool;
begin
  Result := DefaultInterface.Simulated;
end;

procedure TUABrowseDialog.Set_Simulated(pRetVal: WordBool);
begin
  DefaultInterface.Simulated := pRetVal;
end;

function TUABrowseDialog.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TUABrowseDialog.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TUABrowseDialog.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

procedure TUABrowseDialog.Reset;
begin
  DefaultInterface.Reset;
end;

function TUABrowseDialog.ShowDialog(const owner: IWin32Window): DialogResult;
begin
  Result := DefaultInterface.ShowDialog(owner);
end;

procedure TUABrowseDialog.SetTag(Tag: OleVariant);
begin
  DefaultInterface.SetTag(Tag);
end;

class function CoUABrowseInputs.Create: _UABrowseInputs;
begin
  Result := CreateComObject(CLASS_UABrowseInputs) as _UABrowseInputs;
end;

class function CoUABrowseInputs.CreateRemote(const MachineName: string): _UABrowseInputs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UABrowseInputs) as _UABrowseInputs;
end;

procedure TUABrowseInputs.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{1F58092E-A5D1-410E-9CD8-3071934FE9C4}';
    IntfIID:   '{8DEC0ADC-E183-47BD-BB3D-EA22ADA30341}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TUABrowseInputs.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _UABrowseInputs;
  end;
end;

procedure TUABrowseInputs.ConnectTo(svrIntf: _UABrowseInputs);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TUABrowseInputs.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TUABrowseInputs.GetDefaultInterface: _UABrowseInputs;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TUABrowseInputs.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TUABrowseInputs.Destroy;
begin
  inherited Destroy;
end;

function TUABrowseInputs.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TUABrowseInputs.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TUABrowseInputs.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TUABrowseInputs.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TUABrowseInputs.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TUABrowseInputs.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

class function CoUABrowseInputsOutputs.Create: _UABrowseInputsOutputs;
begin
  Result := CreateComObject(CLASS_UABrowseInputsOutputs) as _UABrowseInputsOutputs;
end;

class function CoUABrowseInputsOutputs.CreateRemote(const MachineName: string): _UABrowseInputsOutputs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UABrowseInputsOutputs) as _UABrowseInputsOutputs;
end;

procedure TUABrowseInputsOutputs.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{47D08B9F-F958-4DBA-B70F-F7BCCAF0EA7A}';
    IntfIID:   '{C6A5FE28-30F0-40B2-8292-C7D1455150CF}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TUABrowseInputsOutputs.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _UABrowseInputsOutputs;
  end;
end;

procedure TUABrowseInputsOutputs.ConnectTo(svrIntf: _UABrowseInputsOutputs);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TUABrowseInputsOutputs.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TUABrowseInputsOutputs.GetDefaultInterface: _UABrowseInputsOutputs;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TUABrowseInputsOutputs.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TUABrowseInputsOutputs.Destroy;
begin
  inherited Destroy;
end;

function TUABrowseInputsOutputs.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TUABrowseInputsOutputs.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TUABrowseInputsOutputs.Get_CurrentNodeDescriptor: _UABrowseNodeDescriptor;
begin
  Result := DefaultInterface.CurrentNodeDescriptor;
end;

procedure TUABrowseInputsOutputs._Set_CurrentNodeDescriptor(const pRetVal: _UABrowseNodeDescriptor);
begin
  DefaultInterface.CurrentNodeDescriptor := pRetVal;
end;

function TUABrowseInputsOutputs.Get_SelectionDescriptors: _UABrowseNodeDescriptorCollection;
begin
  Result := DefaultInterface.SelectionDescriptors;
end;

function TUABrowseInputsOutputs.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TUABrowseInputsOutputs.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TUABrowseInputsOutputs.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TUABrowseInputsOutputs.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

class function CoUABrowseMode.Create: _UABrowseMode;
begin
  Result := CreateComObject(CLASS_UABrowseMode) as _UABrowseMode;
end;

class function CoUABrowseMode.CreateRemote(const MachineName: string): _UABrowseMode;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UABrowseMode) as _UABrowseMode;
end;

procedure TUABrowseMode.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{25209B73-641B-4045-B486-E6E72C7DBE8B}';
    IntfIID:   '{87F93898-E860-4E9B-993B-2CACD0E02502}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TUABrowseMode.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _UABrowseMode;
  end;
end;

procedure TUABrowseMode.ConnectTo(svrIntf: _UABrowseMode);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TUABrowseMode.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TUABrowseMode.GetDefaultInterface: _UABrowseMode;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TUABrowseMode.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TUABrowseMode.Destroy;
begin
  inherited Destroy;
end;

function TUABrowseMode.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TUABrowseMode.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TUABrowseMode.Get_ManualNodes: WordBool;
begin
  Result := DefaultInterface.ManualNodes;
end;

procedure TUABrowseMode.Set_ManualNodes(pRetVal: WordBool);
begin
  DefaultInterface.ManualNodes := pRetVal;
end;

function TUABrowseMode.Get_MultiSelect: WordBool;
begin
  Result := DefaultInterface.MultiSelect;
end;

procedure TUABrowseMode.Set_MultiSelect(pRetVal: WordBool);
begin
  DefaultInterface.MultiSelect := pRetVal;
end;

function TUABrowseMode.Get_ShowListBranches: WordBool;
begin
  Result := DefaultInterface.ShowListBranches;
end;

procedure TUABrowseMode.Set_ShowListBranches(pRetVal: WordBool);
begin
  DefaultInterface.ShowListBranches := pRetVal;
end;

function TUABrowseMode.Get_AnchorElementType: UAElementType;
begin
  Result := DefaultInterface.AnchorElementType;
end;

procedure TUABrowseMode.Set_AnchorElementType(pRetVal: UAElementType);
begin
  DefaultInterface.AnchorElementType := pRetVal;
end;

function TUABrowseMode.Get_NodeBrowseFilter: _UANodeBrowseFilter;
begin
  Result := DefaultInterface.NodeBrowseFilter;
end;

procedure TUABrowseMode._Set_NodeBrowseFilter(const pRetVal: _UANodeBrowseFilter);
begin
  DefaultInterface.NodeBrowseFilter := pRetVal;
end;

function TUABrowseMode.Get_SelectableNodeClasses: UANodeClass;
begin
  Result := DefaultInterface.SelectableNodeClasses;
end;

procedure TUABrowseMode.Set_SelectableNodeClasses(pRetVal: UANodeClass);
begin
  DefaultInterface.SelectableNodeClasses := pRetVal;
end;

function TUABrowseMode.Get_SelectElementType: UAElementType;
begin
  Result := DefaultInterface.SelectElementType;
end;

procedure TUABrowseMode.Set_SelectElementType(pRetVal: UAElementType);
begin
  DefaultInterface.SelectElementType := pRetVal;
end;

function TUABrowseMode.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TUABrowseMode.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TUABrowseMode.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TUABrowseMode.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

function TUABrowseMode.IsSelectable(elementType: UAElementType): WordBool;
begin
  Result := DefaultInterface.IsSelectable(elementType);
end;

class function CoUABrowseNodeDescriptor.Create: _UABrowseNodeDescriptor;
begin
  Result := CreateComObject(CLASS_UABrowseNodeDescriptor) as _UABrowseNodeDescriptor;
end;

class function CoUABrowseNodeDescriptor.CreateRemote(const MachineName: string): _UABrowseNodeDescriptor;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UABrowseNodeDescriptor) as _UABrowseNodeDescriptor;
end;

procedure TUABrowseNodeDescriptor.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{258653C1-0EBA-4F2E-8BA2-94D34BD5A74B}';
    IntfIID:   '{C603A6B8-B08A-480B-921C-7607C1358DB0}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TUABrowseNodeDescriptor.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _UABrowseNodeDescriptor;
  end;
end;

procedure TUABrowseNodeDescriptor.ConnectTo(svrIntf: _UABrowseNodeDescriptor);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TUABrowseNodeDescriptor.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TUABrowseNodeDescriptor.GetDefaultInterface: _UABrowseNodeDescriptor;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TUABrowseNodeDescriptor.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TUABrowseNodeDescriptor.Destroy;
begin
  inherited Destroy;
end;

function TUABrowseNodeDescriptor.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TUABrowseNodeDescriptor.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TUABrowseNodeDescriptor.Get_NodeDescriptor: _UANodeDescriptor;
begin
  Result := DefaultInterface.NodeDescriptor;
end;

procedure TUABrowseNodeDescriptor._Set_NodeDescriptor(const pRetVal: _UANodeDescriptor);
begin
  DefaultInterface.NodeDescriptor := pRetVal;
end;

function TUABrowseNodeDescriptor.Get_AttributeId: UAAttributeId;
begin
  Result := DefaultInterface.AttributeId;
end;

procedure TUABrowseNodeDescriptor.Set_AttributeId(pRetVal: UAAttributeId);
begin
  DefaultInterface.AttributeId := pRetVal;
end;

function TUABrowseNodeDescriptor.Get_EndpointDescriptor: _UAEndpointDescriptor;
begin
  Result := DefaultInterface.EndpointDescriptor;
end;

procedure TUABrowseNodeDescriptor._Set_EndpointDescriptor(const pRetVal: _UAEndpointDescriptor);
begin
  DefaultInterface.EndpointDescriptor := pRetVal;
end;

function TUABrowseNodeDescriptor.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TUABrowseNodeDescriptor.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TUABrowseNodeDescriptor.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TUABrowseNodeDescriptor.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

class function CoUABrowseNodeDescriptorCollection.Create: _UABrowseNodeDescriptorCollection;
begin
  Result := CreateComObject(CLASS_UABrowseNodeDescriptorCollection) as _UABrowseNodeDescriptorCollection;
end;

class function CoUABrowseNodeDescriptorCollection.CreateRemote(const MachineName: string): _UABrowseNodeDescriptorCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UABrowseNodeDescriptorCollection) as _UABrowseNodeDescriptorCollection;
end;

procedure TUABrowseNodeDescriptorCollection.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{085292E1-55BC-46BB-9C56-0FCB914533D9}';
    IntfIID:   '{D55AB417-9E03-4CF5-8E60-275542861905}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TUABrowseNodeDescriptorCollection.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _UABrowseNodeDescriptorCollection;
  end;
end;

procedure TUABrowseNodeDescriptorCollection.ConnectTo(svrIntf: _UABrowseNodeDescriptorCollection);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TUABrowseNodeDescriptorCollection.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TUABrowseNodeDescriptorCollection.GetDefaultInterface: _UABrowseNodeDescriptorCollection;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TUABrowseNodeDescriptorCollection.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TUABrowseNodeDescriptorCollection.Destroy;
begin
  inherited Destroy;
end;

function TUABrowseNodeDescriptorCollection.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TUABrowseNodeDescriptorCollection.Get_Item(index: Integer): _UABrowseNodeDescriptor;
begin
  Result := DefaultInterface.Item[index];
end;

procedure TUABrowseNodeDescriptorCollection._Set_Item(index: Integer; 
                                                      const pRetVal: _UABrowseNodeDescriptor);
begin
  DefaultInterface.Item[index] := pRetVal;
end;

function TUABrowseNodeDescriptorCollection.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TUABrowseNodeDescriptorCollection.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TUABrowseNodeDescriptorCollection.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TUABrowseNodeDescriptorCollection.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TUABrowseNodeDescriptorCollection.GetEnumerator: IEnumVARIANT;
begin
  Result := DefaultInterface.GetEnumerator;
end;

procedure TUABrowseNodeDescriptorCollection.Add(Item: OleVariant);
begin
  DefaultInterface.Add(Item);
end;

procedure TUABrowseNodeDescriptorCollection.Clear;
begin
  DefaultInterface.Clear;
end;

function TUABrowseNodeDescriptorCollection.Contains(Item: OleVariant): WordBool;
begin
  Result := DefaultInterface.Contains(Item);
end;

function TUABrowseNodeDescriptorCollection.IndexOf(Item: OleVariant): Integer;
begin
  Result := DefaultInterface.IndexOf(Item);
end;

procedure TUABrowseNodeDescriptorCollection.Insert(index: Integer; Item: OleVariant);
begin
  DefaultInterface.Insert(index, Item);
end;

function TUABrowseNodeDescriptorCollection.Remove(Item: OleVariant): WordBool;
begin
  Result := DefaultInterface.Remove(Item);
end;

procedure TUABrowseNodeDescriptorCollection.RemoveAt(index: Integer);
begin
  DefaultInterface.RemoveAt(index);
end;

class function CoUABrowseNodeElement.Create: _UABrowseNodeElement;
begin
  Result := CreateComObject(CLASS_UABrowseNodeElement) as _UABrowseNodeElement;
end;

class function CoUABrowseNodeElement.CreateRemote(const MachineName: string): _UABrowseNodeElement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UABrowseNodeElement) as _UABrowseNodeElement;
end;

procedure TUABrowseNodeElement.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{2BFC252D-7EE7-46D7-98C3-14F0690D48C8}';
    IntfIID:   '{63246805-4016-42AC-91AA-76304C40332D}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TUABrowseNodeElement.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _UABrowseNodeElement;
  end;
end;

procedure TUABrowseNodeElement.ConnectTo(svrIntf: _UABrowseNodeElement);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TUABrowseNodeElement.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TUABrowseNodeElement.GetDefaultInterface: _UABrowseNodeElement;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TUABrowseNodeElement.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TUABrowseNodeElement.Destroy;
begin
  inherited Destroy;
end;

function TUABrowseNodeElement.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TUABrowseNodeElement.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TUABrowseNodeElement.Get_DiscoveryElement: _UADiscoveryElement;
begin
  Result := DefaultInterface.DiscoveryElement;
end;

procedure TUABrowseNodeElement._Set_DiscoveryElement(const pRetVal: _UADiscoveryElement);
begin
  DefaultInterface.DiscoveryElement := pRetVal;
end;

function TUABrowseNodeElement.Get_HostElement: _HostElement;
begin
  Result := DefaultInterface.HostElement;
end;

procedure TUABrowseNodeElement._Set_HostElement(const pRetVal: _HostElement);
begin
  DefaultInterface.HostElement := pRetVal;
end;

function TUABrowseNodeElement.Get_NodeElement: _UANodeElement;
begin
  Result := DefaultInterface.NodeElement;
end;

procedure TUABrowseNodeElement._Set_NodeElement(const pRetVal: _UANodeElement);
begin
  DefaultInterface.NodeElement := pRetVal;
end;

function TUABrowseNodeElement.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TUABrowseNodeElement.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TUABrowseNodeElement.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TUABrowseNodeElement.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

class function CoUABrowseNodeElementCollection.Create: _UABrowseNodeElementCollection;
begin
  Result := CreateComObject(CLASS_UABrowseNodeElementCollection) as _UABrowseNodeElementCollection;
end;

class function CoUABrowseNodeElementCollection.CreateRemote(const MachineName: string): _UABrowseNodeElementCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UABrowseNodeElementCollection) as _UABrowseNodeElementCollection;
end;

procedure TUABrowseNodeElementCollection.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{DD59B9AD-785E-49E9-A0CB-CB0ECA2CEF90}';
    IntfIID:   '{277A8A43-309F-4480-8EDC-E5E720DBEEF5}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TUABrowseNodeElementCollection.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _UABrowseNodeElementCollection;
  end;
end;

procedure TUABrowseNodeElementCollection.ConnectTo(svrIntf: _UABrowseNodeElementCollection);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TUABrowseNodeElementCollection.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TUABrowseNodeElementCollection.GetDefaultInterface: _UABrowseNodeElementCollection;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TUABrowseNodeElementCollection.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TUABrowseNodeElementCollection.Destroy;
begin
  inherited Destroy;
end;

function TUABrowseNodeElementCollection.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TUABrowseNodeElementCollection.Get_Item(index: Integer): _UABrowseNodeElement;
begin
  Result := DefaultInterface.Item[index];
end;

procedure TUABrowseNodeElementCollection._Set_Item(index: Integer; 
                                                   const pRetVal: _UABrowseNodeElement);
begin
  DefaultInterface.Item[index] := pRetVal;
end;

function TUABrowseNodeElementCollection.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TUABrowseNodeElementCollection.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TUABrowseNodeElementCollection.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TUABrowseNodeElementCollection.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TUABrowseNodeElementCollection.GetEnumerator: IEnumVARIANT;
begin
  Result := DefaultInterface.GetEnumerator;
end;

procedure TUABrowseNodeElementCollection.Add(Item: OleVariant);
begin
  DefaultInterface.Add(Item);
end;

procedure TUABrowseNodeElementCollection.Clear;
begin
  DefaultInterface.Clear;
end;

function TUABrowseNodeElementCollection.Contains(Item: OleVariant): WordBool;
begin
  Result := DefaultInterface.Contains(Item);
end;

function TUABrowseNodeElementCollection.IndexOf(Item: OleVariant): Integer;
begin
  Result := DefaultInterface.IndexOf(Item);
end;

procedure TUABrowseNodeElementCollection.Insert(index: Integer; Item: OleVariant);
begin
  DefaultInterface.Insert(index, Item);
end;

function TUABrowseNodeElementCollection.Remove(Item: OleVariant): WordBool;
begin
  Result := DefaultInterface.Remove(Item);
end;

procedure TUABrowseNodeElementCollection.RemoveAt(index: Integer);
begin
  DefaultInterface.RemoveAt(index);
end;

class function CoUABrowseOutputs.Create: _UABrowseOutputs;
begin
  Result := CreateComObject(CLASS_UABrowseOutputs) as _UABrowseOutputs;
end;

class function CoUABrowseOutputs.CreateRemote(const MachineName: string): _UABrowseOutputs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UABrowseOutputs) as _UABrowseOutputs;
end;

procedure TUABrowseOutputs.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{5FAE39C3-F0F0-46B9-895A-8AAD9E70ED31}';
    IntfIID:   '{21044995-5669-491F-B00F-3FC5DA9D1242}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TUABrowseOutputs.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _UABrowseOutputs;
  end;
end;

procedure TUABrowseOutputs.ConnectTo(svrIntf: _UABrowseOutputs);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TUABrowseOutputs.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TUABrowseOutputs.GetDefaultInterface: _UABrowseOutputs;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TUABrowseOutputs.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TUABrowseOutputs.Destroy;
begin
  inherited Destroy;
end;

function TUABrowseOutputs.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TUABrowseOutputs.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TUABrowseOutputs.Get_CurrentNodeElement: _UABrowseNodeElement;
begin
  Result := DefaultInterface.CurrentNodeElement;
end;

procedure TUABrowseOutputs._Set_CurrentNodeElement(const pRetVal: _UABrowseNodeElement);
begin
  DefaultInterface.CurrentNodeElement := pRetVal;
end;

function TUABrowseOutputs.Get_SelectionElements: _UABrowseNodeElementCollection;
begin
  Result := DefaultInterface.SelectionElements;
end;

function TUABrowseOutputs.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TUABrowseOutputs.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TUABrowseOutputs.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TUABrowseOutputs.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

class function CoUADataDialog.Create: _UADataDialog;
begin
  Result := CreateComObject(CLASS_UADataDialog) as _UADataDialog;
end;

class function CoUADataDialog.CreateRemote(const MachineName: string): _UADataDialog;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UADataDialog) as _UADataDialog;
end;

procedure TUADataDialog.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{F444999E-AF8E-4EA8-A425-786B468B1380}';
    IntfIID:   '{68798837-AA6C-4412-B9A2-F069BF8BE160}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TUADataDialog.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _UADataDialog;
  end;
end;

procedure TUADataDialog.ConnectTo(svrIntf: _UADataDialog);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TUADataDialog.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TUADataDialog.GetDefaultInterface: _UADataDialog;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TUADataDialog.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TUADataDialog.Destroy;
begin
  inherited Destroy;
end;

function TUADataDialog.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TUADataDialog.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TUADataDialog.Get_Tag: OleVariant;
begin
  Result := DefaultInterface.Tag;
end;

procedure TUADataDialog._Set_Tag(pRetVal: OleVariant);
begin
  DefaultInterface.Tag := pRetVal;
end;

function TUADataDialog.Get_RetainAppearance: WordBool;
begin
  Result := DefaultInterface.RetainAppearance;
end;

procedure TUADataDialog.Set_RetainAppearance(pRetVal: WordBool);
begin
  DefaultInterface.RetainAppearance := pRetVal;
end;

function TUADataDialog.Get_SizeFactor: SizeF;
begin
  Result := DefaultInterface.SizeFactor;
end;

procedure TUADataDialog.Set_SizeFactor(pRetVal: SizeF);
begin
  DefaultInterface.SizeFactor := pRetVal;
end;

function TUADataDialog.Get_SizeFactorName: WideString;
begin
  Result := DefaultInterface.SizeFactorName;
end;

procedure TUADataDialog.Set_SizeFactorName(const pRetVal: WideString);
begin
  DefaultInterface.SizeFactorName := pRetVal;
end;

function TUADataDialog.Get_ClientSelector: _EasyUAClientSelector;
begin
  Result := DefaultInterface.ClientSelector;
end;

procedure TUADataDialog._Set_ClientSelector(const pRetVal: _EasyUAClientSelector);
begin
  DefaultInterface.ClientSelector := pRetVal;
end;

function TUADataDialog.Get_IncludeProperties: WordBool;
begin
  Result := DefaultInterface.IncludeProperties;
end;

procedure TUADataDialog.Set_IncludeProperties(pRetVal: WordBool);
begin
  DefaultInterface.IncludeProperties := pRetVal;
end;

function TUADataDialog.Get_LooseReferenceTypes: WordBool;
begin
  Result := DefaultInterface.LooseReferenceTypes;
end;

procedure TUADataDialog.Set_LooseReferenceTypes(pRetVal: WordBool);
begin
  DefaultInterface.LooseReferenceTypes := pRetVal;
end;

function TUADataDialog.Get_ManualNodes: WordBool;
begin
  Result := DefaultInterface.ManualNodes;
end;

procedure TUADataDialog.Set_ManualNodes(pRetVal: WordBool);
begin
  DefaultInterface.ManualNodes := pRetVal;
end;

function TUADataDialog.Get_MultiSelect: WordBool;
begin
  Result := DefaultInterface.MultiSelect;
end;

procedure TUADataDialog.Set_MultiSelect(pRetVal: WordBool);
begin
  DefaultInterface.MultiSelect := pRetVal;
end;

function TUADataDialog.Get_UserPickEndpoint: WordBool;
begin
  Result := DefaultInterface.UserPickEndpoint;
end;

procedure TUADataDialog.Set_UserPickEndpoint(pRetVal: WordBool);
begin
  DefaultInterface.UserPickEndpoint := pRetVal;
end;

function TUADataDialog.Get_EndpointDescriptor: _UAEndpointDescriptor;
begin
  Result := DefaultInterface.EndpointDescriptor;
end;

procedure TUADataDialog._Set_EndpointDescriptor(const pRetVal: _UAEndpointDescriptor);
begin
  DefaultInterface.EndpointDescriptor := pRetVal;
end;

function TUADataDialog.Get_EndpointDescriptors: PSafeArray;
begin
  Result := DefaultInterface.EndpointDescriptors;
end;

procedure TUADataDialog.Set_EndpointDescriptors(pRetVal: PSafeArray);
begin
  DefaultInterface.EndpointDescriptors := pRetVal;
end;

function TUADataDialog.Get_NodeDescriptor: _UANodeDescriptor;
begin
  Result := DefaultInterface.NodeDescriptor;
end;

procedure TUADataDialog._Set_NodeDescriptor(const pRetVal: _UANodeDescriptor);
begin
  DefaultInterface.NodeDescriptor := pRetVal;
end;

function TUADataDialog.Get_NodeDescriptors: PSafeArray;
begin
  Result := DefaultInterface.NodeDescriptors;
end;

procedure TUADataDialog.Set_NodeDescriptors(pRetVal: PSafeArray);
begin
  DefaultInterface.NodeDescriptors := pRetVal;
end;

function TUADataDialog.Get_NodeElement: _UANodeElement;
begin
  Result := DefaultInterface.NodeElement;
end;

function TUADataDialog.Get_NodeElements: PSafeArray;
begin
  Result := DefaultInterface.NodeElements;
end;

function TUADataDialog.Get_StartNodeDescriptor: _UANodeDescriptor;
begin
  Result := DefaultInterface.StartNodeDescriptor;
end;

procedure TUADataDialog._Set_StartNodeDescriptor(const pRetVal: _UANodeDescriptor);
begin
  DefaultInterface.StartNodeDescriptor := pRetVal;
end;

function TUADataDialog.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TUADataDialog.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TUADataDialog.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

procedure TUADataDialog.Reset;
begin
  DefaultInterface.Reset;
end;

function TUADataDialog.ShowDialog(const owner: IWin32Window): DialogResult;
begin
  Result := DefaultInterface.ShowDialog(owner);
end;

procedure TUADataDialog.RevertAppearance;
begin
  DefaultInterface.RevertAppearance;
end;

procedure TUADataDialog.SetTag(Tag: OleVariant);
begin
  DefaultInterface.SetTag(Tag);
end;

procedure TUADataDialog.SetEndpointDescriptors(var EndpointDescriptors: PSafeArray);
begin
  DefaultInterface.SetEndpointDescriptors(EndpointDescriptors);
end;

procedure TUADataDialog.SetNodeDescriptors(var NodeDescriptors: PSafeArray);
begin
  DefaultInterface.SetNodeDescriptors(NodeDescriptors);
end;

class function CoUAEndpointDialog.Create: _UAEndpointDialog;
begin
  Result := CreateComObject(CLASS_UAEndpointDialog) as _UAEndpointDialog;
end;

class function CoUAEndpointDialog.CreateRemote(const MachineName: string): _UAEndpointDialog;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UAEndpointDialog) as _UAEndpointDialog;
end;

procedure TUAEndpointDialog.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{E4858B41-DFE7-4A53-A875-3F0865FC23F4}';
    IntfIID:   '{3BD24237-FB61-4891-8627-EF6A71D29C87}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TUAEndpointDialog.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _UAEndpointDialog;
  end;
end;

procedure TUAEndpointDialog.ConnectTo(svrIntf: _UAEndpointDialog);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TUAEndpointDialog.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TUAEndpointDialog.GetDefaultInterface: _UAEndpointDialog;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TUAEndpointDialog.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TUAEndpointDialog.Destroy;
begin
  inherited Destroy;
end;

function TUAEndpointDialog.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TUAEndpointDialog.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TUAEndpointDialog.Get_Tag: OleVariant;
begin
  Result := DefaultInterface.Tag;
end;

procedure TUAEndpointDialog._Set_Tag(pRetVal: OleVariant);
begin
  DefaultInterface.Tag := pRetVal;
end;

function TUAEndpointDialog.Get_RetainAppearance: WordBool;
begin
  Result := DefaultInterface.RetainAppearance;
end;

procedure TUAEndpointDialog.Set_RetainAppearance(pRetVal: WordBool);
begin
  DefaultInterface.RetainAppearance := pRetVal;
end;

function TUAEndpointDialog.Get_SizeFactor: SizeF;
begin
  Result := DefaultInterface.SizeFactor;
end;

procedure TUAEndpointDialog.Set_SizeFactor(pRetVal: SizeF);
begin
  DefaultInterface.SizeFactor := pRetVal;
end;

function TUAEndpointDialog.Get_SizeFactorName: WideString;
begin
  Result := DefaultInterface.SizeFactorName;
end;

procedure TUAEndpointDialog.Set_SizeFactorName(const pRetVal: WideString);
begin
  DefaultInterface.SizeFactorName := pRetVal;
end;

function TUAEndpointDialog.Get_ClientSelector: _EasyUAClientSelector;
begin
  Result := DefaultInterface.ClientSelector;
end;

procedure TUAEndpointDialog._Set_ClientSelector(const pRetVal: _EasyUAClientSelector);
begin
  DefaultInterface.ClientSelector := pRetVal;
end;

function TUAEndpointDialog.Get_DiscoveryHost: WideString;
begin
  Result := DefaultInterface.DiscoveryHost;
end;

procedure TUAEndpointDialog.Set_DiscoveryHost(const pRetVal: WideString);
begin
  DefaultInterface.DiscoveryHost := pRetVal;
end;

function TUAEndpointDialog.Get_EndpointDescriptor: _UAEndpointDescriptor;
begin
  Result := DefaultInterface.EndpointDescriptor;
end;

procedure TUAEndpointDialog._Set_EndpointDescriptor(const pRetVal: _UAEndpointDescriptor);
begin
  DefaultInterface.EndpointDescriptor := pRetVal;
end;

function TUAEndpointDialog.Get_DiscoveryElement: _UADiscoveryElement;
begin
  Result := DefaultInterface.DiscoveryElement;
end;

function TUAEndpointDialog.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TUAEndpointDialog.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TUAEndpointDialog.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

procedure TUAEndpointDialog.Reset;
begin
  DefaultInterface.Reset;
end;

function TUAEndpointDialog.ShowDialog(const owner: IWin32Window): DialogResult;
begin
  Result := DefaultInterface.ShowDialog(owner);
end;

procedure TUAEndpointDialog.RevertAppearance;
begin
  DefaultInterface.RevertAppearance;
end;

procedure TUAEndpointDialog.SetTag(Tag: OleVariant);
begin
  DefaultInterface.SetTag(Tag);
end;

class function CoUAHostAndEndpointDialog.Create: _UAHostAndEndpointDialog;
begin
  Result := CreateComObject(CLASS_UAHostAndEndpointDialog) as _UAHostAndEndpointDialog;
end;

class function CoUAHostAndEndpointDialog.CreateRemote(const MachineName: string): _UAHostAndEndpointDialog;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UAHostAndEndpointDialog) as _UAHostAndEndpointDialog;
end;

procedure TUAHostAndEndpointDialog.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{0612DEF8-C143-45F4-A58F-C9C6A2B4AAA6}';
    IntfIID:   '{175A791E-4BB5-4731-9EA5-7D87055FA3AE}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TUAHostAndEndpointDialog.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _UAHostAndEndpointDialog;
  end;
end;

procedure TUAHostAndEndpointDialog.ConnectTo(svrIntf: _UAHostAndEndpointDialog);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TUAHostAndEndpointDialog.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TUAHostAndEndpointDialog.GetDefaultInterface: _UAHostAndEndpointDialog;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TUAHostAndEndpointDialog.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TUAHostAndEndpointDialog.Destroy;
begin
  inherited Destroy;
end;

function TUAHostAndEndpointDialog.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TUAHostAndEndpointDialog.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TUAHostAndEndpointDialog.Get_Tag: OleVariant;
begin
  Result := DefaultInterface.Tag;
end;

procedure TUAHostAndEndpointDialog._Set_Tag(pRetVal: OleVariant);
begin
  DefaultInterface.Tag := pRetVal;
end;

function TUAHostAndEndpointDialog.Get_RetainAppearance: WordBool;
begin
  Result := DefaultInterface.RetainAppearance;
end;

procedure TUAHostAndEndpointDialog.Set_RetainAppearance(pRetVal: WordBool);
begin
  DefaultInterface.RetainAppearance := pRetVal;
end;

function TUAHostAndEndpointDialog.Get_SizeFactor: SizeF;
begin
  Result := DefaultInterface.SizeFactor;
end;

procedure TUAHostAndEndpointDialog.Set_SizeFactor(pRetVal: SizeF);
begin
  DefaultInterface.SizeFactor := pRetVal;
end;

function TUAHostAndEndpointDialog.Get_SizeFactorName: WideString;
begin
  Result := DefaultInterface.SizeFactorName;
end;

procedure TUAHostAndEndpointDialog.Set_SizeFactorName(const pRetVal: WideString);
begin
  DefaultInterface.SizeFactorName := pRetVal;
end;

function TUAHostAndEndpointDialog.Get_ClientSelector: _EasyUAClientSelector;
begin
  Result := DefaultInterface.ClientSelector;
end;

procedure TUAHostAndEndpointDialog._Set_ClientSelector(const pRetVal: _EasyUAClientSelector);
begin
  DefaultInterface.ClientSelector := pRetVal;
end;

function TUAHostAndEndpointDialog.Get_Caption: WideString;
begin
  Result := DefaultInterface.Caption;
end;

procedure TUAHostAndEndpointDialog.Set_Caption(const pRetVal: WideString);
begin
  DefaultInterface.Caption := pRetVal;
end;

function TUAHostAndEndpointDialog.Get_ManualNodes: WordBool;
begin
  Result := DefaultInterface.ManualNodes;
end;

procedure TUAHostAndEndpointDialog.Set_ManualNodes(pRetVal: WordBool);
begin
  DefaultInterface.ManualNodes := pRetVal;
end;

function TUAHostAndEndpointDialog.Get_EndpointDescriptor: _UAEndpointDescriptor;
begin
  Result := DefaultInterface.EndpointDescriptor;
end;

procedure TUAHostAndEndpointDialog._Set_EndpointDescriptor(const pRetVal: _UAEndpointDescriptor);
begin
  DefaultInterface.EndpointDescriptor := pRetVal;
end;

function TUAHostAndEndpointDialog.Get_HostElement: _HostElement;
begin
  Result := DefaultInterface.HostElement;
end;

function TUAHostAndEndpointDialog.Get_DiscoveryElement: _UADiscoveryElement;
begin
  Result := DefaultInterface.DiscoveryElement;
end;

function TUAHostAndEndpointDialog.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TUAHostAndEndpointDialog.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TUAHostAndEndpointDialog.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

procedure TUAHostAndEndpointDialog.Reset;
begin
  DefaultInterface.Reset;
end;

function TUAHostAndEndpointDialog.ShowDialog(const owner: IWin32Window): DialogResult;
begin
  Result := DefaultInterface.ShowDialog(owner);
end;

procedure TUAHostAndEndpointDialog.RevertAppearance;
begin
  DefaultInterface.RevertAppearance;
end;

procedure TUAHostAndEndpointDialog.SetTag(Tag: OleVariant);
begin
  DefaultInterface.SetTag(Tag);
end;

class function CoOpcBrowseDialog.Create: _OpcBrowseDialog;
begin
  Result := CreateComObject(CLASS_OpcBrowseDialog) as _OpcBrowseDialog;
end;

class function CoOpcBrowseDialog.CreateRemote(const MachineName: string): _OpcBrowseDialog;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OpcBrowseDialog) as _OpcBrowseDialog;
end;

procedure TOpcBrowseDialog.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{DF6649D4-A24A-4AA0-AA62-7FAC59FE2E99}';
    IntfIID:   '{0AA07238-D0EB-44A6-B1A4-C18F6BF4DE44}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TOpcBrowseDialog.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _OpcBrowseDialog;
  end;
end;

procedure TOpcBrowseDialog.ConnectTo(svrIntf: _OpcBrowseDialog);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TOpcBrowseDialog.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TOpcBrowseDialog.GetDefaultInterface: _OpcBrowseDialog;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TOpcBrowseDialog.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TOpcBrowseDialog.Destroy;
begin
  inherited Destroy;
end;

function TOpcBrowseDialog.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TOpcBrowseDialog.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TOpcBrowseDialog.Get_Tag: OleVariant;
begin
  Result := DefaultInterface.Tag;
end;

procedure TOpcBrowseDialog._Set_Tag(pRetVal: OleVariant);
begin
  DefaultInterface.Tag := pRetVal;
end;

function TOpcBrowseDialog.Get_AEClientSelector: _EasyAEClientSelector;
begin
  Result := DefaultInterface.AEClientSelector;
end;

procedure TOpcBrowseDialog._Set_AEClientSelector(const pRetVal: _EasyAEClientSelector);
begin
  DefaultInterface.AEClientSelector := pRetVal;
end;

function TOpcBrowseDialog.Get_DAClientSelector: _EasyDAClientSelector;
begin
  Result := DefaultInterface.DAClientSelector;
end;

procedure TOpcBrowseDialog._Set_DAClientSelector(const pRetVal: _EasyDAClientSelector);
begin
  DefaultInterface.DAClientSelector := pRetVal;
end;

function TOpcBrowseDialog.Get_Mode: _OpcBrowseMode;
begin
  Result := DefaultInterface.Mode;
end;

function TOpcBrowseDialog.Get_Inputs: _OpcBrowseInputs;
begin
  Result := DefaultInterface.Inputs;
end;

function TOpcBrowseDialog.Get_InputsOutputs: _OpcBrowseInputsOutputs;
begin
  Result := DefaultInterface.InputsOutputs;
end;

function TOpcBrowseDialog.Get_Outputs: _OpcBrowseOutputs;
begin
  Result := DefaultInterface.Outputs;
end;

function TOpcBrowseDialog.Get_Simulated: WordBool;
begin
  Result := DefaultInterface.Simulated;
end;

procedure TOpcBrowseDialog.Set_Simulated(pRetVal: WordBool);
begin
  DefaultInterface.Simulated := pRetVal;
end;

function TOpcBrowseDialog.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TOpcBrowseDialog.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TOpcBrowseDialog.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

procedure TOpcBrowseDialog.Reset;
begin
  DefaultInterface.Reset;
end;

function TOpcBrowseDialog.ShowDialog(const owner: IWin32Window): DialogResult;
begin
  Result := DefaultInterface.ShowDialog(owner);
end;

procedure TOpcBrowseDialog.SetTag(Tag: OleVariant);
begin
  DefaultInterface.SetTag(Tag);
end;

class function CoOpcBrowseInputs.Create: _OpcBrowseInputs;
begin
  Result := CreateComObject(CLASS_OpcBrowseInputs) as _OpcBrowseInputs;
end;

class function CoOpcBrowseInputs.CreateRemote(const MachineName: string): _OpcBrowseInputs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OpcBrowseInputs) as _OpcBrowseInputs;
end;

procedure TOpcBrowseInputs.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{03AECA28-CABD-4463-B4B9-FC09E3228B6B}';
    IntfIID:   '{F3B1F692-DFCD-4C63-8C93-930E5D220789}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TOpcBrowseInputs.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _OpcBrowseInputs;
  end;
end;

procedure TOpcBrowseInputs.ConnectTo(svrIntf: _OpcBrowseInputs);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TOpcBrowseInputs.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TOpcBrowseInputs.GetDefaultInterface: _OpcBrowseInputs;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TOpcBrowseInputs.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TOpcBrowseInputs.Destroy;
begin
  inherited Destroy;
end;

function TOpcBrowseInputs.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TOpcBrowseInputs.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TOpcBrowseInputs.Get_EnabledServerFamilies: ServerFamilies;
begin
  Result := DefaultInterface.EnabledServerFamilies;
end;

procedure TOpcBrowseInputs.Set_EnabledServerFamilies(pRetVal: ServerFamilies);
begin
  DefaultInterface.EnabledServerFamilies := pRetVal;
end;

function TOpcBrowseInputs.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TOpcBrowseInputs.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TOpcBrowseInputs.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TOpcBrowseInputs.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

class function CoOpcBrowseInputsOutputs.Create: _OpcBrowseInputsOutputs;
begin
  Result := CreateComObject(CLASS_OpcBrowseInputsOutputs) as _OpcBrowseInputsOutputs;
end;

class function CoOpcBrowseInputsOutputs.CreateRemote(const MachineName: string): _OpcBrowseInputsOutputs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OpcBrowseInputsOutputs) as _OpcBrowseInputsOutputs;
end;

procedure TOpcBrowseInputsOutputs.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{01E2D03D-86A8-41F1-B648-4E2D0B774A02}';
    IntfIID:   '{2A9A8B80-F43F-4236-B090-0D336DD2A971}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TOpcBrowseInputsOutputs.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _OpcBrowseInputsOutputs;
  end;
end;

procedure TOpcBrowseInputsOutputs.ConnectTo(svrIntf: _OpcBrowseInputsOutputs);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TOpcBrowseInputsOutputs.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TOpcBrowseInputsOutputs.GetDefaultInterface: _OpcBrowseInputsOutputs;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TOpcBrowseInputsOutputs.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TOpcBrowseInputsOutputs.Destroy;
begin
  inherited Destroy;
end;

function TOpcBrowseInputsOutputs.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TOpcBrowseInputsOutputs.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TOpcBrowseInputsOutputs.Get_CurrentNodeDescriptor: _OpcBrowseNodeDescriptor;
begin
  Result := DefaultInterface.CurrentNodeDescriptor;
end;

procedure TOpcBrowseInputsOutputs._Set_CurrentNodeDescriptor(const pRetVal: _OpcBrowseNodeDescriptor);
begin
  DefaultInterface.CurrentNodeDescriptor := pRetVal;
end;

function TOpcBrowseInputsOutputs.Get_SelectionDescriptors: _OpcBrowseNodeDescriptorCollection;
begin
  Result := DefaultInterface.SelectionDescriptors;
end;

function TOpcBrowseInputsOutputs.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TOpcBrowseInputsOutputs.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TOpcBrowseInputsOutputs.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TOpcBrowseInputsOutputs.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

class function CoOpcBrowseMode.Create: _OpcBrowseMode;
begin
  Result := CreateComObject(CLASS_OpcBrowseMode) as _OpcBrowseMode;
end;

class function CoOpcBrowseMode.CreateRemote(const MachineName: string): _OpcBrowseMode;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OpcBrowseMode) as _OpcBrowseMode;
end;

procedure TOpcBrowseMode.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{B63C9B87-49B1-4190-8CCA-08049DBC5E91}';
    IntfIID:   '{F6F1B857-7596-41EA-8260-7F522B314940}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TOpcBrowseMode.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _OpcBrowseMode;
  end;
end;

procedure TOpcBrowseMode.ConnectTo(svrIntf: _OpcBrowseMode);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TOpcBrowseMode.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TOpcBrowseMode.GetDefaultInterface: _OpcBrowseMode;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TOpcBrowseMode.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TOpcBrowseMode.Destroy;
begin
  inherited Destroy;
end;

function TOpcBrowseMode.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TOpcBrowseMode.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TOpcBrowseMode.Get_ManualNodes: WordBool;
begin
  Result := DefaultInterface.ManualNodes;
end;

procedure TOpcBrowseMode.Set_ManualNodes(pRetVal: WordBool);
begin
  DefaultInterface.ManualNodes := pRetVal;
end;

function TOpcBrowseMode.Get_MultiSelect: WordBool;
begin
  Result := DefaultInterface.MultiSelect;
end;

procedure TOpcBrowseMode.Set_MultiSelect(pRetVal: WordBool);
begin
  DefaultInterface.MultiSelect := pRetVal;
end;

function TOpcBrowseMode.Get_ShowListBranches: WordBool;
begin
  Result := DefaultInterface.ShowListBranches;
end;

procedure TOpcBrowseMode.Set_ShowListBranches(pRetVal: WordBool);
begin
  DefaultInterface.ShowListBranches := pRetVal;
end;

function TOpcBrowseMode.Get_AnchorElementType: OpcElementType;
begin
  Result := DefaultInterface.AnchorElementType;
end;

procedure TOpcBrowseMode.Set_AnchorElementType(pRetVal: OpcElementType);
begin
  DefaultInterface.AnchorElementType := pRetVal;
end;

function TOpcBrowseMode.Get_SelectElementType: OpcElementType;
begin
  Result := DefaultInterface.SelectElementType;
end;

procedure TOpcBrowseMode.Set_SelectElementType(pRetVal: OpcElementType);
begin
  DefaultInterface.SelectElementType := pRetVal;
end;

function TOpcBrowseMode.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TOpcBrowseMode.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TOpcBrowseMode.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TOpcBrowseMode.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

function TOpcBrowseMode.IsSelectable(elementType: OpcElementType): WordBool;
begin
  Result := DefaultInterface.IsSelectable(elementType);
end;

class function CoOpcBrowseNodeDescriptor.Create: _OpcBrowseNodeDescriptor;
begin
  Result := CreateComObject(CLASS_OpcBrowseNodeDescriptor) as _OpcBrowseNodeDescriptor;
end;

class function CoOpcBrowseNodeDescriptor.CreateRemote(const MachineName: string): _OpcBrowseNodeDescriptor;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OpcBrowseNodeDescriptor) as _OpcBrowseNodeDescriptor;
end;

procedure TOpcBrowseNodeDescriptor.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{53C9181C-2F63-476E-ABB2-5CE6EA4337CE}';
    IntfIID:   '{019441F9-BB58-4BD3-B2B9-2E57D4F7A43B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TOpcBrowseNodeDescriptor.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _OpcBrowseNodeDescriptor;
  end;
end;

procedure TOpcBrowseNodeDescriptor.ConnectTo(svrIntf: _OpcBrowseNodeDescriptor);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TOpcBrowseNodeDescriptor.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TOpcBrowseNodeDescriptor.GetDefaultInterface: _OpcBrowseNodeDescriptor;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TOpcBrowseNodeDescriptor.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TOpcBrowseNodeDescriptor.Destroy;
begin
  inherited Destroy;
end;

function TOpcBrowseNodeDescriptor.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TOpcBrowseNodeDescriptor.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TOpcBrowseNodeDescriptor.Get_DANodeDescriptor: _DANodeDescriptor;
begin
  Result := DefaultInterface.DANodeDescriptor;
end;

procedure TOpcBrowseNodeDescriptor._Set_DANodeDescriptor(const pRetVal: _DANodeDescriptor);
begin
  DefaultInterface.DANodeDescriptor := pRetVal;
end;

function TOpcBrowseNodeDescriptor.Get_DAPropertyDescriptor: _DAPropertyDescriptor;
begin
  Result := DefaultInterface.DAPropertyDescriptor;
end;

procedure TOpcBrowseNodeDescriptor._Set_DAPropertyDescriptor(const pRetVal: _DAPropertyDescriptor);
begin
  DefaultInterface.DAPropertyDescriptor := pRetVal;
end;

function TOpcBrowseNodeDescriptor.Get_DAAccessPath: WideString;
begin
  Result := DefaultInterface.DAAccessPath;
end;

procedure TOpcBrowseNodeDescriptor.Set_DAAccessPath(const pRetVal: WideString);
begin
  DefaultInterface.DAAccessPath := pRetVal;
end;

function TOpcBrowseNodeDescriptor.Get_AECategoryId: Integer;
begin
  Result := DefaultInterface.AECategoryId;
end;

procedure TOpcBrowseNodeDescriptor.Set_AECategoryId(pRetVal: Integer);
begin
  DefaultInterface.AECategoryId := pRetVal;
end;

function TOpcBrowseNodeDescriptor.Get_AEAttributeId: Integer;
begin
  Result := DefaultInterface.AEAttributeId;
end;

procedure TOpcBrowseNodeDescriptor.Set_AEAttributeId(pRetVal: Integer);
begin
  DefaultInterface.AEAttributeId := pRetVal;
end;

function TOpcBrowseNodeDescriptor.Get_AEConditionName: WideString;
begin
  Result := DefaultInterface.AEConditionName;
end;

procedure TOpcBrowseNodeDescriptor.Set_AEConditionName(const pRetVal: WideString);
begin
  DefaultInterface.AEConditionName := pRetVal;
end;

function TOpcBrowseNodeDescriptor.Get_AESubconditionName: WideString;
begin
  Result := DefaultInterface.AESubconditionName;
end;

procedure TOpcBrowseNodeDescriptor.Set_AESubconditionName(const pRetVal: WideString);
begin
  DefaultInterface.AESubconditionName := pRetVal;
end;

function TOpcBrowseNodeDescriptor.Get_AENodeDescriptor: _AENodeDescriptor;
begin
  Result := DefaultInterface.AENodeDescriptor;
end;

procedure TOpcBrowseNodeDescriptor._Set_AENodeDescriptor(const pRetVal: _AENodeDescriptor);
begin
  DefaultInterface.AENodeDescriptor := pRetVal;
end;

function TOpcBrowseNodeDescriptor.Get_ServerDescriptor: _ServerDescriptor;
begin
  Result := DefaultInterface.ServerDescriptor;
end;

procedure TOpcBrowseNodeDescriptor._Set_ServerDescriptor(const pRetVal: _ServerDescriptor);
begin
  DefaultInterface.ServerDescriptor := pRetVal;
end;

function TOpcBrowseNodeDescriptor.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TOpcBrowseNodeDescriptor.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TOpcBrowseNodeDescriptor.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TOpcBrowseNodeDescriptor.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

class function CoOpcBrowseNodeDescriptorCollection.Create: _OpcBrowseNodeDescriptorCollection;
begin
  Result := CreateComObject(CLASS_OpcBrowseNodeDescriptorCollection) as _OpcBrowseNodeDescriptorCollection;
end;

class function CoOpcBrowseNodeDescriptorCollection.CreateRemote(const MachineName: string): _OpcBrowseNodeDescriptorCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OpcBrowseNodeDescriptorCollection) as _OpcBrowseNodeDescriptorCollection;
end;

procedure TOpcBrowseNodeDescriptorCollection.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{417D2B3C-904B-4C7E-9CBB-72A6BD67344B}';
    IntfIID:   '{A92E4086-E2D0-4B07-8E19-5D7B5B0A3364}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TOpcBrowseNodeDescriptorCollection.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _OpcBrowseNodeDescriptorCollection;
  end;
end;

procedure TOpcBrowseNodeDescriptorCollection.ConnectTo(svrIntf: _OpcBrowseNodeDescriptorCollection);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TOpcBrowseNodeDescriptorCollection.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TOpcBrowseNodeDescriptorCollection.GetDefaultInterface: _OpcBrowseNodeDescriptorCollection;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TOpcBrowseNodeDescriptorCollection.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TOpcBrowseNodeDescriptorCollection.Destroy;
begin
  inherited Destroy;
end;

function TOpcBrowseNodeDescriptorCollection.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TOpcBrowseNodeDescriptorCollection.Get_Item(index: Integer): _OpcBrowseNodeDescriptor;
begin
  Result := DefaultInterface.Item[index];
end;

procedure TOpcBrowseNodeDescriptorCollection._Set_Item(index: Integer; 
                                                       const pRetVal: _OpcBrowseNodeDescriptor);
begin
  DefaultInterface.Item[index] := pRetVal;
end;

function TOpcBrowseNodeDescriptorCollection.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TOpcBrowseNodeDescriptorCollection.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TOpcBrowseNodeDescriptorCollection.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TOpcBrowseNodeDescriptorCollection.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TOpcBrowseNodeDescriptorCollection.GetEnumerator: IEnumVARIANT;
begin
  Result := DefaultInterface.GetEnumerator;
end;

procedure TOpcBrowseNodeDescriptorCollection.Add(Item: OleVariant);
begin
  DefaultInterface.Add(Item);
end;

procedure TOpcBrowseNodeDescriptorCollection.Clear;
begin
  DefaultInterface.Clear;
end;

function TOpcBrowseNodeDescriptorCollection.Contains(Item: OleVariant): WordBool;
begin
  Result := DefaultInterface.Contains(Item);
end;

function TOpcBrowseNodeDescriptorCollection.IndexOf(Item: OleVariant): Integer;
begin
  Result := DefaultInterface.IndexOf(Item);
end;

procedure TOpcBrowseNodeDescriptorCollection.Insert(index: Integer; Item: OleVariant);
begin
  DefaultInterface.Insert(index, Item);
end;

function TOpcBrowseNodeDescriptorCollection.Remove(Item: OleVariant): WordBool;
begin
  Result := DefaultInterface.Remove(Item);
end;

procedure TOpcBrowseNodeDescriptorCollection.RemoveAt(index: Integer);
begin
  DefaultInterface.RemoveAt(index);
end;

class function CoOpcBrowseNodeElement.Create: _OpcBrowseNodeElement;
begin
  Result := CreateComObject(CLASS_OpcBrowseNodeElement) as _OpcBrowseNodeElement;
end;

class function CoOpcBrowseNodeElement.CreateRemote(const MachineName: string): _OpcBrowseNodeElement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OpcBrowseNodeElement) as _OpcBrowseNodeElement;
end;

procedure TOpcBrowseNodeElement.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{5C0D47E7-60F9-4E2B-8714-9D1BC9E656D8}';
    IntfIID:   '{CF1B2DFF-EF65-472A-8BA0-19BD6232C866}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TOpcBrowseNodeElement.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _OpcBrowseNodeElement;
  end;
end;

procedure TOpcBrowseNodeElement.ConnectTo(svrIntf: _OpcBrowseNodeElement);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TOpcBrowseNodeElement.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TOpcBrowseNodeElement.GetDefaultInterface: _OpcBrowseNodeElement;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TOpcBrowseNodeElement.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TOpcBrowseNodeElement.Destroy;
begin
  inherited Destroy;
end;

function TOpcBrowseNodeElement.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TOpcBrowseNodeElement.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TOpcBrowseNodeElement.Get_ComputerElement: _ComputerElement;
begin
  Result := DefaultInterface.ComputerElement;
end;

procedure TOpcBrowseNodeElement._Set_ComputerElement(const pRetVal: _ComputerElement);
begin
  DefaultInterface.ComputerElement := pRetVal;
end;

function TOpcBrowseNodeElement.Get_ServerElement: _ServerElement;
begin
  Result := DefaultInterface.ServerElement;
end;

procedure TOpcBrowseNodeElement._Set_ServerElement(const pRetVal: _ServerElement);
begin
  DefaultInterface.ServerElement := pRetVal;
end;

function TOpcBrowseNodeElement.Get_DANodeElement: _DANodeElement;
begin
  Result := DefaultInterface.DANodeElement;
end;

procedure TOpcBrowseNodeElement._Set_DANodeElement(const pRetVal: _DANodeElement);
begin
  DefaultInterface.DANodeElement := pRetVal;
end;

function TOpcBrowseNodeElement.Get_DAPropertyElement: _DAPropertyElement;
begin
  Result := DefaultInterface.DAPropertyElement;
end;

procedure TOpcBrowseNodeElement._Set_DAPropertyElement(const pRetVal: _DAPropertyElement);
begin
  DefaultInterface.DAPropertyElement := pRetVal;
end;

function TOpcBrowseNodeElement.Get_AECategoryElement: _AECategoryElement;
begin
  Result := DefaultInterface.AECategoryElement;
end;

procedure TOpcBrowseNodeElement._Set_AECategoryElement(const pRetVal: _AECategoryElement);
begin
  DefaultInterface.AECategoryElement := pRetVal;
end;

function TOpcBrowseNodeElement.Get_AEAttributeElement: _AEAttributeElement;
begin
  Result := DefaultInterface.AEAttributeElement;
end;

procedure TOpcBrowseNodeElement._Set_AEAttributeElement(const pRetVal: _AEAttributeElement);
begin
  DefaultInterface.AEAttributeElement := pRetVal;
end;

function TOpcBrowseNodeElement.Get_AEConditionElement: _AEConditionElement;
begin
  Result := DefaultInterface.AEConditionElement;
end;

procedure TOpcBrowseNodeElement._Set_AEConditionElement(const pRetVal: _AEConditionElement);
begin
  DefaultInterface.AEConditionElement := pRetVal;
end;

function TOpcBrowseNodeElement.Get_AESubconditionElement: _AESubconditionElement;
begin
  Result := DefaultInterface.AESubconditionElement;
end;

procedure TOpcBrowseNodeElement._Set_AESubconditionElement(const pRetVal: _AESubconditionElement);
begin
  DefaultInterface.AESubconditionElement := pRetVal;
end;

function TOpcBrowseNodeElement.Get_AENodeElement: _AENodeElement;
begin
  Result := DefaultInterface.AENodeElement;
end;

procedure TOpcBrowseNodeElement._Set_AENodeElement(const pRetVal: _AENodeElement);
begin
  DefaultInterface.AENodeElement := pRetVal;
end;

function TOpcBrowseNodeElement.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TOpcBrowseNodeElement.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TOpcBrowseNodeElement.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TOpcBrowseNodeElement.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

class function CoOpcBrowseNodeElementCollection.Create: _OpcBrowseNodeElementCollection;
begin
  Result := CreateComObject(CLASS_OpcBrowseNodeElementCollection) as _OpcBrowseNodeElementCollection;
end;

class function CoOpcBrowseNodeElementCollection.CreateRemote(const MachineName: string): _OpcBrowseNodeElementCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OpcBrowseNodeElementCollection) as _OpcBrowseNodeElementCollection;
end;

procedure TOpcBrowseNodeElementCollection.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{8F0517E4-6B9C-4BE7-911D-D8607312B35E}';
    IntfIID:   '{24D5CF0C-88BF-446B-BA78-BBDC022D1EBE}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TOpcBrowseNodeElementCollection.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _OpcBrowseNodeElementCollection;
  end;
end;

procedure TOpcBrowseNodeElementCollection.ConnectTo(svrIntf: _OpcBrowseNodeElementCollection);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TOpcBrowseNodeElementCollection.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TOpcBrowseNodeElementCollection.GetDefaultInterface: _OpcBrowseNodeElementCollection;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TOpcBrowseNodeElementCollection.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TOpcBrowseNodeElementCollection.Destroy;
begin
  inherited Destroy;
end;

function TOpcBrowseNodeElementCollection.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TOpcBrowseNodeElementCollection.Get_Item(index: Integer): _OpcBrowseNodeElement;
begin
  Result := DefaultInterface.Item[index];
end;

procedure TOpcBrowseNodeElementCollection._Set_Item(index: Integer; 
                                                    const pRetVal: _OpcBrowseNodeElement);
begin
  DefaultInterface.Item[index] := pRetVal;
end;

function TOpcBrowseNodeElementCollection.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TOpcBrowseNodeElementCollection.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TOpcBrowseNodeElementCollection.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TOpcBrowseNodeElementCollection.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TOpcBrowseNodeElementCollection.GetEnumerator: IEnumVARIANT;
begin
  Result := DefaultInterface.GetEnumerator;
end;

procedure TOpcBrowseNodeElementCollection.Add(Item: OleVariant);
begin
  DefaultInterface.Add(Item);
end;

procedure TOpcBrowseNodeElementCollection.Clear;
begin
  DefaultInterface.Clear;
end;

function TOpcBrowseNodeElementCollection.Contains(Item: OleVariant): WordBool;
begin
  Result := DefaultInterface.Contains(Item);
end;

function TOpcBrowseNodeElementCollection.IndexOf(Item: OleVariant): Integer;
begin
  Result := DefaultInterface.IndexOf(Item);
end;

procedure TOpcBrowseNodeElementCollection.Insert(index: Integer; Item: OleVariant);
begin
  DefaultInterface.Insert(index, Item);
end;

function TOpcBrowseNodeElementCollection.Remove(Item: OleVariant): WordBool;
begin
  Result := DefaultInterface.Remove(Item);
end;

procedure TOpcBrowseNodeElementCollection.RemoveAt(index: Integer);
begin
  DefaultInterface.RemoveAt(index);
end;

class function CoOpcBrowseOutputs.Create: _OpcBrowseOutputs;
begin
  Result := CreateComObject(CLASS_OpcBrowseOutputs) as _OpcBrowseOutputs;
end;

class function CoOpcBrowseOutputs.CreateRemote(const MachineName: string): _OpcBrowseOutputs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OpcBrowseOutputs) as _OpcBrowseOutputs;
end;

procedure TOpcBrowseOutputs.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{C6105D9F-6066-44F3-A72E-A87DB632595A}';
    IntfIID:   '{361172AA-7D78-48B9-87D2-C0908E70FD1E}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TOpcBrowseOutputs.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _OpcBrowseOutputs;
  end;
end;

procedure TOpcBrowseOutputs.ConnectTo(svrIntf: _OpcBrowseOutputs);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TOpcBrowseOutputs.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TOpcBrowseOutputs.GetDefaultInterface: _OpcBrowseOutputs;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TOpcBrowseOutputs.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TOpcBrowseOutputs.Destroy;
begin
  inherited Destroy;
end;

function TOpcBrowseOutputs.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TOpcBrowseOutputs.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TOpcBrowseOutputs.Get_CurrentNodeElement: _OpcBrowseNodeElement;
begin
  Result := DefaultInterface.CurrentNodeElement;
end;

procedure TOpcBrowseOutputs._Set_CurrentNodeElement(const pRetVal: _OpcBrowseNodeElement);
begin
  DefaultInterface.CurrentNodeElement := pRetVal;
end;

function TOpcBrowseOutputs.Get_SelectionElements: _OpcBrowseNodeElementCollection;
begin
  Result := DefaultInterface.SelectionElements;
end;

function TOpcBrowseOutputs.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TOpcBrowseOutputs.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TOpcBrowseOutputs.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

function TOpcBrowseOutputs.Clone: OleVariant;
begin
  Result := DefaultInterface.Clone;
end;

class function CoOpcComputerAndServerDialog.Create: _OpcComputerAndServerDialog;
begin
  Result := CreateComObject(CLASS_OpcComputerAndServerDialog) as _OpcComputerAndServerDialog;
end;

class function CoOpcComputerAndServerDialog.CreateRemote(const MachineName: string): _OpcComputerAndServerDialog;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OpcComputerAndServerDialog) as _OpcComputerAndServerDialog;
end;

procedure TOpcComputerAndServerDialog.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D3D40A97-847B-4E86-84C3-1AE9DB949218}';
    IntfIID:   '{B27210A2-2E46-4417-B549-714B50BC7C86}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TOpcComputerAndServerDialog.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _OpcComputerAndServerDialog;
  end;
end;

procedure TOpcComputerAndServerDialog.ConnectTo(svrIntf: _OpcComputerAndServerDialog);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TOpcComputerAndServerDialog.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TOpcComputerAndServerDialog.GetDefaultInterface: _OpcComputerAndServerDialog;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TOpcComputerAndServerDialog.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TOpcComputerAndServerDialog.Destroy;
begin
  inherited Destroy;
end;

function TOpcComputerAndServerDialog.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TOpcComputerAndServerDialog.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TOpcComputerAndServerDialog.Get_Tag: OleVariant;
begin
  Result := DefaultInterface.Tag;
end;

procedure TOpcComputerAndServerDialog._Set_Tag(pRetVal: OleVariant);
begin
  DefaultInterface.Tag := pRetVal;
end;

function TOpcComputerAndServerDialog.Get_RetainAppearance: WordBool;
begin
  Result := DefaultInterface.RetainAppearance;
end;

procedure TOpcComputerAndServerDialog.Set_RetainAppearance(pRetVal: WordBool);
begin
  DefaultInterface.RetainAppearance := pRetVal;
end;

function TOpcComputerAndServerDialog.Get_SizeFactor: SizeF;
begin
  Result := DefaultInterface.SizeFactor;
end;

procedure TOpcComputerAndServerDialog.Set_SizeFactor(pRetVal: SizeF);
begin
  DefaultInterface.SizeFactor := pRetVal;
end;

function TOpcComputerAndServerDialog.Get_SizeFactorName: WideString;
begin
  Result := DefaultInterface.SizeFactorName;
end;

procedure TOpcComputerAndServerDialog.Set_SizeFactorName(const pRetVal: WideString);
begin
  DefaultInterface.SizeFactorName := pRetVal;
end;

function TOpcComputerAndServerDialog.Get_AEClientSelector: _EasyAEClientSelector;
begin
  Result := DefaultInterface.AEClientSelector;
end;

procedure TOpcComputerAndServerDialog._Set_AEClientSelector(const pRetVal: _EasyAEClientSelector);
begin
  DefaultInterface.AEClientSelector := pRetVal;
end;

function TOpcComputerAndServerDialog.Get_DAClientSelector: _EasyDAClientSelector;
begin
  Result := DefaultInterface.DAClientSelector;
end;

procedure TOpcComputerAndServerDialog._Set_DAClientSelector(const pRetVal: _EasyDAClientSelector);
begin
  DefaultInterface.DAClientSelector := pRetVal;
end;

function TOpcComputerAndServerDialog.Get_ManualNodes: WordBool;
begin
  Result := DefaultInterface.ManualNodes;
end;

procedure TOpcComputerAndServerDialog.Set_ManualNodes(pRetVal: WordBool);
begin
  DefaultInterface.ManualNodes := pRetVal;
end;

function TOpcComputerAndServerDialog.Get_ServerFamilies: ServerFamilies;
begin
  Result := DefaultInterface.ServerFamilies;
end;

procedure TOpcComputerAndServerDialog.Set_ServerFamilies(pRetVal: ServerFamilies);
begin
  DefaultInterface.ServerFamilies := pRetVal;
end;

function TOpcComputerAndServerDialog.Get_ServerDescriptor: _ServerDescriptor;
begin
  Result := DefaultInterface.ServerDescriptor;
end;

procedure TOpcComputerAndServerDialog._Set_ServerDescriptor(const pRetVal: _ServerDescriptor);
begin
  DefaultInterface.ServerDescriptor := pRetVal;
end;

function TOpcComputerAndServerDialog.Get_ComputerElement: _ComputerElement;
begin
  Result := DefaultInterface.ComputerElement;
end;

function TOpcComputerAndServerDialog.Get_ServerElement: _ServerElement;
begin
  Result := DefaultInterface.ServerElement;
end;

function TOpcComputerAndServerDialog.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TOpcComputerAndServerDialog.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TOpcComputerAndServerDialog.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

procedure TOpcComputerAndServerDialog.Reset;
begin
  DefaultInterface.Reset;
end;

function TOpcComputerAndServerDialog.ShowDialog(const owner: IWin32Window): DialogResult;
begin
  Result := DefaultInterface.ShowDialog(owner);
end;

procedure TOpcComputerAndServerDialog.RevertAppearance;
begin
  DefaultInterface.RevertAppearance;
end;

procedure TOpcComputerAndServerDialog.SetTag(Tag: OleVariant);
begin
  DefaultInterface.SetTag(Tag);
end;

class function CoOpcServerDialog.Create: _OpcServerDialog;
begin
  Result := CreateComObject(CLASS_OpcServerDialog) as _OpcServerDialog;
end;

class function CoOpcServerDialog.CreateRemote(const MachineName: string): _OpcServerDialog;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OpcServerDialog) as _OpcServerDialog;
end;

procedure TOpcServerDialog.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{DF678162-A326-4BDF-9427-914A44C51FD2}';
    IntfIID:   '{50F0BA3D-30B6-40C6-882A-323484B9DD4C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TOpcServerDialog.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _OpcServerDialog;
  end;
end;

procedure TOpcServerDialog.ConnectTo(svrIntf: _OpcServerDialog);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TOpcServerDialog.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TOpcServerDialog.GetDefaultInterface: _OpcServerDialog;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TOpcServerDialog.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TOpcServerDialog.Destroy;
begin
  inherited Destroy;
end;

function TOpcServerDialog.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TOpcServerDialog.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TOpcServerDialog.Get_Tag: OleVariant;
begin
  Result := DefaultInterface.Tag;
end;

procedure TOpcServerDialog._Set_Tag(pRetVal: OleVariant);
begin
  DefaultInterface.Tag := pRetVal;
end;

function TOpcServerDialog.Get_RetainAppearance: WordBool;
begin
  Result := DefaultInterface.RetainAppearance;
end;

procedure TOpcServerDialog.Set_RetainAppearance(pRetVal: WordBool);
begin
  DefaultInterface.RetainAppearance := pRetVal;
end;

function TOpcServerDialog.Get_SizeFactor: SizeF;
begin
  Result := DefaultInterface.SizeFactor;
end;

procedure TOpcServerDialog.Set_SizeFactor(pRetVal: SizeF);
begin
  DefaultInterface.SizeFactor := pRetVal;
end;

function TOpcServerDialog.Get_SizeFactorName: WideString;
begin
  Result := DefaultInterface.SizeFactorName;
end;

procedure TOpcServerDialog.Set_SizeFactorName(const pRetVal: WideString);
begin
  DefaultInterface.SizeFactorName := pRetVal;
end;

function TOpcServerDialog.Get_AEClientSelector: _EasyAEClientSelector;
begin
  Result := DefaultInterface.AEClientSelector;
end;

procedure TOpcServerDialog._Set_AEClientSelector(const pRetVal: _EasyAEClientSelector);
begin
  DefaultInterface.AEClientSelector := pRetVal;
end;

function TOpcServerDialog.Get_DAClientSelector: _EasyDAClientSelector;
begin
  Result := DefaultInterface.DAClientSelector;
end;

procedure TOpcServerDialog._Set_DAClientSelector(const pRetVal: _EasyDAClientSelector);
begin
  DefaultInterface.DAClientSelector := pRetVal;
end;

function TOpcServerDialog.Get_ServerFamilies: ServerFamilies;
begin
  Result := DefaultInterface.ServerFamilies;
end;

procedure TOpcServerDialog.Set_ServerFamilies(pRetVal: ServerFamilies);
begin
  DefaultInterface.ServerFamilies := pRetVal;
end;

function TOpcServerDialog.Get_Location: WideString;
begin
  Result := DefaultInterface.Location;
end;

procedure TOpcServerDialog.Set_Location(const pRetVal: WideString);
begin
  DefaultInterface.Location := pRetVal;
end;

function TOpcServerDialog.Get_ServerClass: WideString;
begin
  Result := DefaultInterface.ServerClass;
end;

procedure TOpcServerDialog.Set_ServerClass(const pRetVal: WideString);
begin
  DefaultInterface.ServerClass := pRetVal;
end;

function TOpcServerDialog.Get_ServerProgram: WideString;
begin
  Result := DefaultInterface.ServerProgram;
end;

procedure TOpcServerDialog.Set_ServerProgram(const pRetVal: WideString);
begin
  DefaultInterface.ServerProgram := pRetVal;
end;

function TOpcServerDialog.Get_UrlString: WideString;
begin
  Result := DefaultInterface.UrlString;
end;

procedure TOpcServerDialog.Set_UrlString(const pRetVal: WideString);
begin
  DefaultInterface.UrlString := pRetVal;
end;

function TOpcServerDialog.Get_ServerElement: _ServerElement;
begin
  Result := DefaultInterface.ServerElement;
end;

function TOpcServerDialog.Get_Technologies: OpcTechnologies;
begin
  Result := DefaultInterface.Technologies;
end;

procedure TOpcServerDialog.Set_Technologies(pRetVal: OpcTechnologies);
begin
  DefaultInterface.Technologies := pRetVal;
end;

function TOpcServerDialog.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TOpcServerDialog.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TOpcServerDialog.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

procedure TOpcServerDialog.Reset;
begin
  DefaultInterface.Reset;
end;

function TOpcServerDialog.ShowDialog(const owner: IWin32Window): DialogResult;
begin
  Result := DefaultInterface.ShowDialog(owner);
end;

procedure TOpcServerDialog.RevertAppearance;
begin
  DefaultInterface.RevertAppearance;
end;

procedure TOpcServerDialog.SetTag(Tag: OleVariant);
begin
  DefaultInterface.SetTag(Tag);
end;

class function CoDAItemDialog.Create: _DAItemDialog;
begin
  Result := CreateComObject(CLASS_DAItemDialog) as _DAItemDialog;
end;

class function CoDAItemDialog.CreateRemote(const MachineName: string): _DAItemDialog;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAItemDialog) as _DAItemDialog;
end;

procedure TDAItemDialog.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{211F7E5C-0B3D-4535-AB3D-909D2046B772}';
    IntfIID:   '{574447AC-4A29-45F6-9AD0-0093FB9170B4}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDAItemDialog.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _DAItemDialog;
  end;
end;

procedure TDAItemDialog.ConnectTo(svrIntf: _DAItemDialog);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDAItemDialog.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDAItemDialog.GetDefaultInterface: _DAItemDialog;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TDAItemDialog.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TDAItemDialog.Destroy;
begin
  inherited Destroy;
end;

function TDAItemDialog.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TDAItemDialog.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TDAItemDialog.Get_Tag: OleVariant;
begin
  Result := DefaultInterface.Tag;
end;

procedure TDAItemDialog._Set_Tag(pRetVal: OleVariant);
begin
  DefaultInterface.Tag := pRetVal;
end;

function TDAItemDialog.Get_RetainAppearance: WordBool;
begin
  Result := DefaultInterface.RetainAppearance;
end;

procedure TDAItemDialog.Set_RetainAppearance(pRetVal: WordBool);
begin
  DefaultInterface.RetainAppearance := pRetVal;
end;

function TDAItemDialog.Get_SizeFactor: SizeF;
begin
  Result := DefaultInterface.SizeFactor;
end;

procedure TDAItemDialog.Set_SizeFactor(pRetVal: SizeF);
begin
  DefaultInterface.SizeFactor := pRetVal;
end;

function TDAItemDialog.Get_SizeFactorName: WideString;
begin
  Result := DefaultInterface.SizeFactorName;
end;

procedure TDAItemDialog.Set_SizeFactorName(const pRetVal: WideString);
begin
  DefaultInterface.SizeFactorName := pRetVal;
end;

function TDAItemDialog.Get_ClientSelector: _EasyDAClientSelector;
begin
  Result := DefaultInterface.ClientSelector;
end;

procedure TDAItemDialog._Set_ClientSelector(const pRetVal: _EasyDAClientSelector);
begin
  DefaultInterface.ClientSelector := pRetVal;
end;

function TDAItemDialog.Get_MultiSelect: WordBool;
begin
  Result := DefaultInterface.MultiSelect;
end;

procedure TDAItemDialog.Set_MultiSelect(pRetVal: WordBool);
begin
  DefaultInterface.MultiSelect := pRetVal;
end;

function TDAItemDialog.Get_ServerDescriptor: _ServerDescriptor;
begin
  Result := DefaultInterface.ServerDescriptor;
end;

procedure TDAItemDialog._Set_ServerDescriptor(const pRetVal: _ServerDescriptor);
begin
  DefaultInterface.ServerDescriptor := pRetVal;
end;

function TDAItemDialog.Get_NodeDescriptor: _DANodeDescriptor;
begin
  Result := DefaultInterface.NodeDescriptor;
end;

procedure TDAItemDialog._Set_NodeDescriptor(const pRetVal: _DANodeDescriptor);
begin
  DefaultInterface.NodeDescriptor := pRetVal;
end;

function TDAItemDialog.Get_NodeDescriptors: PSafeArray;
begin
  Result := DefaultInterface.NodeDescriptors;
end;

procedure TDAItemDialog.Set_NodeDescriptors(pRetVal: PSafeArray);
begin
  DefaultInterface.NodeDescriptors := pRetVal;
end;

function TDAItemDialog.Get_NodeElement: _DANodeElement;
begin
  Result := DefaultInterface.NodeElement;
end;

function TDAItemDialog.Get_NodeElements: PSafeArray;
begin
  Result := DefaultInterface.NodeElements;
end;

function TDAItemDialog.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TDAItemDialog.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TDAItemDialog.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

procedure TDAItemDialog.Reset;
begin
  DefaultInterface.Reset;
end;

function TDAItemDialog.ShowDialog(const owner: IWin32Window): DialogResult;
begin
  Result := DefaultInterface.ShowDialog(owner);
end;

procedure TDAItemDialog.RevertAppearance;
begin
  DefaultInterface.RevertAppearance;
end;

procedure TDAItemDialog.SetTag(Tag: OleVariant);
begin
  DefaultInterface.SetTag(Tag);
end;

procedure TDAItemDialog.SetNodeDescriptors(var NodeDescriptors: PSafeArray);
begin
  DefaultInterface.SetNodeDescriptors(NodeDescriptors);
end;

class function CoDAPropertyDialog.Create: _DAPropertyDialog;
begin
  Result := CreateComObject(CLASS_DAPropertyDialog) as _DAPropertyDialog;
end;

class function CoDAPropertyDialog.CreateRemote(const MachineName: string): _DAPropertyDialog;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAPropertyDialog) as _DAPropertyDialog;
end;

procedure TDAPropertyDialog.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{AF3A7D04-C2CB-4BCF-97DA-11AAFC09B004}';
    IntfIID:   '{9E32D282-E50A-4392-A25C-4A0ECC3B8C5B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDAPropertyDialog.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _DAPropertyDialog;
  end;
end;

procedure TDAPropertyDialog.ConnectTo(svrIntf: _DAPropertyDialog);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDAPropertyDialog.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDAPropertyDialog.GetDefaultInterface: _DAPropertyDialog;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TDAPropertyDialog.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TDAPropertyDialog.Destroy;
begin
  inherited Destroy;
end;

function TDAPropertyDialog.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TDAPropertyDialog.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TDAPropertyDialog.Get_Tag: OleVariant;
begin
  Result := DefaultInterface.Tag;
end;

procedure TDAPropertyDialog._Set_Tag(pRetVal: OleVariant);
begin
  DefaultInterface.Tag := pRetVal;
end;

function TDAPropertyDialog.Get_RetainAppearance: WordBool;
begin
  Result := DefaultInterface.RetainAppearance;
end;

procedure TDAPropertyDialog.Set_RetainAppearance(pRetVal: WordBool);
begin
  DefaultInterface.RetainAppearance := pRetVal;
end;

function TDAPropertyDialog.Get_SizeFactor: SizeF;
begin
  Result := DefaultInterface.SizeFactor;
end;

procedure TDAPropertyDialog.Set_SizeFactor(pRetVal: SizeF);
begin
  DefaultInterface.SizeFactor := pRetVal;
end;

function TDAPropertyDialog.Get_SizeFactorName: WideString;
begin
  Result := DefaultInterface.SizeFactorName;
end;

procedure TDAPropertyDialog.Set_SizeFactorName(const pRetVal: WideString);
begin
  DefaultInterface.SizeFactorName := pRetVal;
end;

function TDAPropertyDialog.Get_ClientSelector: _EasyDAClientSelector;
begin
  Result := DefaultInterface.ClientSelector;
end;

procedure TDAPropertyDialog._Set_ClientSelector(const pRetVal: _EasyDAClientSelector);
begin
  DefaultInterface.ClientSelector := pRetVal;
end;

function TDAPropertyDialog.Get_ServerDescriptor: _ServerDescriptor;
begin
  Result := DefaultInterface.ServerDescriptor;
end;

procedure TDAPropertyDialog._Set_ServerDescriptor(const pRetVal: _ServerDescriptor);
begin
  DefaultInterface.ServerDescriptor := pRetVal;
end;

function TDAPropertyDialog.Get_NodeDescriptor: _DANodeDescriptor;
begin
  Result := DefaultInterface.NodeDescriptor;
end;

procedure TDAPropertyDialog._Set_NodeDescriptor(const pRetVal: _DANodeDescriptor);
begin
  DefaultInterface.NodeDescriptor := pRetVal;
end;

function TDAPropertyDialog.Get_PropertyDescriptor: _DAPropertyDescriptor;
begin
  Result := DefaultInterface.PropertyDescriptor;
end;

procedure TDAPropertyDialog._Set_PropertyDescriptor(const pRetVal: _DAPropertyDescriptor);
begin
  DefaultInterface.PropertyDescriptor := pRetVal;
end;

function TDAPropertyDialog.Get_PropertyElement: _DAPropertyElement;
begin
  Result := DefaultInterface.PropertyElement;
end;

function TDAPropertyDialog.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TDAPropertyDialog.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TDAPropertyDialog.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

procedure TDAPropertyDialog.Reset;
begin
  DefaultInterface.Reset;
end;

function TDAPropertyDialog.ShowDialog(const owner: IWin32Window): DialogResult;
begin
  Result := DefaultInterface.ShowDialog(owner);
end;

procedure TDAPropertyDialog.RevertAppearance;
begin
  DefaultInterface.RevertAppearance;
end;

procedure TDAPropertyDialog.SetTag(Tag: OleVariant);
begin
  DefaultInterface.SetTag(Tag);
end;

class function CoAEAttributeDialog.Create: _AEAttributeDialog;
begin
  Result := CreateComObject(CLASS_AEAttributeDialog) as _AEAttributeDialog;
end;

class function CoAEAttributeDialog.CreateRemote(const MachineName: string): _AEAttributeDialog;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AEAttributeDialog) as _AEAttributeDialog;
end;

procedure TAEAttributeDialog.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{E88F9177-F957-4612-94FA-DF9DCEA09779}';
    IntfIID:   '{F7B1A96C-69AB-4410-A691-CCA527B641DD}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TAEAttributeDialog.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _AEAttributeDialog;
  end;
end;

procedure TAEAttributeDialog.ConnectTo(svrIntf: _AEAttributeDialog);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TAEAttributeDialog.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TAEAttributeDialog.GetDefaultInterface: _AEAttributeDialog;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TAEAttributeDialog.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TAEAttributeDialog.Destroy;
begin
  inherited Destroy;
end;

function TAEAttributeDialog.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TAEAttributeDialog.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TAEAttributeDialog.Get_Tag: OleVariant;
begin
  Result := DefaultInterface.Tag;
end;

procedure TAEAttributeDialog._Set_Tag(pRetVal: OleVariant);
begin
  DefaultInterface.Tag := pRetVal;
end;

function TAEAttributeDialog.Get_RetainAppearance: WordBool;
begin
  Result := DefaultInterface.RetainAppearance;
end;

procedure TAEAttributeDialog.Set_RetainAppearance(pRetVal: WordBool);
begin
  DefaultInterface.RetainAppearance := pRetVal;
end;

function TAEAttributeDialog.Get_SizeFactor: SizeF;
begin
  Result := DefaultInterface.SizeFactor;
end;

procedure TAEAttributeDialog.Set_SizeFactor(pRetVal: SizeF);
begin
  DefaultInterface.SizeFactor := pRetVal;
end;

function TAEAttributeDialog.Get_SizeFactorName: WideString;
begin
  Result := DefaultInterface.SizeFactorName;
end;

procedure TAEAttributeDialog.Set_SizeFactorName(const pRetVal: WideString);
begin
  DefaultInterface.SizeFactorName := pRetVal;
end;

function TAEAttributeDialog.Get_ClientSelector: _EasyAEClientSelector;
begin
  Result := DefaultInterface.ClientSelector;
end;

procedure TAEAttributeDialog._Set_ClientSelector(const pRetVal: _EasyAEClientSelector);
begin
  DefaultInterface.ClientSelector := pRetVal;
end;

function TAEAttributeDialog.Get_MultiSelect: WordBool;
begin
  Result := DefaultInterface.MultiSelect;
end;

procedure TAEAttributeDialog.Set_MultiSelect(pRetVal: WordBool);
begin
  DefaultInterface.MultiSelect := pRetVal;
end;

function TAEAttributeDialog.Get_ServerDescriptor: _ServerDescriptor;
begin
  Result := DefaultInterface.ServerDescriptor;
end;

procedure TAEAttributeDialog._Set_ServerDescriptor(const pRetVal: _ServerDescriptor);
begin
  DefaultInterface.ServerDescriptor := pRetVal;
end;

function TAEAttributeDialog.Get_CategoryId: Integer;
begin
  Result := DefaultInterface.CategoryId;
end;

procedure TAEAttributeDialog.Set_CategoryId(pRetVal: Integer);
begin
  DefaultInterface.CategoryId := pRetVal;
end;

function TAEAttributeDialog.Get_AttributeId: Integer;
begin
  Result := DefaultInterface.AttributeId;
end;

procedure TAEAttributeDialog.Set_AttributeId(pRetVal: Integer);
begin
  DefaultInterface.AttributeId := pRetVal;
end;

function TAEAttributeDialog.Get_AttributeIds: _Int32Collection;
begin
  Result := DefaultInterface.AttributeIds;
end;

procedure TAEAttributeDialog._Set_AttributeIds(const pRetVal: _Int32Collection);
begin
  DefaultInterface.AttributeIds := pRetVal;
end;

function TAEAttributeDialog.Get_AttributeElement: _AEAttributeElement;
begin
  Result := DefaultInterface.AttributeElement;
end;

function TAEAttributeDialog.Get_AttributeElements: _AEAttributeElementCollection;
begin
  Result := DefaultInterface.AttributeElements;
end;

function TAEAttributeDialog.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TAEAttributeDialog.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TAEAttributeDialog.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

procedure TAEAttributeDialog.Reset;
begin
  DefaultInterface.Reset;
end;

function TAEAttributeDialog.ShowDialog(const owner: IWin32Window): DialogResult;
begin
  Result := DefaultInterface.ShowDialog(owner);
end;

procedure TAEAttributeDialog.RevertAppearance;
begin
  DefaultInterface.RevertAppearance;
end;

procedure TAEAttributeDialog.SetTag(Tag: OleVariant);
begin
  DefaultInterface.SetTag(Tag);
end;

class function CoAECategoryConditionDialog.Create: _AECategoryConditionDialog;
begin
  Result := CreateComObject(CLASS_AECategoryConditionDialog) as _AECategoryConditionDialog;
end;

class function CoAECategoryConditionDialog.CreateRemote(const MachineName: string): _AECategoryConditionDialog;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AECategoryConditionDialog) as _AECategoryConditionDialog;
end;

procedure TAECategoryConditionDialog.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{AF092523-2775-4EC6-A912-4B047711E11D}';
    IntfIID:   '{9B7A7BAD-7578-4893-B948-BF334A94F3AF}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TAECategoryConditionDialog.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _AECategoryConditionDialog;
  end;
end;

procedure TAECategoryConditionDialog.ConnectTo(svrIntf: _AECategoryConditionDialog);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TAECategoryConditionDialog.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TAECategoryConditionDialog.GetDefaultInterface: _AECategoryConditionDialog;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TAECategoryConditionDialog.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TAECategoryConditionDialog.Destroy;
begin
  inherited Destroy;
end;

function TAECategoryConditionDialog.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TAECategoryConditionDialog.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TAECategoryConditionDialog.Get_Tag: OleVariant;
begin
  Result := DefaultInterface.Tag;
end;

procedure TAECategoryConditionDialog._Set_Tag(pRetVal: OleVariant);
begin
  DefaultInterface.Tag := pRetVal;
end;

function TAECategoryConditionDialog.Get_RetainAppearance: WordBool;
begin
  Result := DefaultInterface.RetainAppearance;
end;

procedure TAECategoryConditionDialog.Set_RetainAppearance(pRetVal: WordBool);
begin
  DefaultInterface.RetainAppearance := pRetVal;
end;

function TAECategoryConditionDialog.Get_SizeFactor: SizeF;
begin
  Result := DefaultInterface.SizeFactor;
end;

procedure TAECategoryConditionDialog.Set_SizeFactor(pRetVal: SizeF);
begin
  DefaultInterface.SizeFactor := pRetVal;
end;

function TAECategoryConditionDialog.Get_SizeFactorName: WideString;
begin
  Result := DefaultInterface.SizeFactorName;
end;

procedure TAECategoryConditionDialog.Set_SizeFactorName(const pRetVal: WideString);
begin
  DefaultInterface.SizeFactorName := pRetVal;
end;

function TAECategoryConditionDialog.Get_ClientSelector: _EasyAEClientSelector;
begin
  Result := DefaultInterface.ClientSelector;
end;

procedure TAECategoryConditionDialog._Set_ClientSelector(const pRetVal: _EasyAEClientSelector);
begin
  DefaultInterface.ClientSelector := pRetVal;
end;

function TAECategoryConditionDialog.Get_ServerDescriptor: _ServerDescriptor;
begin
  Result := DefaultInterface.ServerDescriptor;
end;

procedure TAECategoryConditionDialog._Set_ServerDescriptor(const pRetVal: _ServerDescriptor);
begin
  DefaultInterface.ServerDescriptor := pRetVal;
end;

function TAECategoryConditionDialog.Get_CategoryId: Integer;
begin
  Result := DefaultInterface.CategoryId;
end;

procedure TAECategoryConditionDialog.Set_CategoryId(pRetVal: Integer);
begin
  DefaultInterface.CategoryId := pRetVal;
end;

function TAECategoryConditionDialog.Get_ConditionName: WideString;
begin
  Result := DefaultInterface.ConditionName;
end;

procedure TAECategoryConditionDialog.Set_ConditionName(const pRetVal: WideString);
begin
  DefaultInterface.ConditionName := pRetVal;
end;

function TAECategoryConditionDialog.Get_ConditionElement: _AEConditionElement;
begin
  Result := DefaultInterface.ConditionElement;
end;

function TAECategoryConditionDialog.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TAECategoryConditionDialog.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TAECategoryConditionDialog.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

procedure TAECategoryConditionDialog.Reset;
begin
  DefaultInterface.Reset;
end;

function TAECategoryConditionDialog.ShowDialog(const owner: IWin32Window): DialogResult;
begin
  Result := DefaultInterface.ShowDialog(owner);
end;

procedure TAECategoryConditionDialog.RevertAppearance;
begin
  DefaultInterface.RevertAppearance;
end;

procedure TAECategoryConditionDialog.SetTag(Tag: OleVariant);
begin
  DefaultInterface.SetTag(Tag);
end;

class function CoAECategoryDialog.Create: _AECategoryDialog;
begin
  Result := CreateComObject(CLASS_AECategoryDialog) as _AECategoryDialog;
end;

class function CoAECategoryDialog.CreateRemote(const MachineName: string): _AECategoryDialog;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AECategoryDialog) as _AECategoryDialog;
end;

procedure TAECategoryDialog.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{B1C4D316-08D7-4CC0-88CC-979AE1455736}';
    IntfIID:   '{DD0372DA-A834-4AD4-85A2-678AF6AA52DD}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TAECategoryDialog.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _AECategoryDialog;
  end;
end;

procedure TAECategoryDialog.ConnectTo(svrIntf: _AECategoryDialog);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TAECategoryDialog.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TAECategoryDialog.GetDefaultInterface: _AECategoryDialog;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TAECategoryDialog.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TAECategoryDialog.Destroy;
begin
  inherited Destroy;
end;

function TAECategoryDialog.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TAECategoryDialog.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TAECategoryDialog.Get_Tag: OleVariant;
begin
  Result := DefaultInterface.Tag;
end;

procedure TAECategoryDialog._Set_Tag(pRetVal: OleVariant);
begin
  DefaultInterface.Tag := pRetVal;
end;

function TAECategoryDialog.Get_RetainAppearance: WordBool;
begin
  Result := DefaultInterface.RetainAppearance;
end;

procedure TAECategoryDialog.Set_RetainAppearance(pRetVal: WordBool);
begin
  DefaultInterface.RetainAppearance := pRetVal;
end;

function TAECategoryDialog.Get_SizeFactor: SizeF;
begin
  Result := DefaultInterface.SizeFactor;
end;

procedure TAECategoryDialog.Set_SizeFactor(pRetVal: SizeF);
begin
  DefaultInterface.SizeFactor := pRetVal;
end;

function TAECategoryDialog.Get_SizeFactorName: WideString;
begin
  Result := DefaultInterface.SizeFactorName;
end;

procedure TAECategoryDialog.Set_SizeFactorName(const pRetVal: WideString);
begin
  DefaultInterface.SizeFactorName := pRetVal;
end;

function TAECategoryDialog.Get_ClientSelector: _EasyAEClientSelector;
begin
  Result := DefaultInterface.ClientSelector;
end;

procedure TAECategoryDialog._Set_ClientSelector(const pRetVal: _EasyAEClientSelector);
begin
  DefaultInterface.ClientSelector := pRetVal;
end;

function TAECategoryDialog.Get_MultiSelect: WordBool;
begin
  Result := DefaultInterface.MultiSelect;
end;

procedure TAECategoryDialog.Set_MultiSelect(pRetVal: WordBool);
begin
  DefaultInterface.MultiSelect := pRetVal;
end;

function TAECategoryDialog.Get_ServerDescriptor: _ServerDescriptor;
begin
  Result := DefaultInterface.ServerDescriptor;
end;

procedure TAECategoryDialog._Set_ServerDescriptor(const pRetVal: _ServerDescriptor);
begin
  DefaultInterface.ServerDescriptor := pRetVal;
end;

function TAECategoryDialog.Get_EventTypes: _AEEventType;
begin
  Result := DefaultInterface.EventTypes;
end;

procedure TAECategoryDialog._Set_EventTypes(const pRetVal: _AEEventType);
begin
  DefaultInterface.EventTypes := pRetVal;
end;

function TAECategoryDialog.Get_CategoryId: Integer;
begin
  Result := DefaultInterface.CategoryId;
end;

procedure TAECategoryDialog.Set_CategoryId(pRetVal: Integer);
begin
  DefaultInterface.CategoryId := pRetVal;
end;

function TAECategoryDialog.Get_CategoryIds: _Int32Collection;
begin
  Result := DefaultInterface.CategoryIds;
end;

procedure TAECategoryDialog._Set_CategoryIds(const pRetVal: _Int32Collection);
begin
  DefaultInterface.CategoryIds := pRetVal;
end;

function TAECategoryDialog.Get_CategoryElements: _AECategoryElementCollection;
begin
  Result := DefaultInterface.CategoryElements;
end;

function TAECategoryDialog.Get_CategoryElement: _AECategoryElement;
begin
  Result := DefaultInterface.CategoryElement;
end;

function TAECategoryDialog.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TAECategoryDialog.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TAECategoryDialog.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

procedure TAECategoryDialog.Reset;
begin
  DefaultInterface.Reset;
end;

function TAECategoryDialog.ShowDialog(const owner: IWin32Window): DialogResult;
begin
  Result := DefaultInterface.ShowDialog(owner);
end;

procedure TAECategoryDialog.RevertAppearance;
begin
  DefaultInterface.RevertAppearance;
end;

procedure TAECategoryDialog.SetTag(Tag: OleVariant);
begin
  DefaultInterface.SetTag(Tag);
end;

class function CoAEAreaOrSourceDialog.Create: _AEAreaOrSourceDialog;
begin
  Result := CreateComObject(CLASS_AEAreaOrSourceDialog) as _AEAreaOrSourceDialog;
end;

class function CoAEAreaOrSourceDialog.CreateRemote(const MachineName: string): _AEAreaOrSourceDialog;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AEAreaOrSourceDialog) as _AEAreaOrSourceDialog;
end;

procedure TAEAreaOrSourceDialog.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{2A807383-2668-4CBD-9662-345168250431}';
    IntfIID:   '{95393EA9-8524-4AE2-A3E5-1B9B63C12BD4}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TAEAreaOrSourceDialog.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _AEAreaOrSourceDialog;
  end;
end;

procedure TAEAreaOrSourceDialog.ConnectTo(svrIntf: _AEAreaOrSourceDialog);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TAEAreaOrSourceDialog.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TAEAreaOrSourceDialog.GetDefaultInterface: _AEAreaOrSourceDialog;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TAEAreaOrSourceDialog.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TAEAreaOrSourceDialog.Destroy;
begin
  inherited Destroy;
end;

function TAEAreaOrSourceDialog.Get_ToString: WideString;
begin
  Result := DefaultInterface.ToString;
end;

function TAEAreaOrSourceDialog.Get_DisplayString: WideString;
begin
  Result := DefaultInterface.DisplayString;
end;

function TAEAreaOrSourceDialog.Get_Tag: OleVariant;
begin
  Result := DefaultInterface.Tag;
end;

procedure TAEAreaOrSourceDialog._Set_Tag(pRetVal: OleVariant);
begin
  DefaultInterface.Tag := pRetVal;
end;

function TAEAreaOrSourceDialog.Get_RetainAppearance: WordBool;
begin
  Result := DefaultInterface.RetainAppearance;
end;

procedure TAEAreaOrSourceDialog.Set_RetainAppearance(pRetVal: WordBool);
begin
  DefaultInterface.RetainAppearance := pRetVal;
end;

function TAEAreaOrSourceDialog.Get_SizeFactor: SizeF;
begin
  Result := DefaultInterface.SizeFactor;
end;

procedure TAEAreaOrSourceDialog.Set_SizeFactor(pRetVal: SizeF);
begin
  DefaultInterface.SizeFactor := pRetVal;
end;

function TAEAreaOrSourceDialog.Get_SizeFactorName: WideString;
begin
  Result := DefaultInterface.SizeFactorName;
end;

procedure TAEAreaOrSourceDialog.Set_SizeFactorName(const pRetVal: WideString);
begin
  DefaultInterface.SizeFactorName := pRetVal;
end;

function TAEAreaOrSourceDialog.Get_ClientSelector: _EasyAEClientSelector;
begin
  Result := DefaultInterface.ClientSelector;
end;

procedure TAEAreaOrSourceDialog._Set_ClientSelector(const pRetVal: _EasyAEClientSelector);
begin
  DefaultInterface.ClientSelector := pRetVal;
end;

function TAEAreaOrSourceDialog.Get_MultiSelect: WordBool;
begin
  Result := DefaultInterface.MultiSelect;
end;

procedure TAEAreaOrSourceDialog.Set_MultiSelect(pRetVal: WordBool);
begin
  DefaultInterface.MultiSelect := pRetVal;
end;

function TAEAreaOrSourceDialog.Get_ServerDescriptor: _ServerDescriptor;
begin
  Result := DefaultInterface.ServerDescriptor;
end;

procedure TAEAreaOrSourceDialog._Set_ServerDescriptor(const pRetVal: _ServerDescriptor);
begin
  DefaultInterface.ServerDescriptor := pRetVal;
end;

function TAEAreaOrSourceDialog.Get_NodeDescriptor: _AENodeDescriptor;
begin
  Result := DefaultInterface.NodeDescriptor;
end;

procedure TAEAreaOrSourceDialog._Set_NodeDescriptor(const pRetVal: _AENodeDescriptor);
begin
  DefaultInterface.NodeDescriptor := pRetVal;
end;

function TAEAreaOrSourceDialog.Get_AreaElements: PSafeArray;
begin
  Result := DefaultInterface.AreaElements;
end;

function TAEAreaOrSourceDialog.Get_NodeElements: PSafeArray;
begin
  Result := DefaultInterface.NodeElements;
end;

function TAEAreaOrSourceDialog.Get_SourceElements: PSafeArray;
begin
  Result := DefaultInterface.SourceElements;
end;

function TAEAreaOrSourceDialog.Equals(obj: OleVariant): WordBool;
begin
  Result := DefaultInterface.Equals(obj);
end;

function TAEAreaOrSourceDialog.GetHashCode: Integer;
begin
  Result := DefaultInterface.GetHashCode;
end;

function TAEAreaOrSourceDialog.GetType: _Type;
begin
  Result := DefaultInterface.GetType;
end;

procedure TAEAreaOrSourceDialog.Reset;
begin
  DefaultInterface.Reset;
end;

function TAEAreaOrSourceDialog.ShowDialog(const owner: IWin32Window): DialogResult;
begin
  Result := DefaultInterface.ShowDialog(owner);
end;

procedure TAEAreaOrSourceDialog.RevertAppearance;
begin
  DefaultInterface.RevertAppearance;
end;

procedure TAEAreaOrSourceDialog.SetTag(Tag: OleVariant);
begin
  DefaultInterface.SetTag(Tag);
end;

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TUABrowseDialog, TUABrowseInputs, TUABrowseInputsOutputs, TUABrowseMode, 
    TUABrowseNodeDescriptor, TUABrowseNodeDescriptorCollection, TUABrowseNodeElement, TUABrowseNodeElementCollection, TUABrowseOutputs, 
    TUADataDialog, TUAEndpointDialog, TUAHostAndEndpointDialog, TOpcBrowseDialog, TOpcBrowseInputs, 
    TOpcBrowseInputsOutputs, TOpcBrowseMode, TOpcBrowseNodeDescriptor, TOpcBrowseNodeDescriptorCollection, TOpcBrowseNodeElement, 
    TOpcBrowseNodeElementCollection, TOpcBrowseOutputs, TOpcComputerAndServerDialog, TOpcServerDialog, TDAItemDialog, 
    TDAPropertyDialog, TAEAttributeDialog, TAECategoryConditionDialog, TAECategoryDialog, TAEAreaOrSourceDialog]);
end;

end.
