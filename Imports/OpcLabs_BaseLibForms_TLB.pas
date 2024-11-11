unit OpcLabs_BaseLibForms_TLB;

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
// File generated on 11/3/2024 2:17:13 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\OPC Labs OPC Studio 2024.2\SDK\lib\OpcLabs.BaseLibForms.tlb (1)
// LIBID: {A0D7CA1E-7D8C-4D31-8ECB-84929E77E331}
// LCID: 0
// Helpfile: 
// HelpString: OPC Labs Base Library Forms
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
//   (3) v2.4 System_Windows_Forms, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.Windows.Forms.tlb)
//   (4) v2.4 System_Drawing, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.Drawing.tlb)
//   (5) v2.4 System, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.tlb)
// Parent TypeLibrary:
//   (0) v5.81 OpcLabs_EasyOpcForms, (C:\Program Files (x86)\OPC Labs OPC Studio 2024.2\SDK\lib\OpcLabs.EasyOpcForms.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, mscorlib_TLB, System.Classes, System.Variants, System.Win.StdVCL, System_Drawing_TLB, System_TLB, System_Windows_Forms_TLB, 
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
  OpcLabs_BaseLibFormsMajorVersion = 5;
  OpcLabs_BaseLibFormsMinorVersion = 81;

  LIBID_OpcLabs_BaseLibForms: TGUID = '{A0D7CA1E-7D8C-4D31-8ECB-84929E77E331}';

  IID__FormCommonDialog: TGUID = '{3DBA1256-F61E-4A70-B54C-6B5D37AAB4DD}';
  IID__SizableCommonDialog: TGUID = '{2D1A7708-B1E5-41A5-963F-8E7AFBCC6E86}';
  IID__ComputerBrowserDialog: TGUID = '{44E3A85F-78F7-42E7-B014-3BA014D94A8E}';
  CLASS_ComputerBrowserDialog: TGUID = '{E33FFD82-3956-4642-8C3B-EC04B9E297B6}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _FormCommonDialog = interface;
  _FormCommonDialogDisp = dispinterface;
  _SizableCommonDialog = interface;
  _SizableCommonDialogDisp = dispinterface;
  _ComputerBrowserDialog = interface;
  _ComputerBrowserDialogDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  ComputerBrowserDialog = _ComputerBrowserDialog;


// *********************************************************************//
// Interface: _FormCommonDialog
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3DBA1256-F61E-4A70-B54C-6B5D37AAB4DD}
// *********************************************************************//
  _FormCommonDialog = interface(IDispatch)
    ['{3DBA1256-F61E-4A70-B54C-6B5D37AAB4DD}']
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
    procedure SetTag(Tag: OleVariant); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
  end;

// *********************************************************************//
// DispIntf:  _FormCommonDialogDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3DBA1256-F61E-4A70-B54C-6B5D37AAB4DD}
// *********************************************************************//
  _FormCommonDialogDisp = dispinterface
    ['{3DBA1256-F61E-4A70-B54C-6B5D37AAB4DD}']
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
    procedure SetTag(Tag: OleVariant); dispid 1610743820;
  end;

// *********************************************************************//
// Interface: _SizableCommonDialog
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2D1A7708-B1E5-41A5-963F-8E7AFBCC6E86}
// *********************************************************************//
  _SizableCommonDialog = interface(IDispatch)
    ['{2D1A7708-B1E5-41A5-963F-8E7AFBCC6E86}']
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
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property RetainAppearance: WordBool read Get_RetainAppearance write Set_RetainAppearance;
    property SizeFactor: SizeF read Get_SizeFactor write Set_SizeFactor;
    property SizeFactorName: WideString read Get_SizeFactorName write Set_SizeFactorName;
  end;

// *********************************************************************//
// DispIntf:  _SizableCommonDialogDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2D1A7708-B1E5-41A5-963F-8E7AFBCC6E86}
// *********************************************************************//
  _SizableCommonDialogDisp = dispinterface
    ['{2D1A7708-B1E5-41A5-963F-8E7AFBCC6E86}']
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
  end;

// *********************************************************************//
// Interface: _ComputerBrowserDialog
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {44E3A85F-78F7-42E7-B014-3BA014D94A8E}
// *********************************************************************//
  _ComputerBrowserDialog = interface(IDispatch)
    ['{44E3A85F-78F7-42E7-B014-3BA014D94A8E}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Tag: OleVariant; safecall;
    procedure _Set_Tag(pRetVal: OleVariant); safecall;
    procedure Reset; safecall;
    function ShowDialog(const owner: IWin32Window): DialogResult; safecall;
    function Get_SelectedName: WideString; safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pRetVal: WideString); safecall;
    procedure SetTag(Tag: OleVariant); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Tag: OleVariant read Get_Tag write _Set_Tag;
    property SelectedName: WideString read Get_SelectedName;
    property Description: WideString read Get_Description write Set_Description;
  end;

// *********************************************************************//
// DispIntf:  _ComputerBrowserDialogDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {44E3A85F-78F7-42E7-B014-3BA014D94A8E}
// *********************************************************************//
  _ComputerBrowserDialogDisp = dispinterface
    ['{44E3A85F-78F7-42E7-B014-3BA014D94A8E}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Tag: OleVariant dispid 1610743813;
    procedure Reset; dispid 1610743815;
    function ShowDialog(const owner: IWin32Window): DialogResult; dispid 1610743816;
    property SelectedName: WideString readonly dispid 1610743817;
    property Description: WideString dispid 1610743818;
    procedure SetTag(Tag: OleVariant); dispid 1610743820;
  end;

// *********************************************************************//
// The Class CoComputerBrowserDialog provides a Create and CreateRemote method to          
// create instances of the default interface _ComputerBrowserDialog exposed by              
// the CoClass ComputerBrowserDialog. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoComputerBrowserDialog = class
    class function Create: _ComputerBrowserDialog;
    class function CreateRemote(const MachineName: string): _ComputerBrowserDialog;
  end;

implementation

uses System.Win.ComObj;

class function CoComputerBrowserDialog.Create: _ComputerBrowserDialog;
begin
  Result := CreateComObject(CLASS_ComputerBrowserDialog) as _ComputerBrowserDialog;
end;

class function CoComputerBrowserDialog.CreateRemote(const MachineName: string): _ComputerBrowserDialog;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ComputerBrowserDialog) as _ComputerBrowserDialog;
end;

end.
