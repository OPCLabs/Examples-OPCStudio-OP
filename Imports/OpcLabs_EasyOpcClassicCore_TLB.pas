unit OpcLabs_EasyOpcClassicCore_TLB;

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
// File generated on 11/3/2024 2:19:22 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\OPC Labs OPC Studio 2024.2\SDK\lib\OpcLabs.EasyOpcClassicCore.tlb (1)
// LIBID: {1F457B45-A4E0-4A92-928F-D1D1ACB67C54}
// LCID: 0
// Helpfile: 
// HelpString: OPC Labs EasyOPC �Classic� Core Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
//   (3) v5.81 OpcLabs_BaseLib, (C:\Program Files (x86)\OPC Labs OPC Studio 2024.2\SDK\lib\OpcLabs.BaseLib.tlb)
// Parent TypeLibrary:
//   (0) v5.81 OpcLabs_EasyOpcClassic, (C:\Program Files (x86)\OPC Labs OPC Studio 2024.2\SDK\lib\OpcLabs.EasyOpcClassic.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, mscorlib_TLB, OpcLabs_BaseLib_TLB, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, 
Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  OpcLabs_EasyOpcClassicCoreMajorVersion = 5;
  OpcLabs_EasyOpcClassicCoreMinorVersion = 81;

  LIBID_OpcLabs_EasyOpcClassicCore: TGUID = '{1F457B45-A4E0-4A92-928F-D1D1ACB67C54}';

  IID__ServerCategories: TGUID = '{B4D14EDE-17C0-4FA3-9A98-C38229D1A70A}';
  IID__NodeDescriptor: TGUID = '{275C63F2-402F-4723-B232-5845517DD66A}';
  IID__ServerDescriptor: TGUID = '{8F84A55F-9C3F-47B6-9949-22AE6AA66288}';
  IID__ServerElement: TGUID = '{2E13A404-1528-4924-9B3B-A906A10E4092}';
  IID__ServerElementCollection: TGUID = '{BEA7BE6F-A4A4-47E5-B392-B05A98423763}';
  IID__OpcResultException: TGUID = '{70F5B05A-7A90-4609-9E3B-854CCF5016D4}';
  IID__OpcException: TGUID = '{91B32D57-6F70-442B-9C14-94D534BC6D1A}';
  CLASS_OpcException: TGUID = '{852E50A5-46D1-46F6-8F03-361925E491CE}';
  IID__EasyClientParameters: TGUID = '{9883E930-D681-4466-B0FC-3C8D12209B6E}';
  IID__EasyEngineParameters: TGUID = '{E3F3B427-05D2-4552-A4A2-989DC1652C00}';
  IID__EasyInstanceParameters: TGUID = '{DC7C6223-9248-476F-B514-8824569AF7A1}';
  IID__EasyMachineParameters: TGUID = '{EB7EA73A-4088-4A54-9623-940F76199F9F}';
  CLASS_EasyClientParameters: TGUID = '{119D4E99-AD6E-4AF6-939D-FC2389243384}';
  CLASS_EasyEngineParameters: TGUID = '{1194FFB4-8AFB-42C6-8BE0-B9043662B41B}';
  CLASS_EasyInstanceParameters: TGUID = '{EC0CB623-B678-48A6-AE66-FC51E4D6B263}';
  CLASS_EasyMachineParameters: TGUID = '{0A13EC70-7D4B-4155-9AD7-C0401DD3DDC1}';
  IID__DAVtq: TGUID = '{53B4DCE5-41BE-4C9D-A55D-04BE52415A81}';
  IID__DAAccessRight: TGUID = '{59598176-113E-4008-B99D-E98F9641E769}';
  IID__DAPropertyId: TGUID = '{84E3053B-C20C-41FC-BDC5-676DC30453F9}';
  IID__DAQuality: TGUID = '{E26981AB-A692-4CBB-8B3D-604DCB78875F}';
  IID__DANodeDescriptor: TGUID = '{8F645250-0B1D-4AC9-9CCF-7109F2F7A0D1}';
  CLASS_DANodeDescriptor: TGUID = '{79B0BBE8-7B89-43D0-8549-2C75FB978EB6}';
  IID__DAPropertyDescriptor: TGUID = '{4087B12A-1625-41A7-A591-177422948084}';
  IID__DABrowseParameters: TGUID = '{902584CE-E9E5-4F44-A419-3BDFEF5D6FE2}';
  IID__DAGroupParameters: TGUID = '{720E4859-3E71-492A-B372-B3DABC352D51}';
  IID__DAReadParameters: TGUID = '{9678F21F-C8DF-4EF1-A3ED-375D35836D6F}';
  IID__DAOptimizerPluginParameters: TGUID = '{62BCF798-6430-438A-84D4-ABCF93F5F9C9}';
  CLASS_DAOptimizerPluginParameters: TGUID = '{604D1739-EE3A-40BC-B866-95AC5691E1D3}';
  IID__DAAutoSubscribingParameters: TGUID = '{77FF5051-2D61-4944-8E8C-165C9251E930}';
  IID__DAParameterBucketingParameters: TGUID = '{0C39832A-300E-420E-B537-E108747524F5}';
  IID__DAParameterRestrictingParameters: TGUID = '{0AA8443B-CA07-4974-94A1-18661DB719DF}';
  IID__DARequestChunkingParameters: TGUID = '{55D02954-0101-448B-BC33-65467EF6BD82}';
  CLASS_DAAutoSubscribingParameters: TGUID = '{917424E6-8F8B-4583-A262-487DB5857892}';
  CLASS_DAParameterBucketingParameters: TGUID = '{79158360-41A2-4072-B6E2-49990EB2B562}';
  CLASS_DAParameterRestrictingParameters: TGUID = '{E598461A-EEAA-49DF-A864-0B228786412F}';
  CLASS_DARequestChunkingParameters: TGUID = '{258E077A-8DC4-42B3-92A5-703F070F304B}';
  IID__DANodeArguments: TGUID = '{A2DBAC49-D05F-485A-B18D-6119B064E71D}';
  IID__DAHandleGroupArguments: TGUID = '{B995E390-8614-4BE8-A4C1-134609EA4A50}';
  IID__DAItemArguments: TGUID = '{A068C3C0-75AB-475C-A3F5-08FE98D5CB92}';
  IID__DAItemGroupArguments: TGUID = '{D394C96F-3774-4BDE-B38D-FA91AA182ADF}';
  IID__DAItemValueArguments: TGUID = '{50BA8F7F-FBAF-4A27-9EA8-FE4658CA7D2F}';
  IID__DAItemVtqArguments: TGUID = '{4CDE6D14-5D3F-4AB3-B305-AA319F43960E}';
  CLASS_DANodeArguments: TGUID = '{EB46B36C-A762-41AE-BF73-D3EF305C6F3F}';
  IID__DAPropertyArguments: TGUID = '{AA0109CF-2A43-43E5-81DB-D0442B0B186E}';
  IID__DAReadItemArguments: TGUID = '{F1406104-BED0-4D5B-9A42-BFBBD3587C67}';
  IID__EasyDAItemSubscriptionArguments: TGUID = '{9745195E-AA4E-4810-9025-2105D6F45DCA}';
  IID__EasyDAItemChangedEventArgs: TGUID = '{A506D7B7-0886-4A2F-AD95-7078D666F812}';
  IID__DANodeElementCollectionResult: TGUID = '{31AE4DE9-BEBB-423F-BFC6-362D235B71FB}';
  IID__DAVtqResult: TGUID = '{D2C93581-1262-4FF7-AF91-C09C5E5412BC}';
  IID__DABrowseArguments: TGUID = '{24D60C77-602C-49AD-B508-5B3405087242}';
  CLASS_DAHandleGroupArguments: TGUID = '{6F5E62C6-3C77-4229-AF01-B27E90F88688}';
  CLASS_DAItemArguments: TGUID = '{248DDD9E-AAF6-4C38-9554-A5CD1B9CF8BE}';
  CLASS_DAItemGroupArguments: TGUID = '{9942854B-9730-4367-85F8-FA53300A4216}';
  CLASS_DAItemValueArguments: TGUID = '{1DAA6BDB-354E-413D-9BBB-1B7CCA230BD9}';
  CLASS_DAItemVtqArguments: TGUID = '{D31DCB89-EF2E-4E3C-85A3-0B813A5DCB10}';
  CLASS_DABrowseArguments: TGUID = '{05A9B1B0-B642-4093-8F94-0E4F86A7F786}';
  CLASS_DANodeElementCollectionResult: TGUID = '{68EACD57-F815-4C99-A22E-A5399F83F37E}';
  CLASS_DAPropertyArguments: TGUID = '{D310A9B5-12AB-4B1C-9D65-801E1336EB8F}';
  CLASS_DAReadItemArguments: TGUID = '{B5DACA52-2B85-4278-81BD-CA4F3386B4FF}';
  CLASS_DAVtqResult: TGUID = '{6075EE51-ED43-48F6-A61C-B7E814D7C7B0}';
  CLASS_EasyDAItemChangedEventArgs: TGUID = '{B93B886F-19E6-4049-9731-2E1DEEC5E0CD}';
  CLASS_EasyDAItemSubscriptionArguments: TGUID = '{161ECAC9-5FE5-411B-92B6-C5A3F2AA2FC4}';
  IID__DAClientMode: TGUID = '{9F0C5C73-73B9-4675-9136-B28020C0C2AF}';
  IID__EasyDAClientHoldPeriods: TGUID = '{2BB466D5-E213-480F-8966-47AC99AAA5CF}';
  IID__EasyDAClientMode: TGUID = '{2F4DD571-2B72-4B1F-BCE6-128D19B8A786}';
  IID__EasyDAClientTimeouts: TGUID = '{A4A4BBC8-F3CA-4AA6-8689-8B876B4AA1F6}';
  IID__EasyDAAdaptableParameters: TGUID = '{29B6A79E-4923-46BF-ABC2-3145F80D2881}';
  IID__EasyDAClientParameters: TGUID = '{01B11212-1C62-4CCE-A841-602B13200F15}';
  IID__EasyDAEngineParameters: TGUID = '{D13AF090-3CB0-4066-8D8D-C43E3D73A2DD}';
  IID__EasyDAInstanceParameters: TGUID = '{6ADD0BDF-1390-423D-992C-4E78A6FE91BF}';
  IID__EasyDASharedParameters: TGUID = '{5650C287-F671-48AC-AFBE-949CD3CD4A28}';
  IID__EasyDATopicParameters: TGUID = '{7B779FF3-1033-48B0-87FD-A543AB12CD34}';
  CLASS_DAClientMode: TGUID = '{093526CF-696F-4986-A4F4-44ED5060AE6B}';
  CLASS_EasyDAAdaptableParameters: TGUID = '{61E463D7-E66B-429C-89FC-C8EEAA086A73}';
  CLASS_EasyDAClientHoldPeriods: TGUID = '{D4F970F7-2E42-4883-996D-928390E5DA13}';
  CLASS_EasyDAClientMode: TGUID = '{0DBCA190-7B05-4122-A10C-956F1622BBB1}';
  CLASS_EasyDAClientParameters: TGUID = '{ECC576D8-A7EC-4485-B4E5-32F927442583}';
  CLASS_EasyDAClientTimeouts: TGUID = '{C125C473-5CE0-42B1-BCA8-0DABB85D796E}';
  CLASS_EasyDAEngineParameters: TGUID = '{AF0219F3-663C-4163-BAB9-07ECEC3BC17D}';
  CLASS_EasyDAInstanceParameters: TGUID = '{F1C78CF6-F18A-43EA-9F74-182CFFE6FAE0}';
  CLASS_EasyDASharedParameters: TGUID = '{2DDD07B1-E93E-4ECF-A88C-3E44AD7300B9}';
  CLASS_EasyDATopicParameters: TGUID = '{14C5FA83-225D-4606-9EF5-B8310659C232}';
  CLASS_DAAccessRight: TGUID = '{66D94E9E-DAAF-4CDB-9E2B-92FF8994A197}';
  CLASS_DABrowseParameters: TGUID = '{662D7CC7-E83C-462E-90B4-6B4351466A5A}';
  CLASS_DAGroupParameters: TGUID = '{9404DAE4-BC34-452D-BE95-DEB4DBEDFFE1}';
  IID__DAItemDescriptor: TGUID = '{734BE223-4ED7-4CAB-A443-015B0C521A44}';
  CLASS_DAItemDescriptor: TGUID = '{523E5903-C1E5-4637-AE1F-9F0A3A5328AD}';
  CLASS_DAPropertyDescriptor: TGUID = '{7838BAB7-D2A5-4860-9B3F-87E4A8298823}';
  CLASS_DAPropertyId: TGUID = '{558D42E1-1548-4E77-B81C-D5D1B3B8E290}';
  CLASS_DAQuality: TGUID = '{71BD12A4-51C0-4CE2-9ADA-B046D638DE9D}';
  CLASS_DAReadParameters: TGUID = '{7C5D5CC3-C969-4CCC-9CCD-96E0C9D1F293}';
  CLASS_DAVtq: TGUID = '{FAA7B8BC-82B6-4BC7-AB7B-C3671D622DE0}';
  IID__DANodeElementCollection: TGUID = '{D31E5208-EA12-40C5-A0BF-FC719EE76F48}';
  IID__DAPropertyElementCollection: TGUID = '{885CD305-2CF6-49B0-9CE5-4A1FE9794374}';
  IID__NodeElement: TGUID = '{82A76A06-81CF-4482-AD47-E091B950FAFF}';
  IID__DAPropertyElement: TGUID = '{2D7C4394-02A6-4488-8859-E4F1B69FC457}';
  IID__DANodeElement: TGUID = '{6417F9C2-4DCF-4D44-BF21-5B0959229784}';
  CLASS_DANodeElementCollection: TGUID = '{CB8E8501-EA6A-4B4A-A915-9F50F041E618}';
  CLASS_DAPropertyElement: TGUID = '{33FF8F12-EF7B-4C54-9467-579C6ABC3EB0}';
  CLASS_DAPropertyElementCollection: TGUID = '{7621DE09-80DC-400B-807F-727B13E116AA}';
  CLASS_NodeDescriptor: TGUID = '{D27B50BB-8E87-42D0-84B8-B764F0927CD9}';
  CLASS_DANodeElement: TGUID = '{AA433535-AA46-4B83-86FB-AD8848EA262A}';
  CLASS_OpcResultException: TGUID = '{13607FEE-F41A-40D7-B9AB-31DB3BF52315}';
  CLASS_ServerCategories: TGUID = '{19B240C8-9F3A-43EF-97ED-EBCFD8A0A583}';
  CLASS_ServerDescriptor: TGUID = '{A3764B1C-E3A6-4046-A3EE-892F3D54B746}';
  CLASS_ServerElement: TGUID = '{A1CE98D7-BA96-4572-9E44-BC2655161D14}';
  CLASS_ServerElementCollection: TGUID = '{1C575C8D-05E2-473B-8933-36F483858985}';
  IID__AEAttributeSetDictionary: TGUID = '{F100F8EF-8CC5-4E49-BC05-0066370CB47B}';
  IID__AEAttributeValueDictionary: TGUID = '{FA4ED2CC-C266-4DCD-9AB8-FB64E75629A0}';
  IID__AEConditionState: TGUID = '{A2307389-54A9-4B4A-AFBD-93687184C59A}';
  IID__AEEventData: TGUID = '{F4249D93-CDB2-43F8-B24A-884548148CCF}';
  IID__AESubscriptionFilter: TGUID = '{B92E22F2-6DA2-4755-9842-3BE9F7139BF1}';
  IID__AEEventType: TGUID = '{CB39EE78-3CFD-4B9A-9064-C07D85D874B5}';
  IID__AENodeDescriptor: TGUID = '{51B70D4E-D4E6-4ADE-8AF4-1348873B213B}';
  IID__AEBrowseParameters: TGUID = '{9DD27D53-A3CB-44BD-BA1E-61E8BD47BC07}';
  IID__AESubscriptionParameters: TGUID = '{F6E3AE64-C2B4-479B-ACB3-EBAB4B348874}';
  IID__AEOptimizerPluginParameters: TGUID = '{B1FBBABF-10D6-49C8-BC61-4C713BE0A299}';
  CLASS_AEOptimizerPluginParameters: TGUID = '{0EB8A7D3-006D-4A53-B903-250231A72299}';
  IID__AENodeArguments: TGUID = '{26992952-9E14-4E9A-8E65-33D27784AA57}';
  IID__AEEventsSubscriptionArguments: TGUID = '{13AF6838-C205-49EE-84F5-D7C997C9D752}';
  CLASS_AENodeArguments: TGUID = '{B4405268-0CF8-4453-BA30-3AC979EF481F}';
  IID__EasyAEEventsSubscriptionArguments: TGUID = '{D3B65F45-3ED9-4482-84F2-E13D0F4F0B3E}';
  IID__EasyAENotificationEventArgs: TGUID = '{615EB036-EF3E-4B3F-8521-120483BF68AC}';
  IID__AENodeElementCollectionResult: TGUID = '{38BD9039-5C18-4C15-96F5-F6114C53E477}';
  IID__AEBrowseArguments: TGUID = '{3EBA0F70-721A-492F-81E2-9CBC7262A756}';
  CLASS_AEEventsSubscriptionArguments: TGUID = '{5C3A4D2E-CFBF-4BEE-8A3D-73D0F22F46BA}';
  CLASS_AEBrowseArguments: TGUID = '{31DEA70F-1E23-4CBC-8229-53304F8F703B}';
  CLASS_AENodeElementCollectionResult: TGUID = '{4DBE7FCC-CCB7-4548-AE4D-909FB883AE72}';
  CLASS_EasyAEEventsSubscriptionArguments: TGUID = '{5F7F0F43-DD9F-4F74-A0F7-90057400D531}';
  CLASS_EasyAENotificationEventArgs: TGUID = '{BC877226-8A44-4389-B95E-3DD44950FEF5}';
  IID__AEClientMode: TGUID = '{EA583E10-7DC7-43A6-B29E-3CA5FBFC28DB}';
  IID__EasyAEClientMode: TGUID = '{1907C649-CD2F-4D12-9FB1-9C31D755EF34}';
  IID__EasyAEAdaptableParameters: TGUID = '{DB7C0CFE-771F-4736-900F-5109A10DD723}';
  IID__EasyAEClientHoldPeriods: TGUID = '{ED4F692D-BAAB-468A-AF06-7A645E0C4513}';
  IID__EasyAEClientParameters: TGUID = '{82B958B9-55EA-4843-BBC2-3F3362AF377C}';
  IID__EasyAEEngineParameters: TGUID = '{CA789341-2F42-4D8B-9BBD-26BCB78722D7}';
  IID__EasyAEInstanceParameters: TGUID = '{6EC497D4-DAFD-44FE-808B-E75B7B44D2FF}';
  IID__EasyAELinkParameters: TGUID = '{776CD206-1C58-4E31-A753-CFE977A3FC57}';
  IID__EasyAESharedParameters: TGUID = '{4BF84E81-52FC-4736-817C-C1A8100E7E43}';
  CLASS_AEClientMode: TGUID = '{4F957EAA-DDE4-470F-9E1C-F2640E5A387A}';
  CLASS_EasyAEAdaptableParameters: TGUID = '{26773901-3D62-4F28-9193-7616913F56B1}';
  CLASS_EasyAEClientHoldPeriods: TGUID = '{B0E4C376-C155-4431-94D1-C6E822E173AE}';
  CLASS_EasyAEClientMode: TGUID = '{DE1BC625-CF21-4A33-A0E0-3B3EB9E1CC45}';
  CLASS_EasyAEClientParameters: TGUID = '{7D1BC998-198E-4F1C-90D0-CE06C3063486}';
  CLASS_EasyAEEngineParameters: TGUID = '{89829C81-6CEA-4D98-A9DF-7AB8E0D723CA}';
  CLASS_EasyAEInstanceParameters: TGUID = '{13EBB25A-6415-4DD7-9B2E-7780F84FA4E9}';
  CLASS_EasyAELinkParameters: TGUID = '{3CEEB1FB-8359-44E3-8184-B009ABB479BE}';
  CLASS_EasyAESharedParameters: TGUID = '{7822C234-2EB1-4B5D-926D-B0B565719E8E}';
  CLASS_AEAttributeSetDictionary: TGUID = '{8522EB62-93D2-41DA-A906-5C4A7CF39C4D}';
  CLASS_AEAttributeValueDictionary: TGUID = '{B9B6AFEE-D98D-4D71-9FB6-F46AC668A070}';
  CLASS_AEBrowseParameters: TGUID = '{138AA4DD-01EF-487F-8385-6A42F7ACA3F6}';
  CLASS_AEConditionState: TGUID = '{2FF5B789-FCF1-4321-A4D5-2D5BB2E0B341}';
  CLASS_AEEventData: TGUID = '{54AC6592-B68F-4DC1-8586-597D200C266F}';
  CLASS_AEEventType: TGUID = '{08D268A0-D041-4F6D-B7B9-528B5649C410}';
  CLASS_AENodeDescriptor: TGUID = '{D52FD6BE-64C8-4F81-802C-18F1AE4E3EB7}';
  CLASS_AESubscriptionFilter: TGUID = '{EB62D579-F210-4ACB-BFB9-AA10FA6A8790}';
  CLASS_AESubscriptionParameters: TGUID = '{0A7E4C59-37E4-477F-B977-775E362436F3}';
  IID__AEAttributeElementCollection: TGUID = '{096C7DC7-9D16-4D13-A5F3-AC4461926812}';
  IID__AECategoryElementCollection: TGUID = '{9C7E1ABA-3EB2-4054-AF70-B9DE0DEFC449}';
  IID__AEConditionElementCollection: TGUID = '{83680EF6-F273-4243-8508-1C9C819ED180}';
  IID__AENodeElementCollection: TGUID = '{D7C65220-B9C9-4737-8935-A8071C2186EA}';
  IID__AESubconditionElementCollection: TGUID = '{DDAA5968-9E24-410E-8CE8-31680F1BB0FB}';
  IID__AEAttributeElement: TGUID = '{E7A357CA-667F-4D1F-8A25-D0D148567E29}';
  IID__AECategoryElement: TGUID = '{3306C0FE-3AEE-47F7-A6C3-2185787D9665}';
  IID__AEConditionElement: TGUID = '{9C6200EA-AA60-4135-B5AE-28ECD4A9C630}';
  IID__AENodeElement: TGUID = '{E0E7FA5B-2DAE-47B1-8053-08E2D2544EE1}';
  IID__AESubconditionElement: TGUID = '{67123945-2427-48D6-89B7-87FE32E235EC}';
  CLASS_AEAttributeElement: TGUID = '{AFADB476-2FB2-42D5-9493-D56F8C9B8AEF}';
  CLASS_AEAttributeElementCollection: TGUID = '{B02B6E23-9C24-43F9-ADCC-C7D3F5BBE87E}';
  CLASS_AECategoryElement: TGUID = '{98A139C6-0F0F-428B-A40D-8C3F503B4651}';
  CLASS_AECategoryElementCollection: TGUID = '{D4383639-C033-4A56-8731-7A18CABDE5BE}';
  CLASS_AEConditionElement: TGUID = '{B25B39BE-F13F-42F3-972C-9AF835A4E383}';
  CLASS_AEConditionElementCollection: TGUID = '{9562BDBC-D3AB-48A1-870E-E89F2DCBEBF0}';
  CLASS_AENodeElement: TGUID = '{2FC5F0C9-31B0-47FD-A75B-A06DF93F3327}';
  CLASS_AENodeElementCollection: TGUID = '{4FF6472F-CA4F-4D87-985B-A563DB230836}';
  CLASS_AESubconditionElement: TGUID = '{3879AF0A-4D69-497A-9CF5-FA192B166AA1}';
  CLASS_AESubconditionElementCollection: TGUID = '{EADBF866-8071-4C44-A102-2CBE1E59BEFC}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum OpcTechnologies
type
  OpcTechnologies = TOleEnum;
const
  OpcTechnologies_None = $00000000;
  OpcTechnologies_Unknown = $00000001;
  OpcTechnologies_Com = $00000002;
  OpcTechnologies_Xml = $00000004;
  OpcTechnologies_All = $00000007;

// Constants for enum ServerFamilies
type
  ServerFamilies = TOleEnum;
const
  ServerFamilies_None = $00000000;
  ServerFamilies_OpcDataAccess = $00000001;
  ServerFamilies_OpcAlarmsAndEvents = $00000002;
  ServerFamilies_All = $00000003;

// Constants for enum DAAccessRights
type
  DAAccessRights = TOleEnum;
const
  DAAccessRights_None = $00000000;
  DAAccessRights_Readable = $00000001;
  DAAccessRights_Writable = $00000002;
  DAAccessRights_Both = $00000003;

// Constants for enum DABrowseFilter
type
  DABrowseFilter = TOleEnum;
const
  DABrowseFilter_None = $00000000;
  DABrowseFilter_All = $00000001;
  DABrowseFilter_Branches = $00000002;
  DABrowseFilter_Leaves = $00000003;
  DABrowseFilter_Flat = $00000004;

// Constants for enum DADataSource
type
  DADataSource = TOleEnum;
const
  DADataSource_ByValueAge = $00000000;
  DADataSource_Cache = $00000001;
  DADataSource_Device = $00000002;

// Constants for enum DALimitChoice
type
  DALimitChoice = TOleEnum;
const
  DALimitChoice_LimitOk = $00000000;
  DALimitChoice_LimitLow = $00000001;
  DALimitChoice_LimitHigh = $00000002;
  DALimitChoice_LimitConst = $00000003;

// Constants for enum DAPropertyIds
type
  DAPropertyIds = TOleEnum;
const
  DAPropertyIds_Null = $FFFFFFFF;
  DAPropertyIds_None = $00000000;
  DAPropertyIds_DataType = $00000001;
  DAPropertyIds_Value = $00000002;
  DAPropertyIds_Quality = $00000003;
  DAPropertyIds_Timestamp = $00000004;
  DAPropertyIds_AccessRights = $00000005;
  DAPropertyIds_ScanRate = $00000006;
  DAPropertyIds_EUType = $00000007;
  DAPropertyIds_EUInfo = $00000008;
  DAPropertyIds_EUUnits = $00000064;
  DAPropertyIds_Description = $00000065;
  DAPropertyIds_HighEU = $00000066;
  DAPropertyIds_LowEU = $00000067;
  DAPropertyIds_HighIR = $00000068;
  DAPropertyIds_LowIR = $00000069;
  DAPropertyIds_CloseLabel = $0000006A;
  DAPropertyIds_OpenLabel = $0000006B;
  DAPropertyIds_TimeZone = $0000006C;
  DAPropertyIds_MinimumValue = $0000006D;
  DAPropertyIds_MaximumValue = $0000006E;
  DAPropertyIds_ValuePrecision = $0000006F;
  DAPropertyIds_ConditionStatus = $0000012C;
  DAPropertyIds_AlarmQuickHelp = $0000012D;
  DAPropertyIds_AlarmAreaList = $0000012E;
  DAPropertyIds_PrimaryAlarmArea = $0000012F;
  DAPropertyIds_ConditionLogic = $00000130;
  DAPropertyIds_LimitExceeded = $00000131;
  DAPropertyIds_Deadband = $00000132;
  DAPropertyIds_HighHighLimit = $00000133;
  DAPropertyIds_HighLimit = $00000134;
  DAPropertyIds_LowLimit = $00000135;
  DAPropertyIds_LowLowLimit = $00000136;
  DAPropertyIds_ChangeRateLimit = $00000137;
  DAPropertyIds_DeviationLimit = $00000138;
  DAPropertyIds_SoundFile = $00000139;
  DAPropertyIds_TypeSystemId = $00000258;
  DAPropertyIds_DictionaryId = $00000259;
  DAPropertyIds_TypeId = $0000025A;
  DAPropertyIds_Dictionary = $0000025B;
  DAPropertyIds_TypeDescription = $0000025C;
  DAPropertyIds_ConsistencyWindow = $0000025D;
  DAPropertyIds_WriteBehavior = $0000025E;
  DAPropertyIds_UnconvertedItemId = $0000025F;
  DAPropertyIds_UnfilteredItemId = $00000260;
  DAPropertyIds_DataFilterValue = $00000261;

// Constants for enum DAQualities
type
  DAQualities = TOleEnum;
const
  DAQualities_BadNonspecific = $00000000;
  DAQualities_UncertainNonspecific = $00000040;
  DAQualities_GoodNonspecific = $000000C0;
  DAQualities_ConfigError = $00000004;
  DAQualities_NotConnected = $00000008;
  DAQualities_DeviceFailure = $0000000C;
  DAQualities_SensorFailure = $00000010;
  DAQualities_LastKnown = $00000014;
  DAQualities_CommFailure = $00000018;
  DAQualities_OutOfService = $0000001C;
  DAQualities_WaitingForInitialData = $00000020;
  DAQualities_LastUsable = $00000044;
  DAQualities_SensorCal = $00000050;
  DAQualities_EguExceeded = $00000054;
  DAQualities_Subnormal = $00000058;
  DAQualities_LocalOverride = $000000D8;

// Constants for enum DAQualityChoice
type
  DAQualityChoice = TOleEnum;
const
  DAQualityChoice_Bad = $00000000;
  DAQualityChoice_Uncertain = $00000001;
  DAQualityChoice_Good = $00000003;

// Constants for enum DAStatusChoice
type
  DAStatusChoice = TOleEnum;
const
  DAStatusChoice_BadNonspecific = $00000000;
  DAStatusChoice_UncertainNonspecific = $00000010;
  DAStatusChoice_GoodNonspecific = $00000030;
  DAStatusChoice_ConfigError = $00000001;
  DAStatusChoice_NotConnected = $00000002;
  DAStatusChoice_DeviceFailure = $00000003;
  DAStatusChoice_SensorFailure = $00000004;
  DAStatusChoice_LastKnown = $00000005;
  DAStatusChoice_CommFailure = $00000006;
  DAStatusChoice_OutOfService = $00000007;
  DAStatusChoice_WaitingForInitialData = $00000008;
  DAStatusChoice_LastUsable = $00000011;
  DAStatusChoice_SensorCal = $00000014;
  DAStatusChoice_EguExceeded = $00000015;
  DAStatusChoice_Subnormal = $00000016;
  DAStatusChoice_LocalOverride = $00000036;

// Constants for enum DANodeKind
type
  DANodeKind = TOleEnum;
const
  DANodeKind_None = $00000000;
  DANodeKind_Leaf = $00000001;
  DANodeKind_Branch = $00000002;
  DANodeKind_Root = $00000003;

// Constants for enum DAReadWriteMethod
type
  DAReadWriteMethod = TOleEnum;
const
  DAReadWriteMethod_Synchronous = $00000000;
  DAReadWriteMethod_Asynchronous = $00000001;

// Constants for enum AEBrowseFilter
type
  AEBrowseFilter = TOleEnum;
const
  AEBrowseFilter_NoFilter = $00000000;
  AEBrowseFilter_All = $00000003;
  AEBrowseFilter_Areas = $00000001;
  AEBrowseFilter_Sources = $00000002;

// Constants for enum AEEventTypes
type
  AEEventTypes = TOleEnum;
const
  AEEventTypes_None = $00000000;
  AEEventTypes_Simple = $00000001;
  AEEventTypes_Tracking = $00000002;
  AEEventTypes_Condition = $00000004;
  AEEventTypes_All = $00000007;

// Constants for enum AENodeKind
type
  AENodeKind = TOleEnum;
const
  AENodeKind_None = $00000000;
  AENodeKind_Source = $00000001;
  AENodeKind_Area = $00000002;
  AENodeKind_Root = $00000003;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _ServerCategories = interface;
  _ServerCategoriesDisp = dispinterface;
  _NodeDescriptor = interface;
  _NodeDescriptorDisp = dispinterface;
  _ServerDescriptor = interface;
  _ServerDescriptorDisp = dispinterface;
  _ServerElement = interface;
  _ServerElementDisp = dispinterface;
  _ServerElementCollection = interface;
  _ServerElementCollectionDisp = dispinterface;
  _OpcResultException = interface;
  _OpcResultExceptionDisp = dispinterface;
  _OpcException = interface;
  _OpcExceptionDisp = dispinterface;
  _EasyClientParameters = interface;
  _EasyClientParametersDisp = dispinterface;
  _EasyEngineParameters = interface;
  _EasyEngineParametersDisp = dispinterface;
  _EasyInstanceParameters = interface;
  _EasyInstanceParametersDisp = dispinterface;
  _EasyMachineParameters = interface;
  _EasyMachineParametersDisp = dispinterface;
  _DAVtq = interface;
  _DAVtqDisp = dispinterface;
  _DAAccessRight = interface;
  _DAAccessRightDisp = dispinterface;
  _DAPropertyId = interface;
  _DAPropertyIdDisp = dispinterface;
  _DAQuality = interface;
  _DAQualityDisp = dispinterface;
  _DANodeDescriptor = interface;
  _DANodeDescriptorDisp = dispinterface;
  _DAPropertyDescriptor = interface;
  _DAPropertyDescriptorDisp = dispinterface;
  _DABrowseParameters = interface;
  _DABrowseParametersDisp = dispinterface;
  _DAGroupParameters = interface;
  _DAGroupParametersDisp = dispinterface;
  _DAReadParameters = interface;
  _DAReadParametersDisp = dispinterface;
  _DAOptimizerPluginParameters = interface;
  _DAOptimizerPluginParametersDisp = dispinterface;
  _DAAutoSubscribingParameters = interface;
  _DAAutoSubscribingParametersDisp = dispinterface;
  _DAParameterBucketingParameters = interface;
  _DAParameterBucketingParametersDisp = dispinterface;
  _DAParameterRestrictingParameters = interface;
  _DAParameterRestrictingParametersDisp = dispinterface;
  _DARequestChunkingParameters = interface;
  _DARequestChunkingParametersDisp = dispinterface;
  _DANodeArguments = interface;
  _DANodeArgumentsDisp = dispinterface;
  _DAHandleGroupArguments = interface;
  _DAHandleGroupArgumentsDisp = dispinterface;
  _DAItemArguments = interface;
  _DAItemArgumentsDisp = dispinterface;
  _DAItemGroupArguments = interface;
  _DAItemGroupArgumentsDisp = dispinterface;
  _DAItemValueArguments = interface;
  _DAItemValueArgumentsDisp = dispinterface;
  _DAItemVtqArguments = interface;
  _DAItemVtqArgumentsDisp = dispinterface;
  _DAPropertyArguments = interface;
  _DAPropertyArgumentsDisp = dispinterface;
  _DAReadItemArguments = interface;
  _DAReadItemArgumentsDisp = dispinterface;
  _EasyDAItemSubscriptionArguments = interface;
  _EasyDAItemSubscriptionArgumentsDisp = dispinterface;
  _EasyDAItemChangedEventArgs = interface;
  _EasyDAItemChangedEventArgsDisp = dispinterface;
  _DANodeElementCollectionResult = interface;
  _DANodeElementCollectionResultDisp = dispinterface;
  _DAVtqResult = interface;
  _DAVtqResultDisp = dispinterface;
  _DABrowseArguments = interface;
  _DABrowseArgumentsDisp = dispinterface;
  _DAClientMode = interface;
  _DAClientModeDisp = dispinterface;
  _EasyDAClientHoldPeriods = interface;
  _EasyDAClientHoldPeriodsDisp = dispinterface;
  _EasyDAClientMode = interface;
  _EasyDAClientModeDisp = dispinterface;
  _EasyDAClientTimeouts = interface;
  _EasyDAClientTimeoutsDisp = dispinterface;
  _EasyDAAdaptableParameters = interface;
  _EasyDAAdaptableParametersDisp = dispinterface;
  _EasyDAClientParameters = interface;
  _EasyDAClientParametersDisp = dispinterface;
  _EasyDAEngineParameters = interface;
  _EasyDAEngineParametersDisp = dispinterface;
  _EasyDAInstanceParameters = interface;
  _EasyDAInstanceParametersDisp = dispinterface;
  _EasyDASharedParameters = interface;
  _EasyDASharedParametersDisp = dispinterface;
  _EasyDATopicParameters = interface;
  _EasyDATopicParametersDisp = dispinterface;
  _DAItemDescriptor = interface;
  _DAItemDescriptorDisp = dispinterface;
  _DANodeElementCollection = interface;
  _DANodeElementCollectionDisp = dispinterface;
  _DAPropertyElementCollection = interface;
  _DAPropertyElementCollectionDisp = dispinterface;
  _NodeElement = interface;
  _NodeElementDisp = dispinterface;
  _DAPropertyElement = interface;
  _DAPropertyElementDisp = dispinterface;
  _DANodeElement = interface;
  _DANodeElementDisp = dispinterface;
  _AEAttributeSetDictionary = interface;
  _AEAttributeSetDictionaryDisp = dispinterface;
  _AEAttributeValueDictionary = interface;
  _AEAttributeValueDictionaryDisp = dispinterface;
  _AEConditionState = interface;
  _AEConditionStateDisp = dispinterface;
  _AEEventData = interface;
  _AEEventDataDisp = dispinterface;
  _AESubscriptionFilter = interface;
  _AESubscriptionFilterDisp = dispinterface;
  _AEEventType = interface;
  _AEEventTypeDisp = dispinterface;
  _AENodeDescriptor = interface;
  _AENodeDescriptorDisp = dispinterface;
  _AEBrowseParameters = interface;
  _AEBrowseParametersDisp = dispinterface;
  _AESubscriptionParameters = interface;
  _AESubscriptionParametersDisp = dispinterface;
  _AEOptimizerPluginParameters = interface;
  _AEOptimizerPluginParametersDisp = dispinterface;
  _AENodeArguments = interface;
  _AENodeArgumentsDisp = dispinterface;
  _AEEventsSubscriptionArguments = interface;
  _AEEventsSubscriptionArgumentsDisp = dispinterface;
  _EasyAEEventsSubscriptionArguments = interface;
  _EasyAEEventsSubscriptionArgumentsDisp = dispinterface;
  _EasyAENotificationEventArgs = interface;
  _EasyAENotificationEventArgsDisp = dispinterface;
  _AENodeElementCollectionResult = interface;
  _AENodeElementCollectionResultDisp = dispinterface;
  _AEBrowseArguments = interface;
  _AEBrowseArgumentsDisp = dispinterface;
  _AEClientMode = interface;
  _AEClientModeDisp = dispinterface;
  _EasyAEClientMode = interface;
  _EasyAEClientModeDisp = dispinterface;
  _EasyAEAdaptableParameters = interface;
  _EasyAEAdaptableParametersDisp = dispinterface;
  _EasyAEClientHoldPeriods = interface;
  _EasyAEClientHoldPeriodsDisp = dispinterface;
  _EasyAEClientParameters = interface;
  _EasyAEClientParametersDisp = dispinterface;
  _EasyAEEngineParameters = interface;
  _EasyAEEngineParametersDisp = dispinterface;
  _EasyAEInstanceParameters = interface;
  _EasyAEInstanceParametersDisp = dispinterface;
  _EasyAELinkParameters = interface;
  _EasyAELinkParametersDisp = dispinterface;
  _EasyAESharedParameters = interface;
  _EasyAESharedParametersDisp = dispinterface;
  _AEAttributeElementCollection = interface;
  _AEAttributeElementCollectionDisp = dispinterface;
  _AECategoryElementCollection = interface;
  _AECategoryElementCollectionDisp = dispinterface;
  _AEConditionElementCollection = interface;
  _AEConditionElementCollectionDisp = dispinterface;
  _AENodeElementCollection = interface;
  _AENodeElementCollectionDisp = dispinterface;
  _AESubconditionElementCollection = interface;
  _AESubconditionElementCollectionDisp = dispinterface;
  _AEAttributeElement = interface;
  _AEAttributeElementDisp = dispinterface;
  _AECategoryElement = interface;
  _AECategoryElementDisp = dispinterface;
  _AEConditionElement = interface;
  _AEConditionElementDisp = dispinterface;
  _AENodeElement = interface;
  _AENodeElementDisp = dispinterface;
  _AESubconditionElement = interface;
  _AESubconditionElementDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  OpcException = _OpcException;
  EasyClientParameters = _EasyClientParameters;
  EasyEngineParameters = _EasyEngineParameters;
  EasyInstanceParameters = _EasyInstanceParameters;
  EasyMachineParameters = _EasyMachineParameters;
  DANodeDescriptor = _DANodeDescriptor;
  DAOptimizerPluginParameters = _DAOptimizerPluginParameters;
  DAAutoSubscribingParameters = _DAAutoSubscribingParameters;
  DAParameterBucketingParameters = _DAParameterBucketingParameters;
  DAParameterRestrictingParameters = _DAParameterRestrictingParameters;
  DARequestChunkingParameters = _DARequestChunkingParameters;
  DANodeArguments = _DANodeArguments;
  DAHandleGroupArguments = _DAHandleGroupArguments;
  DAItemArguments = _DAItemArguments;
  DAItemGroupArguments = _DAItemGroupArguments;
  DAItemValueArguments = _DAItemValueArguments;
  DAItemVtqArguments = _DAItemVtqArguments;
  DABrowseArguments = _DABrowseArguments;
  DANodeElementCollectionResult = _DANodeElementCollectionResult;
  DAPropertyArguments = _DAPropertyArguments;
  DAReadItemArguments = _DAReadItemArguments;
  DAVtqResult = _DAVtqResult;
  EasyDAItemChangedEventArgs = _EasyDAItemChangedEventArgs;
  EasyDAItemSubscriptionArguments = _EasyDAItemSubscriptionArguments;
  DAClientMode = _DAClientMode;
  EasyDAAdaptableParameters = _EasyDAAdaptableParameters;
  EasyDAClientHoldPeriods = _EasyDAClientHoldPeriods;
  EasyDAClientMode = _EasyDAClientMode;
  EasyDAClientParameters = _EasyDAClientParameters;
  EasyDAClientTimeouts = _EasyDAClientTimeouts;
  EasyDAEngineParameters = _EasyDAEngineParameters;
  EasyDAInstanceParameters = _EasyDAInstanceParameters;
  EasyDASharedParameters = _EasyDASharedParameters;
  EasyDATopicParameters = _EasyDATopicParameters;
  DAAccessRight = _DAAccessRight;
  DABrowseParameters = _DABrowseParameters;
  DAGroupParameters = _DAGroupParameters;
  DAItemDescriptor = _DAItemDescriptor;
  DAPropertyDescriptor = _DAPropertyDescriptor;
  DAPropertyId = _DAPropertyId;
  DAQuality = _DAQuality;
  DAReadParameters = _DAReadParameters;
  DAVtq = _DAVtq;
  DANodeElementCollection = _DANodeElementCollection;
  DAPropertyElement = _DAPropertyElement;
  DAPropertyElementCollection = _DAPropertyElementCollection;
  NodeDescriptor = _NodeDescriptor;
  DANodeElement = _DANodeElement;
  OpcResultException = _OpcResultException;
  ServerCategories = _ServerCategories;
  ServerDescriptor = _ServerDescriptor;
  ServerElement = _ServerElement;
  ServerElementCollection = _ServerElementCollection;
  AEOptimizerPluginParameters = _AEOptimizerPluginParameters;
  AENodeArguments = _AENodeArguments;
  AEEventsSubscriptionArguments = _AEEventsSubscriptionArguments;
  AEBrowseArguments = _AEBrowseArguments;
  AENodeElementCollectionResult = _AENodeElementCollectionResult;
  EasyAEEventsSubscriptionArguments = _EasyAEEventsSubscriptionArguments;
  EasyAENotificationEventArgs = _EasyAENotificationEventArgs;
  AEClientMode = _AEClientMode;
  EasyAEAdaptableParameters = _EasyAEAdaptableParameters;
  EasyAEClientHoldPeriods = _EasyAEClientHoldPeriods;
  EasyAEClientMode = _EasyAEClientMode;
  EasyAEClientParameters = _EasyAEClientParameters;
  EasyAEEngineParameters = _EasyAEEngineParameters;
  EasyAEInstanceParameters = _EasyAEInstanceParameters;
  EasyAELinkParameters = _EasyAELinkParameters;
  EasyAESharedParameters = _EasyAESharedParameters;
  AEAttributeSetDictionary = _AEAttributeSetDictionary;
  AEAttributeValueDictionary = _AEAttributeValueDictionary;
  AEBrowseParameters = _AEBrowseParameters;
  AEConditionState = _AEConditionState;
  AEEventData = _AEEventData;
  AEEventType = _AEEventType;
  AENodeDescriptor = _AENodeDescriptor;
  AESubscriptionFilter = _AESubscriptionFilter;
  AESubscriptionParameters = _AESubscriptionParameters;
  AEAttributeElement = _AEAttributeElement;
  AEAttributeElementCollection = _AEAttributeElementCollection;
  AECategoryElement = _AECategoryElement;
  AECategoryElementCollection = _AECategoryElementCollection;
  AEConditionElement = _AEConditionElement;
  AEConditionElementCollection = _AEConditionElementCollection;
  AENodeElement = _AENodeElement;
  AENodeElementCollection = _AENodeElementCollection;
  AESubconditionElement = _AESubconditionElement;
  AESubconditionElementCollection = _AESubconditionElementCollection;


// *********************************************************************//
// Interface: _ServerCategories
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B4D14EDE-17C0-4FA3-9A98-C38229D1A70A}
// *********************************************************************//
  _ServerCategories = interface(IDispatch)
    ['{B4D14EDE-17C0-4FA3-9A98-C38229D1A70A}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_Families: ServerFamilies; safecall;
    function Get_OpcAlarmsAndEvents10: WordBool; safecall;
    procedure Set_OpcAlarmsAndEvents10(pRetVal: WordBool); safecall;
    function Get_OpcDataAccess10: WordBool; safecall;
    procedure Set_OpcDataAccess10(pRetVal: WordBool); safecall;
    function Get_OpcDataAccess20: WordBool; safecall;
    procedure Set_OpcDataAccess20(pRetVal: WordBool); safecall;
    function Get_OpcDataAccess30: WordBool; safecall;
    procedure Set_OpcDataAccess30(pRetVal: WordBool); safecall;
    function Get_OpcXmlDataAccess10: WordBool; safecall;
    procedure Set_OpcXmlDataAccess10(pRetVal: WordBool); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Families: ServerFamilies read Get_Families;
    property OpcAlarmsAndEvents10: WordBool read Get_OpcAlarmsAndEvents10 write Set_OpcAlarmsAndEvents10;
    property OpcDataAccess10: WordBool read Get_OpcDataAccess10 write Set_OpcDataAccess10;
    property OpcDataAccess20: WordBool read Get_OpcDataAccess20 write Set_OpcDataAccess20;
    property OpcDataAccess30: WordBool read Get_OpcDataAccess30 write Set_OpcDataAccess30;
    property OpcXmlDataAccess10: WordBool read Get_OpcXmlDataAccess10 write Set_OpcXmlDataAccess10;
  end;

// *********************************************************************//
// DispIntf:  _ServerCategoriesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B4D14EDE-17C0-4FA3-9A98-C38229D1A70A}
// *********************************************************************//
  _ServerCategoriesDisp = dispinterface
    ['{B4D14EDE-17C0-4FA3-9A98-C38229D1A70A}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property Families: ServerFamilies readonly dispid 1610743814;
    property OpcAlarmsAndEvents10: WordBool dispid 1610743815;
    property OpcDataAccess10: WordBool dispid 1610743817;
    property OpcDataAccess20: WordBool dispid 1610743819;
    property OpcDataAccess30: WordBool dispid 1610743821;
    property OpcXmlDataAccess10: WordBool dispid 1610743823;
  end;

// *********************************************************************//
// Interface: _NodeDescriptor
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {275C63F2-402F-4723-B232-5845517DD66A}
// *********************************************************************//
  _NodeDescriptor = interface(IDispatch)
    ['{275C63F2-402F-4723-B232-5845517DD66A}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_AliasName: WideString; safecall;
    procedure Set_AliasName(const pRetVal: WideString); safecall;
    function Get_IsAliased: WordBool; safecall;
    function Clone: OleVariant; safecall;
    function Get_ArgumentString: WideString; safecall;
    function Get_BrowsePath: _BrowsePath; safecall;
    procedure _Set_BrowsePath(const pRetVal: _BrowsePath); safecall;
    function Get_BrowsePathStartingNodeDescriptor: _NodeDescriptor; safecall;
    procedure _Set_BrowsePathStartingNodeDescriptor(const pRetVal: _NodeDescriptor); safecall;
    function Get_HasBrowsePath: WordBool; safecall;
    function Get_HasNodeId: WordBool; safecall;
    function Get_IsNull: WordBool; safecall;
    function Get_IsRoot: WordBool; safecall;
    function Get_NodeId: WideString; safecall;
    function Get_NodePath: WideString; safecall;
    procedure Set_NodePath(const pRetVal: WideString); safecall;
    function Match(other: OleVariant): WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property AliasName: WideString read Get_AliasName write Set_AliasName;
    property IsAliased: WordBool read Get_IsAliased;
    property ArgumentString: WideString read Get_ArgumentString;
    property BrowsePath: _BrowsePath read Get_BrowsePath write _Set_BrowsePath;
    property BrowsePathStartingNodeDescriptor: _NodeDescriptor read Get_BrowsePathStartingNodeDescriptor write _Set_BrowsePathStartingNodeDescriptor;
    property HasBrowsePath: WordBool read Get_HasBrowsePath;
    property HasNodeId: WordBool read Get_HasNodeId;
    property IsNull: WordBool read Get_IsNull;
    property IsRoot: WordBool read Get_IsRoot;
    property NodeId: WideString read Get_NodeId;
    property NodePath: WideString read Get_NodePath write Set_NodePath;
  end;

// *********************************************************************//
// DispIntf:  _NodeDescriptorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {275C63F2-402F-4723-B232-5845517DD66A}
// *********************************************************************//
  _NodeDescriptorDisp = dispinterface
    ['{275C63F2-402F-4723-B232-5845517DD66A}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property AliasName: WideString dispid 1610743813;
    property IsAliased: WordBool readonly dispid 1610743815;
    function Clone: OleVariant; dispid 1610743816;
    property ArgumentString: WideString readonly dispid 1610743817;
    property BrowsePath: _BrowsePath dispid 1610743818;
    property BrowsePathStartingNodeDescriptor: _NodeDescriptor dispid 1610743820;
    property HasBrowsePath: WordBool readonly dispid 1610743822;
    property HasNodeId: WordBool readonly dispid 1610743823;
    property IsNull: WordBool readonly dispid 1610743824;
    property IsRoot: WordBool readonly dispid 1610743825;
    property NodeId: WideString readonly dispid 1610743826;
    property NodePath: WideString dispid 1610743827;
    function Match(other: OleVariant): WordBool; dispid 1610743829;
  end;

// *********************************************************************//
// Interface: _ServerDescriptor
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8F84A55F-9C3F-47B6-9949-22AE6AA66288}
// *********************************************************************//
  _ServerDescriptor = interface(IDispatch)
    ['{8F84A55F-9C3F-47B6-9949-22AE6AA66288}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_AliasName: WideString; safecall;
    procedure Set_AliasName(const pRetVal: WideString); safecall;
    function Get_IsAliased: WordBool; safecall;
    function Get_Authority: WideString; safecall;
    procedure Set_Authority(const pRetVal: WideString); safecall;
    function Get_DescriptorString: WideString; safecall;
    procedure Set_DescriptorString(const pRetVal: WideString); safecall;
    function Get_PathAndQuery: WideString; safecall;
    procedure Set_PathAndQuery(const pRetVal: WideString); safecall;
    function Get_SchemeAndAuthority: WideString; safecall;
    procedure Set_SchemeAndAuthority(const pRetVal: WideString); safecall;
    function Get_UserInfo: WideString; safecall;
    procedure Set_UserInfo(const pRetVal: WideString); safecall;
    function Get_UrlString: WideString; safecall;
    procedure Set_UrlString(const pRetVal: WideString); safecall;
    function Get_Fragment: WideString; safecall;
    procedure Set_Fragment(const pRetVal: WideString); safecall;
    function Get_Host: WideString; safecall;
    procedure Set_Host(const pRetVal: WideString); safecall;
    function Get_IsNull: WordBool; safecall;
    function Get_Password: WideString; safecall;
    procedure Set_Password(const pRetVal: WideString); safecall;
    function Get_Path: WideString; safecall;
    procedure Set_Path(const pRetVal: WideString); safecall;
    function Get_Port: Integer; safecall;
    procedure Set_Port(pRetVal: Integer); safecall;
    function Get_Prefix: WideString; safecall;
    procedure Set_Prefix(const pRetVal: WideString); safecall;
    function Get_Query: WideString; safecall;
    procedure Set_Query(const pRetVal: WideString); safecall;
    function Get_Scheme: WideString; safecall;
    procedure Set_Scheme(const pRetVal: WideString); safecall;
    function Get_UserName: WideString; safecall;
    procedure Set_UserName(const pRetVal: WideString); safecall;
    function Get_NetworkSecurity: _NetworkSecurity; safecall;
    procedure _Set_NetworkSecurity(const pRetVal: _NetworkSecurity); safecall;
    function Get_Clsid: TGUID; safecall;
    procedure Set_Clsid(pRetVal: TGUID); safecall;
    function Get_ClsidString: WideString; safecall;
    procedure Set_ClsidString(const pRetVal: WideString); safecall;
    function Get_HasClsid: WordBool; safecall;
    function Get_HasProgId: WordBool; safecall;
    function Get_Location: WideString; safecall;
    procedure Set_Location(const pRetVal: WideString); safecall;
    function Get_MachineName: WideString; safecall;
    procedure Set_MachineName(const pRetVal: WideString); safecall;
    function Get_ObjectId: WideString; safecall;
    procedure Set_ObjectId(const pRetVal: WideString); safecall;
    function Get_ProgId: WideString; safecall;
    procedure Set_ProgId(const pRetVal: WideString); safecall;
    function Get_ServerClass: WideString; safecall;
    procedure Set_ServerClass(const pRetVal: WideString); safecall;
    function Get_ServerProgram: WideString; safecall;
    procedure Set_ServerProgram(const pRetVal: WideString); safecall;
    function Get_ShortUrlString: WideString; safecall;
    function Get_ServerCategories: _ServerCategories; safecall;
    procedure _Set_ServerCategories(const pRetVal: _ServerCategories); safecall;
    function Get_Technology: OpcTechnologies; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property AliasName: WideString read Get_AliasName write Set_AliasName;
    property IsAliased: WordBool read Get_IsAliased;
    property Authority: WideString read Get_Authority write Set_Authority;
    property DescriptorString: WideString read Get_DescriptorString write Set_DescriptorString;
    property PathAndQuery: WideString read Get_PathAndQuery write Set_PathAndQuery;
    property SchemeAndAuthority: WideString read Get_SchemeAndAuthority write Set_SchemeAndAuthority;
    property UserInfo: WideString read Get_UserInfo write Set_UserInfo;
    property UrlString: WideString read Get_UrlString write Set_UrlString;
    property Fragment: WideString read Get_Fragment write Set_Fragment;
    property Host: WideString read Get_Host write Set_Host;
    property IsNull: WordBool read Get_IsNull;
    property Password: WideString read Get_Password write Set_Password;
    property Path: WideString read Get_Path write Set_Path;
    property Port: Integer read Get_Port write Set_Port;
    property Prefix: WideString read Get_Prefix write Set_Prefix;
    property Query: WideString read Get_Query write Set_Query;
    property Scheme: WideString read Get_Scheme write Set_Scheme;
    property UserName: WideString read Get_UserName write Set_UserName;
    property NetworkSecurity: _NetworkSecurity read Get_NetworkSecurity write _Set_NetworkSecurity;
    property Clsid: TGUID read Get_Clsid write Set_Clsid;
    property ClsidString: WideString read Get_ClsidString write Set_ClsidString;
    property HasClsid: WordBool read Get_HasClsid;
    property HasProgId: WordBool read Get_HasProgId;
    property Location: WideString read Get_Location write Set_Location;
    property MachineName: WideString read Get_MachineName write Set_MachineName;
    property ObjectId: WideString read Get_ObjectId write Set_ObjectId;
    property ProgId: WideString read Get_ProgId write Set_ProgId;
    property ServerClass: WideString read Get_ServerClass write Set_ServerClass;
    property ServerProgram: WideString read Get_ServerProgram write Set_ServerProgram;
    property ShortUrlString: WideString read Get_ShortUrlString;
    property ServerCategories: _ServerCategories read Get_ServerCategories write _Set_ServerCategories;
    property Technology: OpcTechnologies read Get_Technology;
  end;

// *********************************************************************//
// DispIntf:  _ServerDescriptorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8F84A55F-9C3F-47B6-9949-22AE6AA66288}
// *********************************************************************//
  _ServerDescriptorDisp = dispinterface
    ['{8F84A55F-9C3F-47B6-9949-22AE6AA66288}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property AliasName: WideString dispid 1610743814;
    property IsAliased: WordBool readonly dispid 1610743816;
    property Authority: WideString dispid 1610743817;
    property DescriptorString: WideString dispid 1610743819;
    property PathAndQuery: WideString dispid 1610743821;
    property SchemeAndAuthority: WideString dispid 1610743823;
    property UserInfo: WideString dispid 1610743825;
    property UrlString: WideString dispid 1610743827;
    property Fragment: WideString dispid 1610743829;
    property Host: WideString dispid 1610743831;
    property IsNull: WordBool readonly dispid 1610743833;
    property Password: WideString dispid 1610743834;
    property Path: WideString dispid 1610743836;
    property Port: Integer dispid 1610743838;
    property Prefix: WideString dispid 1610743840;
    property Query: WideString dispid 1610743842;
    property Scheme: WideString dispid 1610743844;
    property UserName: WideString dispid 1610743846;
    property NetworkSecurity: _NetworkSecurity dispid 1610743848;
    property Clsid: {NOT_OLEAUTO(TGUID)}OleVariant dispid 1610743850;
    property ClsidString: WideString dispid 1610743852;
    property HasClsid: WordBool readonly dispid 1610743854;
    property HasProgId: WordBool readonly dispid 1610743855;
    property Location: WideString dispid 1610743856;
    property MachineName: WideString dispid 1610743858;
    property ObjectId: WideString dispid 1610743860;
    property ProgId: WideString dispid 1610743862;
    property ServerClass: WideString dispid 1610743864;
    property ServerProgram: WideString dispid 1610743866;
    property ShortUrlString: WideString readonly dispid 1610743868;
    property ServerCategories: _ServerCategories dispid 1610743869;
    property Technology: OpcTechnologies readonly dispid 1610743871;
  end;

// *********************************************************************//
// Interface: _ServerElement
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2E13A404-1528-4924-9B3B-A906A10E4092}
// *********************************************************************//
  _ServerElement = interface(IDispatch)
    ['{2E13A404-1528-4924-9B3B-A906A10E4092}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_Clsid: TGUID; safecall;
    procedure Set_Clsid(pRetVal: TGUID); safecall;
    function Get_ClsidString: WideString; safecall;
    procedure Set_ClsidString(const pRetVal: WideString); safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pRetVal: WideString); safecall;
    function Get_Location: WideString; safecall;
    procedure Set_Location(const pRetVal: WideString); safecall;
    function Get_ProgId: WideString; safecall;
    procedure Set_ProgId(const pRetVal: WideString); safecall;
    function Get_ServerCategories: _ServerCategories; safecall;
    procedure _Set_ServerCategories(const pRetVal: _ServerCategories); safecall;
    function Get_ServerClass: WideString; safecall;
    function Get_Technology: OpcTechnologies; safecall;
    procedure Set_Technology(pRetVal: OpcTechnologies); safecall;
    function Get_UrlString: WideString; safecall;
    procedure Set_UrlString(const pRetVal: WideString); safecall;
    function Get_UrlStringUnescaped: WideString; safecall;
    function Get_Vendor: WideString; safecall;
    procedure Set_Vendor(const pRetVal: WideString); safecall;
    function Get_VersionIndependentProgId: WideString; safecall;
    procedure Set_VersionIndependentProgId(const pRetVal: WideString); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Clsid: TGUID read Get_Clsid write Set_Clsid;
    property ClsidString: WideString read Get_ClsidString write Set_ClsidString;
    property Description: WideString read Get_Description write Set_Description;
    property Location: WideString read Get_Location write Set_Location;
    property ProgId: WideString read Get_ProgId write Set_ProgId;
    property ServerCategories: _ServerCategories read Get_ServerCategories write _Set_ServerCategories;
    property ServerClass: WideString read Get_ServerClass;
    property Technology: OpcTechnologies read Get_Technology write Set_Technology;
    property UrlString: WideString read Get_UrlString write Set_UrlString;
    property UrlStringUnescaped: WideString read Get_UrlStringUnescaped;
    property Vendor: WideString read Get_Vendor write Set_Vendor;
    property VersionIndependentProgId: WideString read Get_VersionIndependentProgId write Set_VersionIndependentProgId;
  end;

// *********************************************************************//
// DispIntf:  _ServerElementDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2E13A404-1528-4924-9B3B-A906A10E4092}
// *********************************************************************//
  _ServerElementDisp = dispinterface
    ['{2E13A404-1528-4924-9B3B-A906A10E4092}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property Clsid: {NOT_OLEAUTO(TGUID)}OleVariant dispid 1610743814;
    property ClsidString: WideString dispid 1610743816;
    property Description: WideString dispid 1610743818;
    property Location: WideString dispid 1610743820;
    property ProgId: WideString dispid 1610743822;
    property ServerCategories: _ServerCategories dispid 1610743824;
    property ServerClass: WideString readonly dispid 1610743826;
    property Technology: OpcTechnologies dispid 1610743827;
    property UrlString: WideString dispid 1610743829;
    property UrlStringUnescaped: WideString readonly dispid 1610743831;
    property Vendor: WideString dispid 1610743832;
    property VersionIndependentProgId: WideString dispid 1610743834;
  end;

// *********************************************************************//
// Interface: _ServerElementCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BEA7BE6F-A4A4-47E5-B392-B05A98423763}
// *********************************************************************//
  _ServerElementCollection = interface(IDispatch)
    ['{BEA7BE6F-A4A4-47E5-B392-B05A98423763}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(const key: WideString): _ServerElement; safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(Item: OleVariant); safecall;
    procedure Clear; safecall;
    function Contains(const key: WideString): WordBool; safecall;
    function Remove(const key: WideString): WordBool; safecall;
    function ToList: _ElasticVector; safecall;
    function TryGetValue(const key: WideString; out Item: OleVariant): WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property Item[const key: WideString]: _ServerElement read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _ServerElementCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BEA7BE6F-A4A4-47E5-B392-B05A98423763}
// *********************************************************************//
  _ServerElementCollectionDisp = dispinterface
    ['{BEA7BE6F-A4A4-47E5-B392-B05A98423763}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[const key: WideString]: _ServerElement readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743813;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(Item: OleVariant); dispid 1610743815;
    procedure Clear; dispid 1610743816;
    function Contains(const key: WideString): WordBool; dispid 1610743817;
    function Remove(const key: WideString): WordBool; dispid 1610743818;
    function ToList: _ElasticVector; dispid 1610743819;
    function TryGetValue(const key: WideString; out Item: OleVariant): WordBool; dispid 1610743820;
  end;

// *********************************************************************//
// Interface: _OpcResultException
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {70F5B05A-7A90-4609-9E3B-854CCF5016D4}
// *********************************************************************//
  _OpcResultException = interface(IDispatch)
    ['{70F5B05A-7A90-4609-9E3B-854CCF5016D4}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Message: WideString; safecall;
    function Get_StackTrace: WideString; safecall;
    function Get_HelpLink: WideString; safecall;
    procedure Set_HelpLink(const pRetVal: WideString); safecall;
    function Get_Source: WideString; safecall;
    procedure Set_Source(const pRetVal: WideString); safecall;
    function Get_InnerException: _Exception; safecall;
    function Get_TargetSite: _MethodBase; safecall;
    function GetBaseException: _Exception; safecall;
    procedure GetObjectData(const info: _SerializationInfo; context: StreamingContext); safecall;
    function Get_Data: _Dictionary; safecall;
    function Get_HResult: Integer; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Message: WideString read Get_Message;
    property StackTrace: WideString read Get_StackTrace;
    property HelpLink: WideString read Get_HelpLink write Set_HelpLink;
    property Source: WideString read Get_Source write Set_Source;
    property InnerException: _Exception read Get_InnerException;
    property TargetSite: _MethodBase read Get_TargetSite;
    property Data: _Dictionary read Get_Data;
    property HResult: Integer read Get_HResult;
  end;

// *********************************************************************//
// DispIntf:  _OpcResultExceptionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {70F5B05A-7A90-4609-9E3B-854CCF5016D4}
// *********************************************************************//
  _OpcResultExceptionDisp = dispinterface
    ['{70F5B05A-7A90-4609-9E3B-854CCF5016D4}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Message: WideString readonly dispid 1610743813;
    property StackTrace: WideString readonly dispid 1610743814;
    property HelpLink: WideString dispid 1610743815;
    property Source: WideString dispid 1610743817;
    property InnerException: _Exception readonly dispid 1610743819;
    property TargetSite: _MethodBase readonly dispid 1610743820;
    function GetBaseException: _Exception; dispid 1610743821;
    procedure GetObjectData(const info: _SerializationInfo; 
                            context: {NOT_OLEAUTO(StreamingContext)}OleVariant); dispid 1610743822;
    property Data: _Dictionary readonly dispid 1610743823;
    property HResult: Integer readonly dispid 1610743824;
  end;

// *********************************************************************//
// Interface: _OpcException
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {91B32D57-6F70-442B-9C14-94D534BC6D1A}
// *********************************************************************//
  _OpcException = interface(IDispatch)
    ['{91B32D57-6F70-442B-9C14-94D534BC6D1A}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Message: WideString; safecall;
    function Get_StackTrace: WideString; safecall;
    function Get_HelpLink: WideString; safecall;
    procedure Set_HelpLink(const pRetVal: WideString); safecall;
    function Get_Source: WideString; safecall;
    procedure Set_Source(const pRetVal: WideString); safecall;
    function Get_InnerException: _Exception; safecall;
    function Get_TargetSite: _MethodBase; safecall;
    function GetBaseException: _Exception; safecall;
    procedure GetObjectData(const info: _SerializationInfo; context: StreamingContext); safecall;
    function Get_Data: _Dictionary; safecall;
    function Get_HResult: Integer; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Message: WideString read Get_Message;
    property StackTrace: WideString read Get_StackTrace;
    property HelpLink: WideString read Get_HelpLink write Set_HelpLink;
    property Source: WideString read Get_Source write Set_Source;
    property InnerException: _Exception read Get_InnerException;
    property TargetSite: _MethodBase read Get_TargetSite;
    property Data: _Dictionary read Get_Data;
    property HResult: Integer read Get_HResult;
  end;

// *********************************************************************//
// DispIntf:  _OpcExceptionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {91B32D57-6F70-442B-9C14-94D534BC6D1A}
// *********************************************************************//
  _OpcExceptionDisp = dispinterface
    ['{91B32D57-6F70-442B-9C14-94D534BC6D1A}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Message: WideString readonly dispid 1610743813;
    property StackTrace: WideString readonly dispid 1610743814;
    property HelpLink: WideString dispid 1610743815;
    property Source: WideString dispid 1610743817;
    property InnerException: _Exception readonly dispid 1610743819;
    property TargetSite: _MethodBase readonly dispid 1610743820;
    function GetBaseException: _Exception; dispid 1610743821;
    procedure GetObjectData(const info: _SerializationInfo; 
                            context: {NOT_OLEAUTO(StreamingContext)}OleVariant); dispid 1610743822;
    property Data: _Dictionary readonly dispid 1610743823;
    property HResult: Integer readonly dispid 1610743824;
  end;

// *********************************************************************//
// Interface: _EasyClientParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9883E930-D681-4466-B0FC-3C8D12209B6E}
// *********************************************************************//
  _EasyClientParameters = interface(IDispatch)
    ['{9883E930-D681-4466-B0FC-3C8D12209B6E}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_ClientReconnectDelay: Integer; safecall;
    procedure Set_ClientReconnectDelay(pRetVal: Integer); safecall;
    function Get_ComInstantiationParameters: _ComInstantiationParameters; safecall;
    procedure _Set_ComInstantiationParameters(const pRetVal: _ComInstantiationParameters); safecall;
    function Get_ServerFailedReconnectDelay: Integer; safecall;
    procedure Set_ServerFailedReconnectDelay(pRetVal: Integer); safecall;
    function Get_ServerShutdownReconnectDelay: Integer; safecall;
    procedure Set_ServerShutdownReconnectDelay(pRetVal: Integer); safecall;
    function Get_ServerStatusCheckPeriod: Integer; safecall;
    procedure Set_ServerStatusCheckPeriod(pRetVal: Integer); safecall;
    function GetEffectiveComInstantiationParameters: _ComInstantiationParameters; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property ClientReconnectDelay: Integer read Get_ClientReconnectDelay write Set_ClientReconnectDelay;
    property ComInstantiationParameters: _ComInstantiationParameters read Get_ComInstantiationParameters write _Set_ComInstantiationParameters;
    property ServerFailedReconnectDelay: Integer read Get_ServerFailedReconnectDelay write Set_ServerFailedReconnectDelay;
    property ServerShutdownReconnectDelay: Integer read Get_ServerShutdownReconnectDelay write Set_ServerShutdownReconnectDelay;
    property ServerStatusCheckPeriod: Integer read Get_ServerStatusCheckPeriod write Set_ServerStatusCheckPeriod;
  end;

// *********************************************************************//
// DispIntf:  _EasyClientParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9883E930-D681-4466-B0FC-3C8D12209B6E}
// *********************************************************************//
  _EasyClientParametersDisp = dispinterface
    ['{9883E930-D681-4466-B0FC-3C8D12209B6E}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property ClientReconnectDelay: Integer dispid 1610743816;
    property ComInstantiationParameters: _ComInstantiationParameters dispid 1610743818;
    property ServerFailedReconnectDelay: Integer dispid 1610743820;
    property ServerShutdownReconnectDelay: Integer dispid 1610743822;
    property ServerStatusCheckPeriod: Integer dispid 1610743824;
    function GetEffectiveComInstantiationParameters: _ComInstantiationParameters; dispid 1610743826;
  end;

// *********************************************************************//
// Interface: _EasyEngineParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E3F3B427-05D2-4552-A4A2-989DC1652C00}
// *********************************************************************//
  _EasyEngineParameters = interface(IDispatch)
    ['{E3F3B427-05D2-4552-A4A2-989DC1652C00}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_GarbageCollectionPeriod: Integer; safecall;
    procedure Set_GarbageCollectionPeriod(pRetVal: Integer); safecall;
    function Get_WorkerSleepDelay: Integer; safecall;
    procedure Set_WorkerSleepDelay(pRetVal: Integer); safecall;
    function Get_DefaultEventQueueSize: Integer; safecall;
    procedure Set_DefaultEventQueueSize(pRetVal: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property GarbageCollectionPeriod: Integer read Get_GarbageCollectionPeriod write Set_GarbageCollectionPeriod;
    property WorkerSleepDelay: Integer read Get_WorkerSleepDelay write Set_WorkerSleepDelay;
    property DefaultEventQueueSize: Integer read Get_DefaultEventQueueSize write Set_DefaultEventQueueSize;
  end;

// *********************************************************************//
// DispIntf:  _EasyEngineParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E3F3B427-05D2-4552-A4A2-989DC1652C00}
// *********************************************************************//
  _EasyEngineParametersDisp = dispinterface
    ['{E3F3B427-05D2-4552-A4A2-989DC1652C00}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property GarbageCollectionPeriod: Integer dispid 1610743816;
    property WorkerSleepDelay: Integer dispid 1610743818;
    property DefaultEventQueueSize: Integer dispid 1610743820;
  end;

// *********************************************************************//
// Interface: _EasyInstanceParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DC7C6223-9248-476F-B514-8824569AF7A1}
// *********************************************************************//
  _EasyInstanceParameters = interface(IDispatch)
    ['{DC7C6223-9248-476F-B514-8824569AF7A1}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_PluginConfigurations: _ConfigurationPartCollection; safecall;
    procedure _Set_PluginConfigurations(const pRetVal: _ConfigurationPartCollection); safecall;
    function Get_PluginSetups: _PluginSetupCollection; safecall;
    procedure _Set_PluginSetups(const pRetVal: _PluginSetupCollection); safecall;
    procedure Reset; safecall;
    function Get_EnableCachePersistence: WordBool; safecall;
    procedure Set_EnableCachePersistence(pRetVal: WordBool); safecall;
    function Get_EnableNativeClient: WordBool; safecall;
    procedure Set_EnableNativeClient(pRetVal: WordBool); safecall;
    function Get_EnableNetApiClient: WordBool; safecall;
    procedure Set_EnableNetApiClient(pRetVal: WordBool); safecall;
    function Get_EnableServiceClient: WordBool; safecall;
    procedure Set_EnableServiceClient(pRetVal: WordBool); safecall;
    function Get_PersistenceKey: WideString; safecall;
    procedure Set_PersistenceKey(const pRetVal: WideString); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property PluginConfigurations: _ConfigurationPartCollection read Get_PluginConfigurations write _Set_PluginConfigurations;
    property PluginSetups: _PluginSetupCollection read Get_PluginSetups write _Set_PluginSetups;
    property EnableCachePersistence: WordBool read Get_EnableCachePersistence write Set_EnableCachePersistence;
    property EnableNativeClient: WordBool read Get_EnableNativeClient write Set_EnableNativeClient;
    property EnableNetApiClient: WordBool read Get_EnableNetApiClient write Set_EnableNetApiClient;
    property EnableServiceClient: WordBool read Get_EnableServiceClient write Set_EnableServiceClient;
    property PersistenceKey: WideString read Get_PersistenceKey write Set_PersistenceKey;
  end;

// *********************************************************************//
// DispIntf:  _EasyInstanceParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DC7C6223-9248-476F-B514-8824569AF7A1}
// *********************************************************************//
  _EasyInstanceParametersDisp = dispinterface
    ['{DC7C6223-9248-476F-B514-8824569AF7A1}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property PluginConfigurations: _ConfigurationPartCollection dispid 1610743816;
    property PluginSetups: _PluginSetupCollection dispid 1610743818;
    procedure Reset; dispid 1610743820;
    property EnableCachePersistence: WordBool dispid 1610743821;
    property EnableNativeClient: WordBool dispid 1610743823;
    property EnableNetApiClient: WordBool dispid 1610743825;
    property EnableServiceClient: WordBool dispid 1610743827;
    property PersistenceKey: WideString dispid 1610743829;
  end;

// *********************************************************************//
// Interface: _EasyMachineParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EB7EA73A-4088-4A54-9623-940F76199F9F}
// *********************************************************************//
  _EasyMachineParameters = interface(IDispatch)
    ['{EB7EA73A-4088-4A54-9623-940F76199F9F}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_ComInstantiationParameters: _ComInstantiationParameters; safecall;
    procedure _Set_ComInstantiationParameters(const pRetVal: _ComInstantiationParameters); safecall;
    function Get_MachineReconnectDelay: Integer; safecall;
    procedure Set_MachineReconnectDelay(pRetVal: Integer); safecall;
    function Get_BrowseViaCategories: WordBool; safecall;
    procedure Set_BrowseViaCategories(pRetVal: WordBool); safecall;
    function Get_BrowseFromRegistry: WordBool; safecall;
    procedure Set_BrowseFromRegistry(pRetVal: WordBool); safecall;
    function GetEffectiveComInstantiationParameters: _ComInstantiationParameters; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property ComInstantiationParameters: _ComInstantiationParameters read Get_ComInstantiationParameters write _Set_ComInstantiationParameters;
    property MachineReconnectDelay: Integer read Get_MachineReconnectDelay write Set_MachineReconnectDelay;
    property BrowseViaCategories: WordBool read Get_BrowseViaCategories write Set_BrowseViaCategories;
    property BrowseFromRegistry: WordBool read Get_BrowseFromRegistry write Set_BrowseFromRegistry;
  end;

// *********************************************************************//
// DispIntf:  _EasyMachineParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EB7EA73A-4088-4A54-9623-940F76199F9F}
// *********************************************************************//
  _EasyMachineParametersDisp = dispinterface
    ['{EB7EA73A-4088-4A54-9623-940F76199F9F}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property ComInstantiationParameters: _ComInstantiationParameters dispid 1610743816;
    property MachineReconnectDelay: Integer dispid 1610743818;
    property BrowseViaCategories: WordBool dispid 1610743820;
    property BrowseFromRegistry: WordBool dispid 1610743822;
    function GetEffectiveComInstantiationParameters: _ComInstantiationParameters; dispid 1610743824;
  end;

// *********************************************************************//
// Interface: _DAVtq
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {53B4DCE5-41BE-4C9D-A55D-04BE52415A81}
// *********************************************************************//
  _DAVtq = interface(IDispatch)
    ['{53B4DCE5-41BE-4C9D-A55D-04BE52415A81}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_HasTimestamp: WordBool; safecall;
    function Get_HasValue: WordBool; safecall;
    function Get_Quality: _DAQuality; safecall;
    procedure _Set_Quality(const pRetVal: _DAQuality); safecall;
    function Get_StatusInfo: StatusInfo; safecall;
    function Get_Timestamp: TDateTime; safecall;
    procedure Set_Timestamp(pRetVal: TDateTime); safecall;
    function Get_TimestampDouble: Double; safecall;
    procedure Set_TimestampDouble(pRetVal: Double); safecall;
    function Get_TimestampLocal: TDateTime; safecall;
    procedure Set_TimestampLocal(pRetVal: TDateTime); safecall;
    function Get_TimestampLocalDouble: Double; safecall;
    procedure Set_TimestampLocalDouble(pRetVal: Double); safecall;
    function Get_Value: OleVariant; safecall;
    procedure _Set_Value(pRetVal: OleVariant); safecall;
    function Get_ValueType: _Type; safecall;
    function DisplayValue: WideString; safecall;
    procedure SetValue(Value: OleVariant); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property HasTimestamp: WordBool read Get_HasTimestamp;
    property HasValue: WordBool read Get_HasValue;
    property Quality: _DAQuality read Get_Quality write _Set_Quality;
    property StatusInfo: StatusInfo read Get_StatusInfo;
    property Timestamp: TDateTime read Get_Timestamp write Set_Timestamp;
    property TimestampDouble: Double read Get_TimestampDouble write Set_TimestampDouble;
    property TimestampLocal: TDateTime read Get_TimestampLocal write Set_TimestampLocal;
    property TimestampLocalDouble: Double read Get_TimestampLocalDouble write Set_TimestampLocalDouble;
    property Value: OleVariant read Get_Value write _Set_Value;
    property ValueType: _Type read Get_ValueType;
  end;

// *********************************************************************//
// DispIntf:  _DAVtqDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {53B4DCE5-41BE-4C9D-A55D-04BE52415A81}
// *********************************************************************//
  _DAVtqDisp = dispinterface
    ['{53B4DCE5-41BE-4C9D-A55D-04BE52415A81}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    function Clone: OleVariant; dispid 1610743815;
    property HasTimestamp: WordBool readonly dispid 1610743816;
    property HasValue: WordBool readonly dispid 1610743817;
    property Quality: _DAQuality dispid 1610743818;
    property StatusInfo: StatusInfo readonly dispid 1610743820;
    property Timestamp: TDateTime dispid 1610743821;
    property TimestampDouble: Double dispid 1610743823;
    property TimestampLocal: TDateTime dispid 1610743825;
    property TimestampLocalDouble: Double dispid 1610743827;
    property Value: OleVariant dispid 1610743829;
    property ValueType: _Type readonly dispid 1610743831;
    function DisplayValue: WideString; dispid 1610743832;
    procedure SetValue(Value: OleVariant); dispid 1610743833;
  end;

// *********************************************************************//
// Interface: _DAAccessRight
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {59598176-113E-4008-B99D-E98F9641E769}
// *********************************************************************//
  _DAAccessRight = interface(IDispatch)
    ['{59598176-113E-4008-B99D-E98F9641E769}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_AllowRead: WordBool; safecall;
    procedure Set_AllowRead(pRetVal: WordBool); safecall;
    function Get_AllowWrite: WordBool; safecall;
    procedure Set_AllowWrite(pRetVal: WordBool); safecall;
    function Get_InternalValue: DAAccessRights; safecall;
    procedure Set_InternalValue(pRetVal: DAAccessRights); safecall;
    function Get_NumericalValue: Integer; safecall;
    procedure Set_NumericalValue(pRetVal: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property AllowRead: WordBool read Get_AllowRead write Set_AllowRead;
    property AllowWrite: WordBool read Get_AllowWrite write Set_AllowWrite;
    property InternalValue: DAAccessRights read Get_InternalValue write Set_InternalValue;
    property NumericalValue: Integer read Get_NumericalValue write Set_NumericalValue;
  end;

// *********************************************************************//
// DispIntf:  _DAAccessRightDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {59598176-113E-4008-B99D-E98F9641E769}
// *********************************************************************//
  _DAAccessRightDisp = dispinterface
    ['{59598176-113E-4008-B99D-E98F9641E769}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property AllowRead: WordBool dispid 1610743816;
    property AllowWrite: WordBool dispid 1610743818;
    property InternalValue: DAAccessRights dispid 1610743820;
    property NumericalValue: Integer dispid 1610743822;
  end;

// *********************************************************************//
// Interface: _DAPropertyId
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {84E3053B-C20C-41FC-BDC5-676DC30453F9}
// *********************************************************************//
  _DAPropertyId = interface(IDispatch)
    ['{84E3053B-C20C-41FC-BDC5-676DC30453F9}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_InternalValue: Int64; safecall;
    procedure Set_InternalValue(pRetVal: Int64); safecall;
    function Get_IsNull: WordBool; safecall;
    function Get_NumericalValue: Integer; safecall;
    procedure Set_NumericalValue(pRetVal: Integer); safecall;
    function GetName(const serverClsidString: WideString): WideString; safecall;
    function GetPropertyType(const serverClsidString: WideString): _Type; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property InternalValue: Int64 read Get_InternalValue write Set_InternalValue;
    property IsNull: WordBool read Get_IsNull;
    property NumericalValue: Integer read Get_NumericalValue write Set_NumericalValue;
  end;

// *********************************************************************//
// DispIntf:  _DAPropertyIdDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {84E3053B-C20C-41FC-BDC5-676DC30453F9}
// *********************************************************************//
  _DAPropertyIdDisp = dispinterface
    ['{84E3053B-C20C-41FC-BDC5-676DC30453F9}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property InternalValue: Int64 dispid 1610743816;
    property IsNull: WordBool readonly dispid 1610743818;
    property NumericalValue: Integer dispid 1610743819;
    function GetName(const serverClsidString: WideString): WideString; dispid 1610743821;
    function GetPropertyType(const serverClsidString: WideString): _Type; dispid 1610743822;
  end;

// *********************************************************************//
// Interface: _DAQuality
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E26981AB-A692-4CBB-8B3D-604DCB78875F}
// *********************************************************************//
  _DAQuality = interface(IDispatch)
    ['{E26981AB-A692-4CBB-8B3D-604DCB78875F}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_CarriesValue: WordBool; safecall;
    function Get_InternalValue: DAQualities; safecall;
    procedure Set_InternalValue(pRetVal: DAQualities); safecall;
    function Get_IsBad: WordBool; safecall;
    function Get_IsGood: WordBool; safecall;
    function Get_IsUncertain: WordBool; safecall;
    function Get_LimitBitField: DALimitChoice; safecall;
    procedure Set_LimitBitField(pRetVal: DALimitChoice); safecall;
    function Get_NumericalValue: Integer; safecall;
    procedure Set_NumericalValue(pRetVal: Integer); safecall;
    function Get_QualityChoiceBitField: DAQualityChoice; safecall;
    function Get_StatusBitField: DAStatusChoice; safecall;
    procedure Set_StatusBitField(pRetVal: DAStatusChoice); safecall;
    procedure SetQualityAndSubStatus(qualityChoice: DAQualityChoice; subStatus: Smallint); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property CarriesValue: WordBool read Get_CarriesValue;
    property InternalValue: DAQualities read Get_InternalValue write Set_InternalValue;
    property IsBad: WordBool read Get_IsBad;
    property IsGood: WordBool read Get_IsGood;
    property IsUncertain: WordBool read Get_IsUncertain;
    property LimitBitField: DALimitChoice read Get_LimitBitField write Set_LimitBitField;
    property NumericalValue: Integer read Get_NumericalValue write Set_NumericalValue;
    property QualityChoiceBitField: DAQualityChoice read Get_QualityChoiceBitField;
    property StatusBitField: DAStatusChoice read Get_StatusBitField write Set_StatusBitField;
  end;

// *********************************************************************//
// DispIntf:  _DAQualityDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E26981AB-A692-4CBB-8B3D-604DCB78875F}
// *********************************************************************//
  _DAQualityDisp = dispinterface
    ['{E26981AB-A692-4CBB-8B3D-604DCB78875F}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    function Clone: OleVariant; dispid 1610743815;
    property StandardName: WideString dispid 1610743816;
    property CarriesValue: WordBool readonly dispid 1610743818;
    property InternalValue: DAQualities dispid 1610743819;
    property IsBad: WordBool readonly dispid 1610743821;
    property IsGood: WordBool readonly dispid 1610743822;
    property IsUncertain: WordBool readonly dispid 1610743823;
    property LimitBitField: DALimitChoice dispid 1610743824;
    property NumericalValue: Integer dispid 1610743826;
    property QualityChoiceBitField: DAQualityChoice readonly dispid 1610743828;
    property StatusBitField: DAStatusChoice dispid 1610743829;
    procedure SetQualityAndSubStatus(qualityChoice: DAQualityChoice; subStatus: Smallint); dispid 1610743831;
  end;

// *********************************************************************//
// Interface: _DANodeDescriptor
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8F645250-0B1D-4AC9-9CCF-7109F2F7A0D1}
// *********************************************************************//
  _DANodeDescriptor = interface(IDispatch)
    ['{8F645250-0B1D-4AC9-9CCF-7109F2F7A0D1}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_AliasName: WideString; safecall;
    procedure Set_AliasName(const pRetVal: WideString); safecall;
    function Get_IsAliased: WordBool; safecall;
    function Get_ArgumentString: WideString; safecall;
    function Get_BrowsePath: _BrowsePath; safecall;
    procedure _Set_BrowsePath(const pRetVal: _BrowsePath); safecall;
    function Get_HasBrowsePath: WordBool; safecall;
    function Get_HasNodeId: WordBool; safecall;
    function Get_IsNull: WordBool; safecall;
    function Get_IsRoot: WordBool; safecall;
    function Get_NodeId: WideString; safecall;
    function Get_NodePath: WideString; safecall;
    procedure Set_NodePath(const pRetVal: WideString); safecall;
    function Match(other: OleVariant): WordBool; safecall;
    function Get_BrowsePathStartingNodeDescriptor: _DANodeDescriptor; safecall;
    procedure _Set_BrowsePathStartingNodeDescriptor(const pRetVal: _DANodeDescriptor); safecall;
    function Get_ItemId: WideString; safecall;
    procedure Set_ItemId(const pRetVal: WideString); safecall;
    function Clone: _DANodeDescriptor; safecall;
    function Flatten: _DANodeDescriptor; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property AliasName: WideString read Get_AliasName write Set_AliasName;
    property IsAliased: WordBool read Get_IsAliased;
    property ArgumentString: WideString read Get_ArgumentString;
    property BrowsePath: _BrowsePath read Get_BrowsePath write _Set_BrowsePath;
    property HasBrowsePath: WordBool read Get_HasBrowsePath;
    property HasNodeId: WordBool read Get_HasNodeId;
    property IsNull: WordBool read Get_IsNull;
    property IsRoot: WordBool read Get_IsRoot;
    property NodeId: WideString read Get_NodeId;
    property NodePath: WideString read Get_NodePath write Set_NodePath;
    property BrowsePathStartingNodeDescriptor: _DANodeDescriptor read Get_BrowsePathStartingNodeDescriptor write _Set_BrowsePathStartingNodeDescriptor;
    property ItemId: WideString read Get_ItemId write Set_ItemId;
  end;

// *********************************************************************//
// DispIntf:  _DANodeDescriptorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8F645250-0B1D-4AC9-9CCF-7109F2F7A0D1}
// *********************************************************************//
  _DANodeDescriptorDisp = dispinterface
    ['{8F645250-0B1D-4AC9-9CCF-7109F2F7A0D1}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property AliasName: WideString dispid 1610743813;
    property IsAliased: WordBool readonly dispid 1610743815;
    property ArgumentString: WideString readonly dispid 1610743816;
    property BrowsePath: _BrowsePath dispid 1610743817;
    property HasBrowsePath: WordBool readonly dispid 1610743819;
    property HasNodeId: WordBool readonly dispid 1610743820;
    property IsNull: WordBool readonly dispid 1610743821;
    property IsRoot: WordBool readonly dispid 1610743822;
    property NodeId: WideString readonly dispid 1610743823;
    property NodePath: WideString dispid 1610743824;
    function Match(other: OleVariant): WordBool; dispid 1610743826;
    property BrowsePathStartingNodeDescriptor: _DANodeDescriptor dispid 1610743827;
    property ItemId: WideString dispid 1610743829;
    function Clone: _DANodeDescriptor; dispid 1610743831;
    function Flatten: _DANodeDescriptor; dispid 1610743832;
  end;

// *********************************************************************//
// Interface: _DAPropertyDescriptor
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4087B12A-1625-41A7-A591-177422948084}
// *********************************************************************//
  _DAPropertyDescriptor = interface(IDispatch)
    ['{4087B12A-1625-41A7-A591-177422948084}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_IsNull: WordBool; safecall;
    function Get_PropertyId: _DAPropertyId; safecall;
    procedure _Set_PropertyId(const pRetVal: _DAPropertyId); safecall;
    function Get_QualifiedName: _XmlQualifiedName2; safecall;
    procedure _Set_QualifiedName(const pRetVal: _XmlQualifiedName2); safecall;
    function Get_QualifiedNameString: WideString; safecall;
    procedure Set_QualifiedNameString(const pRetVal: WideString); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property IsNull: WordBool read Get_IsNull;
    property PropertyId: _DAPropertyId read Get_PropertyId write _Set_PropertyId;
    property QualifiedName: _XmlQualifiedName2 read Get_QualifiedName write _Set_QualifiedName;
    property QualifiedNameString: WideString read Get_QualifiedNameString write Set_QualifiedNameString;
  end;

// *********************************************************************//
// DispIntf:  _DAPropertyDescriptorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4087B12A-1625-41A7-A591-177422948084}
// *********************************************************************//
  _DAPropertyDescriptorDisp = dispinterface
    ['{4087B12A-1625-41A7-A591-177422948084}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property IsNull: WordBool readonly dispid 1610743814;
    property PropertyId: _DAPropertyId dispid 1610743815;
    property QualifiedName: _XmlQualifiedName2 dispid 1610743817;
    property QualifiedNameString: WideString dispid 1610743819;
  end;

// *********************************************************************//
// Interface: _DABrowseParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {902584CE-E9E5-4F44-A419-3BDFEF5D6FE2}
// *********************************************************************//
  _DABrowseParameters = interface(IDispatch)
    ['{902584CE-E9E5-4F44-A419-3BDFEF5D6FE2}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_BrowseFilter: DABrowseFilter; safecall;
    procedure Set_BrowseFilter(pRetVal: DABrowseFilter); safecall;
    function Get_ElementNameFilter: WideString; safecall;
    procedure Set_ElementNameFilter(const pRetVal: WideString); safecall;
    function Get_VendorFilter: WideString; safecall;
    procedure Set_VendorFilter(const pRetVal: WideString); safecall;
    function Get_DataTypeFilter: _VarType; safecall;
    procedure _Set_DataTypeFilter(const pRetVal: _VarType); safecall;
    function Get_AccessRightsFilter: _DAAccessRight; safecall;
    procedure _Set_AccessRightsFilter(const pRetVal: _DAAccessRight); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property BrowseFilter: DABrowseFilter read Get_BrowseFilter write Set_BrowseFilter;
    property ElementNameFilter: WideString read Get_ElementNameFilter write Set_ElementNameFilter;
    property VendorFilter: WideString read Get_VendorFilter write Set_VendorFilter;
    property DataTypeFilter: _VarType read Get_DataTypeFilter write _Set_DataTypeFilter;
    property AccessRightsFilter: _DAAccessRight read Get_AccessRightsFilter write _Set_AccessRightsFilter;
  end;

// *********************************************************************//
// DispIntf:  _DABrowseParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {902584CE-E9E5-4F44-A419-3BDFEF5D6FE2}
// *********************************************************************//
  _DABrowseParametersDisp = dispinterface
    ['{902584CE-E9E5-4F44-A419-3BDFEF5D6FE2}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property BrowseFilter: DABrowseFilter dispid 1610743816;
    property ElementNameFilter: WideString dispid 1610743818;
    property VendorFilter: WideString dispid 1610743820;
    property DataTypeFilter: _VarType dispid 1610743822;
    property AccessRightsFilter: _DAAccessRight dispid 1610743824;
  end;

// *********************************************************************//
// Interface: _DAGroupParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {720E4859-3E71-492A-B372-B3DABC352D51}
// *********************************************************************//
  _DAGroupParameters = interface(IDispatch)
    ['{720E4859-3E71-492A-B372-B3DABC352D51}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_Locale: Integer; safecall;
    procedure Set_Locale(pRetVal: Integer); safecall;
    function Get_RequestedUpdateRate: Integer; safecall;
    procedure Set_RequestedUpdateRate(pRetVal: Integer); safecall;
    function Get_PercentDeadband: Single; safecall;
    procedure Set_PercentDeadband(pRetVal: Single); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property Locale: Integer read Get_Locale write Set_Locale;
    property RequestedUpdateRate: Integer read Get_RequestedUpdateRate write Set_RequestedUpdateRate;
    property PercentDeadband: Single read Get_PercentDeadband write Set_PercentDeadband;
  end;

// *********************************************************************//
// DispIntf:  _DAGroupParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {720E4859-3E71-492A-B372-B3DABC352D51}
// *********************************************************************//
  _DAGroupParametersDisp = dispinterface
    ['{720E4859-3E71-492A-B372-B3DABC352D51}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property Locale: Integer dispid 1610743816;
    property RequestedUpdateRate: Integer dispid 1610743818;
    property PercentDeadband: Single dispid 1610743820;
  end;

// *********************************************************************//
// Interface: _DAReadParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9678F21F-C8DF-4EF1-A3ED-375D35836D6F}
// *********************************************************************//
  _DAReadParameters = interface(IDispatch)
    ['{9678F21F-C8DF-4EF1-A3ED-375D35836D6F}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_DataSource: DADataSource; safecall;
    procedure Set_DataSource(pRetVal: DADataSource); safecall;
    function Get_ValueAge: Integer; safecall;
    procedure Set_ValueAge(pRetVal: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property DataSource: DADataSource read Get_DataSource write Set_DataSource;
    property ValueAge: Integer read Get_ValueAge write Set_ValueAge;
  end;

// *********************************************************************//
// DispIntf:  _DAReadParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9678F21F-C8DF-4EF1-A3ED-375D35836D6F}
// *********************************************************************//
  _DAReadParametersDisp = dispinterface
    ['{9678F21F-C8DF-4EF1-A3ED-375D35836D6F}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property DataSource: DADataSource dispid 1610743816;
    property ValueAge: Integer dispid 1610743818;
  end;

// *********************************************************************//
// Interface: _DAOptimizerPluginParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {62BCF798-6430-438A-84D4-ABCF93F5F9C9}
// *********************************************************************//
  _DAOptimizerPluginParameters = interface(IDispatch)
    ['{62BCF798-6430-438A-84D4-ABCF93F5F9C9}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_AutoSubscribingParameters: _DAAutoSubscribingParameters; safecall;
    procedure _Set_AutoSubscribingParameters(const pRetVal: _DAAutoSubscribingParameters); safecall;
    function Get_EnableAutoSubscribing: WordBool; safecall;
    procedure Set_EnableAutoSubscribing(pRetVal: WordBool); safecall;
    function Get_EnableItemCaching: WordBool; safecall;
    procedure Set_EnableItemCaching(pRetVal: WordBool); safecall;
    function Get_EnableParameterBucketing: WordBool; safecall;
    procedure Set_EnableParameterBucketing(pRetVal: WordBool); safecall;
    function Get_EnableParameterRestricting: WordBool; safecall;
    procedure Set_EnableParameterRestricting(pRetVal: WordBool); safecall;
    function Get_EnableServerDatabase: WordBool; safecall;
    procedure Set_EnableServerDatabase(pRetVal: WordBool); safecall;
    function Get_EnableRequestChunking: WordBool; safecall;
    procedure Set_EnableRequestChunking(pRetVal: WordBool); safecall;
    function Get_EnableRequestMerging: WordBool; safecall;
    procedure Set_EnableRequestMerging(pRetVal: WordBool); safecall;
    function Get_EnableSubscriptionBlending: WordBool; safecall;
    procedure Set_EnableSubscriptionBlending(pRetVal: WordBool); safecall;
    function Get_ParameterBucketingParameters: _DAParameterBucketingParameters; safecall;
    procedure _Set_ParameterBucketingParameters(const pRetVal: _DAParameterBucketingParameters); safecall;
    function Get_ParameterRestrictingParameters: _DAParameterRestrictingParameters; safecall;
    procedure _Set_ParameterRestrictingParameters(const pRetVal: _DAParameterRestrictingParameters); safecall;
    function Get_RequestChunkingParameters: _DARequestChunkingParameters; safecall;
    procedure _Set_RequestChunkingParameters(const pRetVal: _DARequestChunkingParameters); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property AutoSubscribingParameters: _DAAutoSubscribingParameters read Get_AutoSubscribingParameters write _Set_AutoSubscribingParameters;
    property EnableAutoSubscribing: WordBool read Get_EnableAutoSubscribing write Set_EnableAutoSubscribing;
    property EnableItemCaching: WordBool read Get_EnableItemCaching write Set_EnableItemCaching;
    property EnableParameterBucketing: WordBool read Get_EnableParameterBucketing write Set_EnableParameterBucketing;
    property EnableParameterRestricting: WordBool read Get_EnableParameterRestricting write Set_EnableParameterRestricting;
    property EnableServerDatabase: WordBool read Get_EnableServerDatabase write Set_EnableServerDatabase;
    property EnableRequestChunking: WordBool read Get_EnableRequestChunking write Set_EnableRequestChunking;
    property EnableRequestMerging: WordBool read Get_EnableRequestMerging write Set_EnableRequestMerging;
    property EnableSubscriptionBlending: WordBool read Get_EnableSubscriptionBlending write Set_EnableSubscriptionBlending;
    property ParameterBucketingParameters: _DAParameterBucketingParameters read Get_ParameterBucketingParameters write _Set_ParameterBucketingParameters;
    property ParameterRestrictingParameters: _DAParameterRestrictingParameters read Get_ParameterRestrictingParameters write _Set_ParameterRestrictingParameters;
    property RequestChunkingParameters: _DARequestChunkingParameters read Get_RequestChunkingParameters write _Set_RequestChunkingParameters;
  end;

// *********************************************************************//
// DispIntf:  _DAOptimizerPluginParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {62BCF798-6430-438A-84D4-ABCF93F5F9C9}
// *********************************************************************//
  _DAOptimizerPluginParametersDisp = dispinterface
    ['{62BCF798-6430-438A-84D4-ABCF93F5F9C9}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property AutoSubscribingParameters: _DAAutoSubscribingParameters dispid 1610743816;
    property EnableAutoSubscribing: WordBool dispid 1610743818;
    property EnableItemCaching: WordBool dispid 1610743820;
    property EnableParameterBucketing: WordBool dispid 1610743822;
    property EnableParameterRestricting: WordBool dispid 1610743824;
    property EnableServerDatabase: WordBool dispid 1610743826;
    property EnableRequestChunking: WordBool dispid 1610743828;
    property EnableRequestMerging: WordBool dispid 1610743830;
    property EnableSubscriptionBlending: WordBool dispid 1610743832;
    property ParameterBucketingParameters: _DAParameterBucketingParameters dispid 1610743834;
    property ParameterRestrictingParameters: _DAParameterRestrictingParameters dispid 1610743836;
    property RequestChunkingParameters: _DARequestChunkingParameters dispid 1610743838;
  end;

// *********************************************************************//
// Interface: _DAAutoSubscribingParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {77FF5051-2D61-4944-8E8C-165C9251E930}
// *********************************************************************//
  _DAAutoSubscribingParameters = interface(IDispatch)
    ['{77FF5051-2D61-4944-8E8C-165C9251E930}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_AbandonIntervalMinimum: Integer; safecall;
    procedure Set_AbandonIntervalMinimum(pRetVal: Integer); safecall;
    function Get_AbandonRateMultiplier: Single; safecall;
    procedure Set_AbandonRateMultiplier(pRetVal: Single); safecall;
    function Get_AutoAdjustmentPeriod: Integer; safecall;
    procedure Set_AutoAdjustmentPeriod(pRetVal: Integer); safecall;
    function Get_FastestAutomaticUpdateRate: Integer; safecall;
    procedure Set_FastestAutomaticUpdateRate(pRetVal: Integer); safecall;
    function Get_MaximumEffectiveValueAge: Integer; safecall;
    procedure Set_MaximumEffectiveValueAge(pRetVal: Integer); safecall;
    function Get_MinimumEffectiveValueAge: Integer; safecall;
    procedure Set_MinimumEffectiveValueAge(pRetVal: Integer); safecall;
    function Get_ReadIntervalAggregateMinimumValues: Integer; safecall;
    procedure Set_ReadIntervalAggregateMinimumValues(pRetVal: Integer); safecall;
    function Get_ReadIntervalAggregateWindowSize: Integer; safecall;
    procedure Set_ReadIntervalAggregateWindowSize(pRetVal: Integer); safecall;
    function Get_RequestedUpdateRateFactor: Single; safecall;
    procedure Set_RequestedUpdateRateFactor(pRetVal: Single); safecall;
    function Get_SlowestAutomaticUpdateRate: Integer; safecall;
    procedure Set_SlowestAutomaticUpdateRate(pRetVal: Integer); safecall;
    function Get_UpdateRateNegativeHysteresis: Single; safecall;
    procedure Set_UpdateRateNegativeHysteresis(pRetVal: Single); safecall;
    function Get_UpdateRatePositiveHysteresis: Single; safecall;
    procedure Set_UpdateRatePositiveHysteresis(pRetVal: Single); safecall;
    function Get_ValueAgeAggregateMinimumValues: Integer; safecall;
    procedure Set_ValueAgeAggregateMinimumValues(pRetVal: Integer); safecall;
    function Get_ValueAgeAggregateWindowSize: Integer; safecall;
    procedure Set_ValueAgeAggregateWindowSize(pRetVal: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property AbandonIntervalMinimum: Integer read Get_AbandonIntervalMinimum write Set_AbandonIntervalMinimum;
    property AbandonRateMultiplier: Single read Get_AbandonRateMultiplier write Set_AbandonRateMultiplier;
    property AutoAdjustmentPeriod: Integer read Get_AutoAdjustmentPeriod write Set_AutoAdjustmentPeriod;
    property FastestAutomaticUpdateRate: Integer read Get_FastestAutomaticUpdateRate write Set_FastestAutomaticUpdateRate;
    property MaximumEffectiveValueAge: Integer read Get_MaximumEffectiveValueAge write Set_MaximumEffectiveValueAge;
    property MinimumEffectiveValueAge: Integer read Get_MinimumEffectiveValueAge write Set_MinimumEffectiveValueAge;
    property ReadIntervalAggregateMinimumValues: Integer read Get_ReadIntervalAggregateMinimumValues write Set_ReadIntervalAggregateMinimumValues;
    property ReadIntervalAggregateWindowSize: Integer read Get_ReadIntervalAggregateWindowSize write Set_ReadIntervalAggregateWindowSize;
    property RequestedUpdateRateFactor: Single read Get_RequestedUpdateRateFactor write Set_RequestedUpdateRateFactor;
    property SlowestAutomaticUpdateRate: Integer read Get_SlowestAutomaticUpdateRate write Set_SlowestAutomaticUpdateRate;
    property UpdateRateNegativeHysteresis: Single read Get_UpdateRateNegativeHysteresis write Set_UpdateRateNegativeHysteresis;
    property UpdateRatePositiveHysteresis: Single read Get_UpdateRatePositiveHysteresis write Set_UpdateRatePositiveHysteresis;
    property ValueAgeAggregateMinimumValues: Integer read Get_ValueAgeAggregateMinimumValues write Set_ValueAgeAggregateMinimumValues;
    property ValueAgeAggregateWindowSize: Integer read Get_ValueAgeAggregateWindowSize write Set_ValueAgeAggregateWindowSize;
  end;

// *********************************************************************//
// DispIntf:  _DAAutoSubscribingParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {77FF5051-2D61-4944-8E8C-165C9251E930}
// *********************************************************************//
  _DAAutoSubscribingParametersDisp = dispinterface
    ['{77FF5051-2D61-4944-8E8C-165C9251E930}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property AbandonIntervalMinimum: Integer dispid 1610743816;
    property AbandonRateMultiplier: Single dispid 1610743818;
    property AutoAdjustmentPeriod: Integer dispid 1610743820;
    property FastestAutomaticUpdateRate: Integer dispid 1610743822;
    property MaximumEffectiveValueAge: Integer dispid 1610743824;
    property MinimumEffectiveValueAge: Integer dispid 1610743826;
    property ReadIntervalAggregateMinimumValues: Integer dispid 1610743828;
    property ReadIntervalAggregateWindowSize: Integer dispid 1610743830;
    property RequestedUpdateRateFactor: Single dispid 1610743832;
    property SlowestAutomaticUpdateRate: Integer dispid 1610743834;
    property UpdateRateNegativeHysteresis: Single dispid 1610743836;
    property UpdateRatePositiveHysteresis: Single dispid 1610743838;
    property ValueAgeAggregateMinimumValues: Integer dispid 1610743840;
    property ValueAgeAggregateWindowSize: Integer dispid 1610743842;
  end;

// *********************************************************************//
// Interface: _DAParameterBucketingParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0C39832A-300E-420E-B537-E108747524F5}
// *********************************************************************//
  _DAParameterBucketingParameters = interface(IDispatch)
    ['{0C39832A-300E-420E-B537-E108747524F5}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_PercentDeadbandBucketsPerDecade: Single; safecall;
    procedure Set_PercentDeadbandBucketsPerDecade(pRetVal: Single); safecall;
    function Get_UpdateRateBucketsPerDecade: Single; safecall;
    procedure Set_UpdateRateBucketsPerDecade(pRetVal: Single); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property PercentDeadbandBucketsPerDecade: Single read Get_PercentDeadbandBucketsPerDecade write Set_PercentDeadbandBucketsPerDecade;
    property UpdateRateBucketsPerDecade: Single read Get_UpdateRateBucketsPerDecade write Set_UpdateRateBucketsPerDecade;
  end;

// *********************************************************************//
// DispIntf:  _DAParameterBucketingParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0C39832A-300E-420E-B537-E108747524F5}
// *********************************************************************//
  _DAParameterBucketingParametersDisp = dispinterface
    ['{0C39832A-300E-420E-B537-E108747524F5}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property PercentDeadbandBucketsPerDecade: Single dispid 1610743816;
    property UpdateRateBucketsPerDecade: Single dispid 1610743818;
  end;

// *********************************************************************//
// Interface: _DAParameterRestrictingParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0AA8443B-CA07-4974-94A1-18661DB719DF}
// *********************************************************************//
  _DAParameterRestrictingParameters = interface(IDispatch)
    ['{0AA8443B-CA07-4974-94A1-18661DB719DF}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_FastestUpdateRate: Integer; safecall;
    procedure Set_FastestUpdateRate(pRetVal: Integer); safecall;
    function Get_HighestPercentDeadband: Single; safecall;
    procedure Set_HighestPercentDeadband(pRetVal: Single); safecall;
    function Get_LowestPercentDeadband: Single; safecall;
    procedure Set_LowestPercentDeadband(pRetVal: Single); safecall;
    function Get_SlowestUpdateRate: Integer; safecall;
    procedure Set_SlowestUpdateRate(pRetVal: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property FastestUpdateRate: Integer read Get_FastestUpdateRate write Set_FastestUpdateRate;
    property HighestPercentDeadband: Single read Get_HighestPercentDeadband write Set_HighestPercentDeadband;
    property LowestPercentDeadband: Single read Get_LowestPercentDeadband write Set_LowestPercentDeadband;
    property SlowestUpdateRate: Integer read Get_SlowestUpdateRate write Set_SlowestUpdateRate;
  end;

// *********************************************************************//
// DispIntf:  _DAParameterRestrictingParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0AA8443B-CA07-4974-94A1-18661DB719DF}
// *********************************************************************//
  _DAParameterRestrictingParametersDisp = dispinterface
    ['{0AA8443B-CA07-4974-94A1-18661DB719DF}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property FastestUpdateRate: Integer dispid 1610743816;
    property HighestPercentDeadband: Single dispid 1610743818;
    property LowestPercentDeadband: Single dispid 1610743820;
    property SlowestUpdateRate: Integer dispid 1610743822;
  end;

// *********************************************************************//
// Interface: _DARequestChunkingParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {55D02954-0101-448B-BC33-65467EF6BD82}
// *********************************************************************//
  _DARequestChunkingParameters = interface(IDispatch)
    ['{55D02954-0101-448B-BC33-65467EF6BD82}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_ChangeItemSubscriptionsChunkSize: Integer; safecall;
    procedure Set_ChangeItemSubscriptionsChunkSize(pRetVal: Integer); safecall;
    function Get_GroupByServer: WordBool; safecall;
    procedure Set_GroupByServer(pRetVal: WordBool); safecall;
    function Get_GetPropertyValuesChunkSize: Integer; safecall;
    procedure Set_GetPropertyValuesChunkSize(pRetVal: Integer); safecall;
    function Get_ReadItemsChunkSize: Integer; safecall;
    procedure Set_ReadItemsChunkSize(pRetVal: Integer); safecall;
    function Get_SubscribeItemsChunkSize: Integer; safecall;
    procedure Set_SubscribeItemsChunkSize(pRetVal: Integer); safecall;
    function Get_UnsubscribeItemsChunkSize: Integer; safecall;
    procedure Set_UnsubscribeItemsChunkSize(pRetVal: Integer); safecall;
    function Get_WriteItemsChunkSize: Integer; safecall;
    procedure Set_WriteItemsChunkSize(pRetVal: Integer); safecall;
    function Get_WriteItemValuesChunkSize: Integer; safecall;
    procedure Set_WriteItemValuesChunkSize(pRetVal: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property ChangeItemSubscriptionsChunkSize: Integer read Get_ChangeItemSubscriptionsChunkSize write Set_ChangeItemSubscriptionsChunkSize;
    property GroupByServer: WordBool read Get_GroupByServer write Set_GroupByServer;
    property GetPropertyValuesChunkSize: Integer read Get_GetPropertyValuesChunkSize write Set_GetPropertyValuesChunkSize;
    property ReadItemsChunkSize: Integer read Get_ReadItemsChunkSize write Set_ReadItemsChunkSize;
    property SubscribeItemsChunkSize: Integer read Get_SubscribeItemsChunkSize write Set_SubscribeItemsChunkSize;
    property UnsubscribeItemsChunkSize: Integer read Get_UnsubscribeItemsChunkSize write Set_UnsubscribeItemsChunkSize;
    property WriteItemsChunkSize: Integer read Get_WriteItemsChunkSize write Set_WriteItemsChunkSize;
    property WriteItemValuesChunkSize: Integer read Get_WriteItemValuesChunkSize write Set_WriteItemValuesChunkSize;
  end;

// *********************************************************************//
// DispIntf:  _DARequestChunkingParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {55D02954-0101-448B-BC33-65467EF6BD82}
// *********************************************************************//
  _DARequestChunkingParametersDisp = dispinterface
    ['{55D02954-0101-448B-BC33-65467EF6BD82}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property ChangeItemSubscriptionsChunkSize: Integer dispid 1610743816;
    property GroupByServer: WordBool dispid 1610743818;
    property GetPropertyValuesChunkSize: Integer dispid 1610743820;
    property ReadItemsChunkSize: Integer dispid 1610743822;
    property SubscribeItemsChunkSize: Integer dispid 1610743824;
    property UnsubscribeItemsChunkSize: Integer dispid 1610743826;
    property WriteItemsChunkSize: Integer dispid 1610743828;
    property WriteItemValuesChunkSize: Integer dispid 1610743830;
  end;

// *********************************************************************//
// Interface: _DANodeArguments
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A2DBAC49-D05F-485A-B18D-6119B064E71D}
// *********************************************************************//
  _DANodeArguments = interface(IDispatch)
    ['{A2DBAC49-D05F-485A-B18D-6119B064E71D}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_State: OleVariant; safecall;
    procedure _Set_State(pRetVal: OleVariant); safecall;
    function MemberwiseClone: _OperationArguments; safecall;
    procedure SetState(State: OleVariant); safecall;
    function Get_ServerDescriptor: _ServerDescriptor; safecall;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor); safecall;
    function Get_NodeDescriptor: _DANodeDescriptor; safecall;
    procedure _Set_NodeDescriptor(const pRetVal: _DANodeDescriptor); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property State: OleVariant read Get_State write _Set_State;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property NodeDescriptor: _DANodeDescriptor read Get_NodeDescriptor write _Set_NodeDescriptor;
  end;

// *********************************************************************//
// DispIntf:  _DANodeArgumentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A2DBAC49-D05F-485A-B18D-6119B064E71D}
// *********************************************************************//
  _DANodeArgumentsDisp = dispinterface
    ['{A2DBAC49-D05F-485A-B18D-6119B064E71D}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property State: OleVariant dispid 1610743814;
    function MemberwiseClone: _OperationArguments; dispid 1610743816;
    procedure SetState(State: OleVariant); dispid 1610743817;
    property ServerDescriptor: _ServerDescriptor dispid 1610743818;
    property NodeDescriptor: _DANodeDescriptor dispid 1610743820;
  end;

// *********************************************************************//
// Interface: _DAHandleGroupArguments
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B995E390-8614-4BE8-A4C1-134609EA4A50}
// *********************************************************************//
  _DAHandleGroupArguments = interface(IDispatch)
    ['{B995E390-8614-4BE8-A4C1-134609EA4A50}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_State: OleVariant; safecall;
    procedure _Set_State(pRetVal: OleVariant); safecall;
    function MemberwiseClone: _OperationArguments; safecall;
    procedure SetState(State: OleVariant); safecall;
    function Get_Handle: Integer; safecall;
    procedure Set_Handle(pRetVal: Integer); safecall;
    function Get_GroupParameters: _DAGroupParameters; safecall;
    procedure _Set_GroupParameters(const pRetVal: _DAGroupParameters); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property State: OleVariant read Get_State write _Set_State;
    property Handle: Integer read Get_Handle write Set_Handle;
    property GroupParameters: _DAGroupParameters read Get_GroupParameters write _Set_GroupParameters;
  end;

// *********************************************************************//
// DispIntf:  _DAHandleGroupArgumentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B995E390-8614-4BE8-A4C1-134609EA4A50}
// *********************************************************************//
  _DAHandleGroupArgumentsDisp = dispinterface
    ['{B995E390-8614-4BE8-A4C1-134609EA4A50}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property State: OleVariant dispid 1610743814;
    function MemberwiseClone: _OperationArguments; dispid 1610743816;
    procedure SetState(State: OleVariant); dispid 1610743817;
    property Handle: Integer dispid 1610743818;
    property GroupParameters: _DAGroupParameters dispid 1610743820;
  end;

// *********************************************************************//
// Interface: _DAItemArguments
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A068C3C0-75AB-475C-A3F5-08FE98D5CB92}
// *********************************************************************//
  _DAItemArguments = interface(IDispatch)
    ['{A068C3C0-75AB-475C-A3F5-08FE98D5CB92}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_State: OleVariant; safecall;
    procedure _Set_State(pRetVal: OleVariant); safecall;
    function MemberwiseClone: _OperationArguments; safecall;
    procedure SetState(State: OleVariant); safecall;
    function Get_ServerDescriptor: _ServerDescriptor; safecall;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor); safecall;
    function Get_ItemDescriptor: _DAItemDescriptor; safecall;
    procedure _Set_ItemDescriptor(const pRetVal: _DAItemDescriptor); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property State: OleVariant read Get_State write _Set_State;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property ItemDescriptor: _DAItemDescriptor read Get_ItemDescriptor write _Set_ItemDescriptor;
  end;

// *********************************************************************//
// DispIntf:  _DAItemArgumentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A068C3C0-75AB-475C-A3F5-08FE98D5CB92}
// *********************************************************************//
  _DAItemArgumentsDisp = dispinterface
    ['{A068C3C0-75AB-475C-A3F5-08FE98D5CB92}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property State: OleVariant dispid 1610743814;
    function MemberwiseClone: _OperationArguments; dispid 1610743816;
    procedure SetState(State: OleVariant); dispid 1610743817;
    property ServerDescriptor: _ServerDescriptor dispid 1610743818;
    property ItemDescriptor: _DAItemDescriptor dispid 1610743820;
  end;

// *********************************************************************//
// Interface: _DAItemGroupArguments
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D394C96F-3774-4BDE-B38D-FA91AA182ADF}
// *********************************************************************//
  _DAItemGroupArguments = interface(IDispatch)
    ['{D394C96F-3774-4BDE-B38D-FA91AA182ADF}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_State: OleVariant; safecall;
    procedure _Set_State(pRetVal: OleVariant); safecall;
    function MemberwiseClone: _OperationArguments; safecall;
    procedure SetState(State: OleVariant); safecall;
    function Get_ServerDescriptor: _ServerDescriptor; safecall;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor); safecall;
    function Get_ItemDescriptor: _DAItemDescriptor; safecall;
    procedure _Set_ItemDescriptor(const pRetVal: _DAItemDescriptor); safecall;
    function Get_GroupParameters: _DAGroupParameters; safecall;
    procedure _Set_GroupParameters(const pRetVal: _DAGroupParameters); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property State: OleVariant read Get_State write _Set_State;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property ItemDescriptor: _DAItemDescriptor read Get_ItemDescriptor write _Set_ItemDescriptor;
    property GroupParameters: _DAGroupParameters read Get_GroupParameters write _Set_GroupParameters;
  end;

// *********************************************************************//
// DispIntf:  _DAItemGroupArgumentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D394C96F-3774-4BDE-B38D-FA91AA182ADF}
// *********************************************************************//
  _DAItemGroupArgumentsDisp = dispinterface
    ['{D394C96F-3774-4BDE-B38D-FA91AA182ADF}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property State: OleVariant dispid 1610743814;
    function MemberwiseClone: _OperationArguments; dispid 1610743816;
    procedure SetState(State: OleVariant); dispid 1610743817;
    property ServerDescriptor: _ServerDescriptor dispid 1610743818;
    property ItemDescriptor: _DAItemDescriptor dispid 1610743820;
    property GroupParameters: _DAGroupParameters dispid 1610743822;
  end;

// *********************************************************************//
// Interface: _DAItemValueArguments
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {50BA8F7F-FBAF-4A27-9EA8-FE4658CA7D2F}
// *********************************************************************//
  _DAItemValueArguments = interface(IDispatch)
    ['{50BA8F7F-FBAF-4A27-9EA8-FE4658CA7D2F}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_State: OleVariant; safecall;
    procedure _Set_State(pRetVal: OleVariant); safecall;
    function MemberwiseClone: _OperationArguments; safecall;
    procedure SetState(State: OleVariant); safecall;
    function Get_ServerDescriptor: _ServerDescriptor; safecall;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor); safecall;
    function Get_ItemDescriptor: _DAItemDescriptor; safecall;
    procedure _Set_ItemDescriptor(const pRetVal: _DAItemDescriptor); safecall;
    function Get_Value: OleVariant; safecall;
    procedure _Set_Value(pRetVal: OleVariant); safecall;
    procedure SetValue(Value: OleVariant); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property State: OleVariant read Get_State write _Set_State;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property ItemDescriptor: _DAItemDescriptor read Get_ItemDescriptor write _Set_ItemDescriptor;
    property Value: OleVariant read Get_Value write _Set_Value;
  end;

// *********************************************************************//
// DispIntf:  _DAItemValueArgumentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {50BA8F7F-FBAF-4A27-9EA8-FE4658CA7D2F}
// *********************************************************************//
  _DAItemValueArgumentsDisp = dispinterface
    ['{50BA8F7F-FBAF-4A27-9EA8-FE4658CA7D2F}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property State: OleVariant dispid 1610743814;
    function MemberwiseClone: _OperationArguments; dispid 1610743816;
    procedure SetState(State: OleVariant); dispid 1610743817;
    property ServerDescriptor: _ServerDescriptor dispid 1610743818;
    property ItemDescriptor: _DAItemDescriptor dispid 1610743820;
    property Value: OleVariant dispid 1610743822;
    procedure SetValue(Value: OleVariant); dispid 1610743824;
  end;

// *********************************************************************//
// Interface: _DAItemVtqArguments
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4CDE6D14-5D3F-4AB3-B305-AA319F43960E}
// *********************************************************************//
  _DAItemVtqArguments = interface(IDispatch)
    ['{4CDE6D14-5D3F-4AB3-B305-AA319F43960E}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_State: OleVariant; safecall;
    procedure _Set_State(pRetVal: OleVariant); safecall;
    function MemberwiseClone: _OperationArguments; safecall;
    procedure SetState(State: OleVariant); safecall;
    function Get_ServerDescriptor: _ServerDescriptor; safecall;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor); safecall;
    function Get_ItemDescriptor: _DAItemDescriptor; safecall;
    procedure _Set_ItemDescriptor(const pRetVal: _DAItemDescriptor); safecall;
    function Get_Vtq: _DAVtq; safecall;
    procedure _Set_Vtq(const pRetVal: _DAVtq); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property State: OleVariant read Get_State write _Set_State;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property ItemDescriptor: _DAItemDescriptor read Get_ItemDescriptor write _Set_ItemDescriptor;
    property Vtq: _DAVtq read Get_Vtq write _Set_Vtq;
  end;

// *********************************************************************//
// DispIntf:  _DAItemVtqArgumentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4CDE6D14-5D3F-4AB3-B305-AA319F43960E}
// *********************************************************************//
  _DAItemVtqArgumentsDisp = dispinterface
    ['{4CDE6D14-5D3F-4AB3-B305-AA319F43960E}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property State: OleVariant dispid 1610743814;
    function MemberwiseClone: _OperationArguments; dispid 1610743816;
    procedure SetState(State: OleVariant); dispid 1610743817;
    property ServerDescriptor: _ServerDescriptor dispid 1610743818;
    property ItemDescriptor: _DAItemDescriptor dispid 1610743820;
    property Vtq: _DAVtq dispid 1610743822;
  end;

// *********************************************************************//
// Interface: _DAPropertyArguments
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AA0109CF-2A43-43E5-81DB-D0442B0B186E}
// *********************************************************************//
  _DAPropertyArguments = interface(IDispatch)
    ['{AA0109CF-2A43-43E5-81DB-D0442B0B186E}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_State: OleVariant; safecall;
    procedure _Set_State(pRetVal: OleVariant); safecall;
    function MemberwiseClone: _OperationArguments; safecall;
    procedure SetState(State: OleVariant); safecall;
    function Get_NodeDescriptor: _DANodeDescriptor; safecall;
    procedure _Set_NodeDescriptor(const pRetVal: _DANodeDescriptor); safecall;
    function Get_ServerDescriptor: _ServerDescriptor; safecall;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor); safecall;
    function Get_PropertyDescriptor: _DAPropertyDescriptor; safecall;
    procedure _Set_PropertyDescriptor(const pRetVal: _DAPropertyDescriptor); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property State: OleVariant read Get_State write _Set_State;
    property NodeDescriptor: _DANodeDescriptor read Get_NodeDescriptor write _Set_NodeDescriptor;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property PropertyDescriptor: _DAPropertyDescriptor read Get_PropertyDescriptor write _Set_PropertyDescriptor;
  end;

// *********************************************************************//
// DispIntf:  _DAPropertyArgumentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AA0109CF-2A43-43E5-81DB-D0442B0B186E}
// *********************************************************************//
  _DAPropertyArgumentsDisp = dispinterface
    ['{AA0109CF-2A43-43E5-81DB-D0442B0B186E}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property State: OleVariant dispid 1610743814;
    function MemberwiseClone: _OperationArguments; dispid 1610743816;
    procedure SetState(State: OleVariant); dispid 1610743817;
    property NodeDescriptor: _DANodeDescriptor dispid 1610743818;
    property ServerDescriptor: _ServerDescriptor dispid 1610743820;
    property PropertyDescriptor: _DAPropertyDescriptor dispid 1610743822;
  end;

// *********************************************************************//
// Interface: _DAReadItemArguments
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F1406104-BED0-4D5B-9A42-BFBBD3587C67}
// *********************************************************************//
  _DAReadItemArguments = interface(IDispatch)
    ['{F1406104-BED0-4D5B-9A42-BFBBD3587C67}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_State: OleVariant; safecall;
    procedure _Set_State(pRetVal: OleVariant); safecall;
    function MemberwiseClone: _OperationArguments; safecall;
    procedure SetState(State: OleVariant); safecall;
    function Get_ServerDescriptor: _ServerDescriptor; safecall;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor); safecall;
    function Get_ItemDescriptor: _DAItemDescriptor; safecall;
    procedure _Set_ItemDescriptor(const pRetVal: _DAItemDescriptor); safecall;
    function Get_ReadParameters: _DAReadParameters; safecall;
    procedure _Set_ReadParameters(const pRetVal: _DAReadParameters); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property State: OleVariant read Get_State write _Set_State;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property ItemDescriptor: _DAItemDescriptor read Get_ItemDescriptor write _Set_ItemDescriptor;
    property ReadParameters: _DAReadParameters read Get_ReadParameters write _Set_ReadParameters;
  end;

// *********************************************************************//
// DispIntf:  _DAReadItemArgumentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F1406104-BED0-4D5B-9A42-BFBBD3587C67}
// *********************************************************************//
  _DAReadItemArgumentsDisp = dispinterface
    ['{F1406104-BED0-4D5B-9A42-BFBBD3587C67}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property State: OleVariant dispid 1610743814;
    function MemberwiseClone: _OperationArguments; dispid 1610743816;
    procedure SetState(State: OleVariant); dispid 1610743817;
    property ServerDescriptor: _ServerDescriptor dispid 1610743818;
    property ItemDescriptor: _DAItemDescriptor dispid 1610743820;
    property ReadParameters: _DAReadParameters dispid 1610743822;
  end;

// *********************************************************************//
// Interface: _EasyDAItemSubscriptionArguments
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9745195E-AA4E-4810-9025-2105D6F45DCA}
// *********************************************************************//
  _EasyDAItemSubscriptionArguments = interface(IDispatch)
    ['{9745195E-AA4E-4810-9025-2105D6F45DCA}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_State: OleVariant; safecall;
    procedure _Set_State(pRetVal: OleVariant); safecall;
    function MemberwiseClone: _OperationArguments; safecall;
    procedure SetState(State: OleVariant); safecall;
    function Get_ServerDescriptor: _ServerDescriptor; safecall;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor); safecall;
    function Get_ItemDescriptor: _DAItemDescriptor; safecall;
    procedure _Set_ItemDescriptor(const pRetVal: _DAItemDescriptor); safecall;
    function Get_GroupParameters: _DAGroupParameters; safecall;
    procedure _Set_GroupParameters(const pRetVal: _DAGroupParameters); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property State: OleVariant read Get_State write _Set_State;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property ItemDescriptor: _DAItemDescriptor read Get_ItemDescriptor write _Set_ItemDescriptor;
    property GroupParameters: _DAGroupParameters read Get_GroupParameters write _Set_GroupParameters;
  end;

// *********************************************************************//
// DispIntf:  _EasyDAItemSubscriptionArgumentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9745195E-AA4E-4810-9025-2105D6F45DCA}
// *********************************************************************//
  _EasyDAItemSubscriptionArgumentsDisp = dispinterface
    ['{9745195E-AA4E-4810-9025-2105D6F45DCA}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property State: OleVariant dispid 1610743814;
    function MemberwiseClone: _OperationArguments; dispid 1610743816;
    procedure SetState(State: OleVariant); dispid 1610743817;
    property ServerDescriptor: _ServerDescriptor dispid 1610743818;
    property ItemDescriptor: _DAItemDescriptor dispid 1610743820;
    property GroupParameters: _DAGroupParameters dispid 1610743822;
  end;

// *********************************************************************//
// Interface: _EasyDAItemChangedEventArgs
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A506D7B7-0886-4A2F-AD95-7078D666F812}
// *********************************************************************//
  _EasyDAItemChangedEventArgs = interface(IDispatch)
    ['{A506D7B7-0886-4A2F-AD95-7078D666F812}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Diagnostics: _ExceptionCollection; safecall;
    procedure _Set_Diagnostics(const pRetVal: _ExceptionCollection); safecall;
    function Get_DiagnosticsCount: Integer; safecall;
    function Get_DiagnosticsSummary: WideString; safecall;
    function Get_ErrorId: WideString; safecall;
    procedure Set_ErrorId(const pRetVal: WideString); safecall;
    function Get_ErrorMessage: WideString; safecall;
    procedure Set_ErrorMessage(const pRetVal: WideString); safecall;
    function Get_ErrorMessageBrief: WideString; safecall;
    function Get_Exception: _Exception; safecall;
    procedure _Set_Exception(const pRetVal: _Exception); safecall;
    function Get_NormalizedDiagnostics: _NormalizedExceptionCollection; safecall;
    function Get_NormalizedException: _NormalizedException; safecall;
    function Get_Succeeded: WordBool; safecall;
    function Clone: OleVariant; safecall;
    function MemberwiseClone: _OperationEventArgs; safecall;
    function ToLongString: WideString; safecall;
    function Get_Arguments: _EasyDAItemSubscriptionArguments; safecall;
    procedure _Set_Arguments(const pRetVal: _EasyDAItemSubscriptionArguments); safecall;
    function Get_StatusInfo: StatusInfo; safecall;
    function Get_Vtq: _DAVtq; safecall;
    procedure _Set_Vtq(const pRetVal: _DAVtq); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Diagnostics: _ExceptionCollection read Get_Diagnostics write _Set_Diagnostics;
    property DiagnosticsCount: Integer read Get_DiagnosticsCount;
    property DiagnosticsSummary: WideString read Get_DiagnosticsSummary;
    property ErrorId: WideString read Get_ErrorId write Set_ErrorId;
    property ErrorMessage: WideString read Get_ErrorMessage write Set_ErrorMessage;
    property ErrorMessageBrief: WideString read Get_ErrorMessageBrief;
    property Exception: _Exception read Get_Exception write _Set_Exception;
    property NormalizedDiagnostics: _NormalizedExceptionCollection read Get_NormalizedDiagnostics;
    property NormalizedException: _NormalizedException read Get_NormalizedException;
    property Succeeded: WordBool read Get_Succeeded;
    property Arguments: _EasyDAItemSubscriptionArguments read Get_Arguments write _Set_Arguments;
    property StatusInfo: StatusInfo read Get_StatusInfo;
    property Vtq: _DAVtq read Get_Vtq write _Set_Vtq;
  end;

// *********************************************************************//
// DispIntf:  _EasyDAItemChangedEventArgsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A506D7B7-0886-4A2F-AD95-7078D666F812}
// *********************************************************************//
  _EasyDAItemChangedEventArgsDisp = dispinterface
    ['{A506D7B7-0886-4A2F-AD95-7078D666F812}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Diagnostics: _ExceptionCollection dispid 1610743813;
    property DiagnosticsCount: Integer readonly dispid 1610743815;
    property DiagnosticsSummary: WideString readonly dispid 1610743816;
    property ErrorId: WideString dispid 1610743817;
    property ErrorMessage: WideString dispid 1610743819;
    property ErrorMessageBrief: WideString readonly dispid 1610743821;
    property Exception: _Exception dispid 1610743822;
    property NormalizedDiagnostics: _NormalizedExceptionCollection readonly dispid 1610743824;
    property NormalizedException: _NormalizedException readonly dispid 1610743825;
    property Succeeded: WordBool readonly dispid 1610743826;
    function Clone: OleVariant; dispid 1610743827;
    function MemberwiseClone: _OperationEventArgs; dispid 1610743828;
    function ToLongString: WideString; dispid 1610743829;
    property Arguments: _EasyDAItemSubscriptionArguments dispid 1610743830;
    property StatusInfo: StatusInfo readonly dispid 1610743832;
    property Vtq: _DAVtq dispid 1610743833;
  end;

// *********************************************************************//
// Interface: _DANodeElementCollectionResult
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {31AE4DE9-BEBB-423F-BFC6-362D235B71FB}
// *********************************************************************//
  _DANodeElementCollectionResult = interface(IDispatch)
    ['{31AE4DE9-BEBB-423F-BFC6-362D235B71FB}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_Diagnostics: _ExceptionCollection; safecall;
    procedure _Set_Diagnostics(const pRetVal: _ExceptionCollection); safecall;
    function Get_DiagnosticsCount: Integer; safecall;
    function Get_DiagnosticsSummary: WideString; safecall;
    function Get_ErrorId: WideString; safecall;
    procedure Set_ErrorId(const pRetVal: WideString); safecall;
    function Get_ErrorMessage: WideString; safecall;
    procedure Set_ErrorMessage(const pRetVal: WideString); safecall;
    function Get_ErrorMessageBrief: WideString; safecall;
    function Get_Exception: _Exception; safecall;
    procedure _Set_Exception(const pRetVal: _Exception); safecall;
    function Get_NormalizedDiagnostics: _NormalizedExceptionCollection; safecall;
    function Get_NormalizedException: _NormalizedException; safecall;
    function Get_State: OleVariant; safecall;
    procedure _Set_State(pRetVal: OleVariant); safecall;
    function Get_Succeeded: WordBool; safecall;
    function MemberwiseClone: _OperationResult; safecall;
    procedure SetState(State: OleVariant); safecall;
    procedure ThrowIfFailed; safecall;
    function Get_RegularizedValue: OleVariant; safecall;
    function Get_Value: _DANodeElementCollection; safecall;
    procedure _Set_Value(const pRetVal: _DANodeElementCollection); safecall;
    function Get_ValueType: _Type; safecall;
    procedure SetValue(Value: OleVariant); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property Diagnostics: _ExceptionCollection read Get_Diagnostics write _Set_Diagnostics;
    property DiagnosticsCount: Integer read Get_DiagnosticsCount;
    property DiagnosticsSummary: WideString read Get_DiagnosticsSummary;
    property ErrorId: WideString read Get_ErrorId write Set_ErrorId;
    property ErrorMessage: WideString read Get_ErrorMessage write Set_ErrorMessage;
    property ErrorMessageBrief: WideString read Get_ErrorMessageBrief;
    property Exception: _Exception read Get_Exception write _Set_Exception;
    property NormalizedDiagnostics: _NormalizedExceptionCollection read Get_NormalizedDiagnostics;
    property NormalizedException: _NormalizedException read Get_NormalizedException;
    property State: OleVariant read Get_State write _Set_State;
    property Succeeded: WordBool read Get_Succeeded;
    property RegularizedValue: OleVariant read Get_RegularizedValue;
    property Value: _DANodeElementCollection read Get_Value write _Set_Value;
    property ValueType: _Type read Get_ValueType;
  end;

// *********************************************************************//
// DispIntf:  _DANodeElementCollectionResultDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {31AE4DE9-BEBB-423F-BFC6-362D235B71FB}
// *********************************************************************//
  _DANodeElementCollectionResultDisp = dispinterface
    ['{31AE4DE9-BEBB-423F-BFC6-362D235B71FB}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    function Clone: OleVariant; dispid 1610743815;
    property Diagnostics: _ExceptionCollection dispid 1610743816;
    property DiagnosticsCount: Integer readonly dispid 1610743818;
    property DiagnosticsSummary: WideString readonly dispid 1610743819;
    property ErrorId: WideString dispid 1610743820;
    property ErrorMessage: WideString dispid 1610743822;
    property ErrorMessageBrief: WideString readonly dispid 1610743824;
    property Exception: _Exception dispid 1610743825;
    property NormalizedDiagnostics: _NormalizedExceptionCollection readonly dispid 1610743827;
    property NormalizedException: _NormalizedException readonly dispid 1610743828;
    property State: OleVariant dispid 1610743829;
    property Succeeded: WordBool readonly dispid 1610743831;
    function MemberwiseClone: _OperationResult; dispid 1610743832;
    procedure SetState(State: OleVariant); dispid 1610743833;
    procedure ThrowIfFailed; dispid 1610743834;
    property RegularizedValue: OleVariant readonly dispid 1610743835;
    property Value: _DANodeElementCollection dispid 1610743836;
    property ValueType: _Type readonly dispid 1610743838;
    procedure SetValue(Value: OleVariant); dispid 1610743839;
  end;

// *********************************************************************//
// Interface: _DAVtqResult
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D2C93581-1262-4FF7-AF91-C09C5E5412BC}
// *********************************************************************//
  _DAVtqResult = interface(IDispatch)
    ['{D2C93581-1262-4FF7-AF91-C09C5E5412BC}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_Diagnostics: _ExceptionCollection; safecall;
    procedure _Set_Diagnostics(const pRetVal: _ExceptionCollection); safecall;
    function Get_DiagnosticsCount: Integer; safecall;
    function Get_DiagnosticsSummary: WideString; safecall;
    function Get_ErrorId: WideString; safecall;
    procedure Set_ErrorId(const pRetVal: WideString); safecall;
    function Get_ErrorMessage: WideString; safecall;
    procedure Set_ErrorMessage(const pRetVal: WideString); safecall;
    function Get_ErrorMessageBrief: WideString; safecall;
    function Get_Exception: _Exception; safecall;
    procedure _Set_Exception(const pRetVal: _Exception); safecall;
    function Get_NormalizedDiagnostics: _NormalizedExceptionCollection; safecall;
    function Get_NormalizedException: _NormalizedException; safecall;
    function Get_State: OleVariant; safecall;
    procedure _Set_State(pRetVal: OleVariant); safecall;
    function Get_Succeeded: WordBool; safecall;
    function MemberwiseClone: _OperationResult; safecall;
    procedure SetState(State: OleVariant); safecall;
    procedure ThrowIfFailed; safecall;
    function Get_StatusInfo: StatusInfo; safecall;
    function Get_Vtq: _DAVtq; safecall;
    procedure _Set_Vtq(const pRetVal: _DAVtq); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property Diagnostics: _ExceptionCollection read Get_Diagnostics write _Set_Diagnostics;
    property DiagnosticsCount: Integer read Get_DiagnosticsCount;
    property DiagnosticsSummary: WideString read Get_DiagnosticsSummary;
    property ErrorId: WideString read Get_ErrorId write Set_ErrorId;
    property ErrorMessage: WideString read Get_ErrorMessage write Set_ErrorMessage;
    property ErrorMessageBrief: WideString read Get_ErrorMessageBrief;
    property Exception: _Exception read Get_Exception write _Set_Exception;
    property NormalizedDiagnostics: _NormalizedExceptionCollection read Get_NormalizedDiagnostics;
    property NormalizedException: _NormalizedException read Get_NormalizedException;
    property State: OleVariant read Get_State write _Set_State;
    property Succeeded: WordBool read Get_Succeeded;
    property StatusInfo: StatusInfo read Get_StatusInfo;
    property Vtq: _DAVtq read Get_Vtq write _Set_Vtq;
  end;

// *********************************************************************//
// DispIntf:  _DAVtqResultDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D2C93581-1262-4FF7-AF91-C09C5E5412BC}
// *********************************************************************//
  _DAVtqResultDisp = dispinterface
    ['{D2C93581-1262-4FF7-AF91-C09C5E5412BC}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    function Clone: OleVariant; dispid 1610743815;
    property Diagnostics: _ExceptionCollection dispid 1610743816;
    property DiagnosticsCount: Integer readonly dispid 1610743818;
    property DiagnosticsSummary: WideString readonly dispid 1610743819;
    property ErrorId: WideString dispid 1610743820;
    property ErrorMessage: WideString dispid 1610743822;
    property ErrorMessageBrief: WideString readonly dispid 1610743824;
    property Exception: _Exception dispid 1610743825;
    property NormalizedDiagnostics: _NormalizedExceptionCollection readonly dispid 1610743827;
    property NormalizedException: _NormalizedException readonly dispid 1610743828;
    property State: OleVariant dispid 1610743829;
    property Succeeded: WordBool readonly dispid 1610743831;
    function MemberwiseClone: _OperationResult; dispid 1610743832;
    procedure SetState(State: OleVariant); dispid 1610743833;
    procedure ThrowIfFailed; dispid 1610743834;
    property StatusInfo: StatusInfo readonly dispid 1610743835;
    property Vtq: _DAVtq dispid 1610743836;
  end;

// *********************************************************************//
// Interface: _DABrowseArguments
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {24D60C77-602C-49AD-B508-5B3405087242}
// *********************************************************************//
  _DABrowseArguments = interface(IDispatch)
    ['{24D60C77-602C-49AD-B508-5B3405087242}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_State: OleVariant; safecall;
    procedure _Set_State(pRetVal: OleVariant); safecall;
    function MemberwiseClone: _OperationArguments; safecall;
    procedure SetState(State: OleVariant); safecall;
    function Get_ServerDescriptor: _ServerDescriptor; safecall;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor); safecall;
    function Get_NodeDescriptor: _DANodeDescriptor; safecall;
    procedure _Set_NodeDescriptor(const pRetVal: _DANodeDescriptor); safecall;
    function Get_BrowseParameters: _DABrowseParameters; safecall;
    procedure _Set_BrowseParameters(const pRetVal: _DABrowseParameters); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property State: OleVariant read Get_State write _Set_State;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property NodeDescriptor: _DANodeDescriptor read Get_NodeDescriptor write _Set_NodeDescriptor;
    property BrowseParameters: _DABrowseParameters read Get_BrowseParameters write _Set_BrowseParameters;
  end;

// *********************************************************************//
// DispIntf:  _DABrowseArgumentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {24D60C77-602C-49AD-B508-5B3405087242}
// *********************************************************************//
  _DABrowseArgumentsDisp = dispinterface
    ['{24D60C77-602C-49AD-B508-5B3405087242}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property State: OleVariant dispid 1610743814;
    function MemberwiseClone: _OperationArguments; dispid 1610743816;
    procedure SetState(State: OleVariant); dispid 1610743817;
    property ServerDescriptor: _ServerDescriptor dispid 1610743818;
    property NodeDescriptor: _DANodeDescriptor dispid 1610743820;
    property BrowseParameters: _DABrowseParameters dispid 1610743822;
  end;

// *********************************************************************//
// Interface: _DAClientMode
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9F0C5C73-73B9-4675-9136-B28020C0C2AF}
// *********************************************************************//
  _DAClientMode = interface(IDispatch)
    ['{9F0C5C73-73B9-4675-9136-B28020C0C2AF}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_AllowAsynchronousMethod: WordBool; safecall;
    procedure Set_AllowAsynchronousMethod(pRetVal: WordBool); safecall;
    function Get_AllowSynchronousMethod: WordBool; safecall;
    procedure Set_AllowSynchronousMethod(pRetVal: WordBool); safecall;
    function Get_DesiredMethod: DAReadWriteMethod; safecall;
    procedure Set_DesiredMethod(pRetVal: DAReadWriteMethod); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property AllowAsynchronousMethod: WordBool read Get_AllowAsynchronousMethod write Set_AllowAsynchronousMethod;
    property AllowSynchronousMethod: WordBool read Get_AllowSynchronousMethod write Set_AllowSynchronousMethod;
    property DesiredMethod: DAReadWriteMethod read Get_DesiredMethod write Set_DesiredMethod;
  end;

// *********************************************************************//
// DispIntf:  _DAClientModeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9F0C5C73-73B9-4675-9136-B28020C0C2AF}
// *********************************************************************//
  _DAClientModeDisp = dispinterface
    ['{9F0C5C73-73B9-4675-9136-B28020C0C2AF}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property AllowAsynchronousMethod: WordBool dispid 1610743816;
    property AllowSynchronousMethod: WordBool dispid 1610743818;
    property DesiredMethod: DAReadWriteMethod dispid 1610743820;
  end;

// *********************************************************************//
// Interface: _EasyDAClientHoldPeriods
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2BB466D5-E213-480F-8966-47AC99AAA5CF}
// *********************************************************************//
  _EasyDAClientHoldPeriods = interface(IDispatch)
    ['{2BB466D5-E213-480F-8966-47AC99AAA5CF}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_ItemDetach: Integer; safecall;
    procedure Set_ItemDetach(pRetVal: Integer); safecall;
    function Get_ServerDetach: Integer; safecall;
    procedure Set_ServerDetach(pRetVal: Integer); safecall;
    function Get_TopicRead: Integer; safecall;
    procedure Set_TopicRead(pRetVal: Integer); safecall;
    function Get_TopicWrite: Integer; safecall;
    procedure Set_TopicWrite(pRetVal: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property ItemDetach: Integer read Get_ItemDetach write Set_ItemDetach;
    property ServerDetach: Integer read Get_ServerDetach write Set_ServerDetach;
    property TopicRead: Integer read Get_TopicRead write Set_TopicRead;
    property TopicWrite: Integer read Get_TopicWrite write Set_TopicWrite;
  end;

// *********************************************************************//
// DispIntf:  _EasyDAClientHoldPeriodsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2BB466D5-E213-480F-8966-47AC99AAA5CF}
// *********************************************************************//
  _EasyDAClientHoldPeriodsDisp = dispinterface
    ['{2BB466D5-E213-480F-8966-47AC99AAA5CF}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property ItemDetach: Integer dispid 1610743816;
    property ServerDetach: Integer dispid 1610743818;
    property TopicRead: Integer dispid 1610743820;
    property TopicWrite: Integer dispid 1610743822;
  end;

// *********************************************************************//
// Interface: _EasyDAClientMode
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2F4DD571-2B72-4B1F-BCE6-128D19B8A786}
// *********************************************************************//
  _EasyDAClientMode = interface(IDispatch)
    ['{2F4DD571-2B72-4B1F-BCE6-128D19B8A786}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_AllowAsynchronousMethod: WordBool; safecall;
    procedure Set_AllowAsynchronousMethod(pRetVal: WordBool); safecall;
    function Get_AllowSynchronousMethod: WordBool; safecall;
    procedure Set_AllowSynchronousMethod(pRetVal: WordBool); safecall;
    function Get_DesiredMethod: DAReadWriteMethod; safecall;
    procedure Set_DesiredMethod(pRetVal: DAReadWriteMethod); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property AllowAsynchronousMethod: WordBool read Get_AllowAsynchronousMethod write Set_AllowAsynchronousMethod;
    property AllowSynchronousMethod: WordBool read Get_AllowSynchronousMethod write Set_AllowSynchronousMethod;
    property DesiredMethod: DAReadWriteMethod read Get_DesiredMethod write Set_DesiredMethod;
  end;

// *********************************************************************//
// DispIntf:  _EasyDAClientModeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2F4DD571-2B72-4B1F-BCE6-128D19B8A786}
// *********************************************************************//
  _EasyDAClientModeDisp = dispinterface
    ['{2F4DD571-2B72-4B1F-BCE6-128D19B8A786}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property AllowAsynchronousMethod: WordBool dispid 1610743816;
    property AllowSynchronousMethod: WordBool dispid 1610743818;
    property DesiredMethod: DAReadWriteMethod dispid 1610743820;
  end;

// *********************************************************************//
// Interface: _EasyDAClientTimeouts
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A4A4BBC8-F3CA-4AA6-8689-8B876B4AA1F6}
// *********************************************************************//
  _EasyDAClientTimeouts = interface(IDispatch)
    ['{A4A4BBC8-F3CA-4AA6-8689-8B876B4AA1F6}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_BrowseAccessPaths: Integer; safecall;
    procedure Set_BrowseAccessPaths(pRetVal: Integer); safecall;
    function Get_BrowseNodes: Integer; safecall;
    procedure Set_BrowseNodes(pRetVal: Integer); safecall;
    function Get_BrowseProperties: Integer; safecall;
    procedure Set_BrowseProperties(pRetVal: Integer); safecall;
    function Get_BrowseServers: Integer; safecall;
    procedure Set_BrowseServers(pRetVal: Integer); safecall;
    function Get_GetProperty: Integer; safecall;
    procedure Set_GetProperty(pRetVal: Integer); safecall;
    function Get_ReadItem: Integer; safecall;
    procedure Set_ReadItem(pRetVal: Integer); safecall;
    function Get_WriteItem: Integer; safecall;
    procedure Set_WriteItem(pRetVal: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property BrowseAccessPaths: Integer read Get_BrowseAccessPaths write Set_BrowseAccessPaths;
    property BrowseNodes: Integer read Get_BrowseNodes write Set_BrowseNodes;
    property BrowseProperties: Integer read Get_BrowseProperties write Set_BrowseProperties;
    property BrowseServers: Integer read Get_BrowseServers write Set_BrowseServers;
    property GetProperty: Integer read Get_GetProperty write Set_GetProperty;
    property ReadItem: Integer read Get_ReadItem write Set_ReadItem;
    property WriteItem: Integer read Get_WriteItem write Set_WriteItem;
  end;

// *********************************************************************//
// DispIntf:  _EasyDAClientTimeoutsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A4A4BBC8-F3CA-4AA6-8689-8B876B4AA1F6}
// *********************************************************************//
  _EasyDAClientTimeoutsDisp = dispinterface
    ['{A4A4BBC8-F3CA-4AA6-8689-8B876B4AA1F6}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property BrowseAccessPaths: Integer dispid 1610743816;
    property BrowseNodes: Integer dispid 1610743818;
    property BrowseProperties: Integer dispid 1610743820;
    property BrowseServers: Integer dispid 1610743822;
    property GetProperty: Integer dispid 1610743824;
    property ReadItem: Integer dispid 1610743826;
    property WriteItem: Integer dispid 1610743828;
  end;

// *********************************************************************//
// Interface: _EasyDAAdaptableParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {29B6A79E-4923-46BF-ABC2-3145F80D2881}
// *********************************************************************//
  _EasyDAAdaptableParameters = interface(IDispatch)
    ['{29B6A79E-4923-46BF-ABC2-3145F80D2881}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_HttpClientConnectionLimit: Integer; safecall;
    procedure Set_HttpClientConnectionLimit(pRetVal: Integer); safecall;
    function Get_UseAdvancedPolledRefresh: WordBool; safecall;
    procedure Set_UseAdvancedPolledRefresh(pRetVal: WordBool); safecall;
    function Get_SubscriptionPolledRefreshTimeoutFactor: Double; safecall;
    procedure Set_SubscriptionPolledRefreshTimeoutFactor(pRetVal: Double); safecall;
    function Get_SubscriptionPolledRefreshTimeoutIncrease: Integer; safecall;
    procedure Set_SubscriptionPolledRefreshTimeoutIncrease(pRetVal: Integer); safecall;
    procedure Reset; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property HttpClientConnectionLimit: Integer read Get_HttpClientConnectionLimit write Set_HttpClientConnectionLimit;
    property UseAdvancedPolledRefresh: WordBool read Get_UseAdvancedPolledRefresh write Set_UseAdvancedPolledRefresh;
    property SubscriptionPolledRefreshTimeoutFactor: Double read Get_SubscriptionPolledRefreshTimeoutFactor write Set_SubscriptionPolledRefreshTimeoutFactor;
    property SubscriptionPolledRefreshTimeoutIncrease: Integer read Get_SubscriptionPolledRefreshTimeoutIncrease write Set_SubscriptionPolledRefreshTimeoutIncrease;
  end;

// *********************************************************************//
// DispIntf:  _EasyDAAdaptableParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {29B6A79E-4923-46BF-ABC2-3145F80D2881}
// *********************************************************************//
  _EasyDAAdaptableParametersDisp = dispinterface
    ['{29B6A79E-4923-46BF-ABC2-3145F80D2881}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property HttpClientConnectionLimit: Integer dispid 1610743816;
    property UseAdvancedPolledRefresh: WordBool dispid 1610743818;
    property SubscriptionPolledRefreshTimeoutFactor: Double dispid 1610743820;
    property SubscriptionPolledRefreshTimeoutIncrease: Integer dispid 1610743822;
    procedure Reset; dispid 1610743824;
  end;

// *********************************************************************//
// Interface: _EasyDAClientParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {01B11212-1C62-4CCE-A841-602B13200F15}
// *********************************************************************//
  _EasyDAClientParameters = interface(IDispatch)
    ['{01B11212-1C62-4CCE-A841-602B13200F15}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_ClientReconnectDelay: Integer; safecall;
    procedure Set_ClientReconnectDelay(pRetVal: Integer); safecall;
    function Get_ComInstantiationParameters: _ComInstantiationParameters; safecall;
    procedure _Set_ComInstantiationParameters(const pRetVal: _ComInstantiationParameters); safecall;
    function Get_ServerFailedReconnectDelay: Integer; safecall;
    procedure Set_ServerFailedReconnectDelay(pRetVal: Integer); safecall;
    function Get_ServerShutdownReconnectDelay: Integer; safecall;
    procedure Set_ServerShutdownReconnectDelay(pRetVal: Integer); safecall;
    function Get_ServerStatusCheckPeriod: Integer; safecall;
    procedure Set_ServerStatusCheckPeriod(pRetVal: Integer); safecall;
    function GetEffectiveComInstantiationParameters: _ComInstantiationParameters; safecall;
    function Get_TopicProcessingIntervalTimeout: Integer; safecall;
    procedure Set_TopicProcessingIntervalTimeout(pRetVal: Integer); safecall;
    function Get_TopicProcessingTotalTimeout: Integer; safecall;
    procedure Set_TopicProcessingTotalTimeout(pRetVal: Integer); safecall;
    function Get_ElementNameCaseSensitive: WordBool; safecall;
    procedure Set_ElementNameCaseSensitive(pRetVal: WordBool); safecall;
    function Get_RequestQueueSize: Integer; safecall;
    procedure Set_RequestQueueSize(pRetVal: Integer); safecall;
    function Get_LinkCallbackQueueSize: Integer; safecall;
    procedure Set_LinkCallbackQueueSize(pRetVal: Integer); safecall;
    function Get_ResponseQueueSize: Integer; safecall;
    procedure Set_ResponseQueueSize(pRetVal: Integer); safecall;
    function Get_BrowseNodesChunk: Integer; safecall;
    procedure Set_BrowseNodesChunk(pRetVal: Integer); safecall;
    function Get_TopicRetrialPeriod: Integer; safecall;
    procedure Set_TopicRetrialPeriod(pRetVal: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property ClientReconnectDelay: Integer read Get_ClientReconnectDelay write Set_ClientReconnectDelay;
    property ComInstantiationParameters: _ComInstantiationParameters read Get_ComInstantiationParameters write _Set_ComInstantiationParameters;
    property ServerFailedReconnectDelay: Integer read Get_ServerFailedReconnectDelay write Set_ServerFailedReconnectDelay;
    property ServerShutdownReconnectDelay: Integer read Get_ServerShutdownReconnectDelay write Set_ServerShutdownReconnectDelay;
    property ServerStatusCheckPeriod: Integer read Get_ServerStatusCheckPeriod write Set_ServerStatusCheckPeriod;
    property TopicProcessingIntervalTimeout: Integer read Get_TopicProcessingIntervalTimeout write Set_TopicProcessingIntervalTimeout;
    property TopicProcessingTotalTimeout: Integer read Get_TopicProcessingTotalTimeout write Set_TopicProcessingTotalTimeout;
    property ElementNameCaseSensitive: WordBool read Get_ElementNameCaseSensitive write Set_ElementNameCaseSensitive;
    property RequestQueueSize: Integer read Get_RequestQueueSize write Set_RequestQueueSize;
    property LinkCallbackQueueSize: Integer read Get_LinkCallbackQueueSize write Set_LinkCallbackQueueSize;
    property ResponseQueueSize: Integer read Get_ResponseQueueSize write Set_ResponseQueueSize;
    property BrowseNodesChunk: Integer read Get_BrowseNodesChunk write Set_BrowseNodesChunk;
    property TopicRetrialPeriod: Integer read Get_TopicRetrialPeriod write Set_TopicRetrialPeriod;
  end;

// *********************************************************************//
// DispIntf:  _EasyDAClientParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {01B11212-1C62-4CCE-A841-602B13200F15}
// *********************************************************************//
  _EasyDAClientParametersDisp = dispinterface
    ['{01B11212-1C62-4CCE-A841-602B13200F15}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property ClientReconnectDelay: Integer dispid 1610743816;
    property ComInstantiationParameters: _ComInstantiationParameters dispid 1610743818;
    property ServerFailedReconnectDelay: Integer dispid 1610743820;
    property ServerShutdownReconnectDelay: Integer dispid 1610743822;
    property ServerStatusCheckPeriod: Integer dispid 1610743824;
    function GetEffectiveComInstantiationParameters: _ComInstantiationParameters; dispid 1610743826;
    property TopicProcessingIntervalTimeout: Integer dispid 1610743827;
    property TopicProcessingTotalTimeout: Integer dispid 1610743829;
    property ElementNameCaseSensitive: WordBool dispid 1610743831;
    property RequestQueueSize: Integer dispid 1610743833;
    property LinkCallbackQueueSize: Integer dispid 1610743835;
    property ResponseQueueSize: Integer dispid 1610743837;
    property BrowseNodesChunk: Integer dispid 1610743839;
    property TopicRetrialPeriod: Integer dispid 1610743841;
  end;

// *********************************************************************//
// Interface: _EasyDAEngineParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D13AF090-3CB0-4066-8D8D-C43E3D73A2DD}
// *********************************************************************//
  _EasyDAEngineParameters = interface(IDispatch)
    ['{D13AF090-3CB0-4066-8D8D-C43E3D73A2DD}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_GarbageCollectionPeriod: Integer; safecall;
    procedure Set_GarbageCollectionPeriod(pRetVal: Integer); safecall;
    function Get_WorkerSleepDelay: Integer; safecall;
    procedure Set_WorkerSleepDelay(pRetVal: Integer); safecall;
    function Get_DefaultEventQueueSize: Integer; safecall;
    procedure Set_DefaultEventQueueSize(pRetVal: Integer); safecall;
    function Get_MaxClientAge: Integer; safecall;
    procedure Set_MaxClientAge(pRetVal: Integer); safecall;
    function Get_MaxTopicAge: Integer; safecall;
    procedure Set_MaxTopicAge(pRetVal: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property GarbageCollectionPeriod: Integer read Get_GarbageCollectionPeriod write Set_GarbageCollectionPeriod;
    property WorkerSleepDelay: Integer read Get_WorkerSleepDelay write Set_WorkerSleepDelay;
    property DefaultEventQueueSize: Integer read Get_DefaultEventQueueSize write Set_DefaultEventQueueSize;
    property MaxClientAge: Integer read Get_MaxClientAge write Set_MaxClientAge;
    property MaxTopicAge: Integer read Get_MaxTopicAge write Set_MaxTopicAge;
  end;

// *********************************************************************//
// DispIntf:  _EasyDAEngineParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D13AF090-3CB0-4066-8D8D-C43E3D73A2DD}
// *********************************************************************//
  _EasyDAEngineParametersDisp = dispinterface
    ['{D13AF090-3CB0-4066-8D8D-C43E3D73A2DD}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property GarbageCollectionPeriod: Integer dispid 1610743816;
    property WorkerSleepDelay: Integer dispid 1610743818;
    property DefaultEventQueueSize: Integer dispid 1610743820;
    property MaxClientAge: Integer dispid 1610743822;
    property MaxTopicAge: Integer dispid 1610743824;
  end;

// *********************************************************************//
// Interface: _EasyDAInstanceParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6ADD0BDF-1390-423D-992C-4E78A6FE91BF}
// *********************************************************************//
  _EasyDAInstanceParameters = interface(IDispatch)
    ['{6ADD0BDF-1390-423D-992C-4E78A6FE91BF}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_PluginConfigurations: _ConfigurationPartCollection; safecall;
    procedure _Set_PluginConfigurations(const pRetVal: _ConfigurationPartCollection); safecall;
    function Get_PluginSetups: _PluginSetupCollection; safecall;
    procedure _Set_PluginSetups(const pRetVal: _PluginSetupCollection); safecall;
    procedure Reset; safecall;
    function Get_EnableCachePersistence: WordBool; safecall;
    procedure Set_EnableCachePersistence(pRetVal: WordBool); safecall;
    function Get_EnableNativeClient: WordBool; safecall;
    procedure Set_EnableNativeClient(pRetVal: WordBool); safecall;
    function Get_EnableNetApiClient: WordBool; safecall;
    procedure Set_EnableNetApiClient(pRetVal: WordBool); safecall;
    function Get_EnableServiceClient: WordBool; safecall;
    procedure Set_EnableServiceClient(pRetVal: WordBool); safecall;
    function Get_PersistenceKey: WideString; safecall;
    procedure Set_PersistenceKey(const pRetVal: WideString); safecall;
    function Get_HoldPeriods: _EasyDAClientHoldPeriods; safecall;
    procedure _Set_HoldPeriods(const pRetVal: _EasyDAClientHoldPeriods); safecall;
    function Get_Mode: _EasyDAClientMode; safecall;
    procedure _Set_Mode(const pRetVal: _EasyDAClientMode); safecall;
    function Get_Timeouts: _EasyDAClientTimeouts; safecall;
    procedure _Set_Timeouts(const pRetVal: _EasyDAClientTimeouts); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property PluginConfigurations: _ConfigurationPartCollection read Get_PluginConfigurations write _Set_PluginConfigurations;
    property PluginSetups: _PluginSetupCollection read Get_PluginSetups write _Set_PluginSetups;
    property EnableCachePersistence: WordBool read Get_EnableCachePersistence write Set_EnableCachePersistence;
    property EnableNativeClient: WordBool read Get_EnableNativeClient write Set_EnableNativeClient;
    property EnableNetApiClient: WordBool read Get_EnableNetApiClient write Set_EnableNetApiClient;
    property EnableServiceClient: WordBool read Get_EnableServiceClient write Set_EnableServiceClient;
    property PersistenceKey: WideString read Get_PersistenceKey write Set_PersistenceKey;
    property HoldPeriods: _EasyDAClientHoldPeriods read Get_HoldPeriods write _Set_HoldPeriods;
    property Mode: _EasyDAClientMode read Get_Mode write _Set_Mode;
    property Timeouts: _EasyDAClientTimeouts read Get_Timeouts write _Set_Timeouts;
  end;

// *********************************************************************//
// DispIntf:  _EasyDAInstanceParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6ADD0BDF-1390-423D-992C-4E78A6FE91BF}
// *********************************************************************//
  _EasyDAInstanceParametersDisp = dispinterface
    ['{6ADD0BDF-1390-423D-992C-4E78A6FE91BF}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property PluginConfigurations: _ConfigurationPartCollection dispid 1610743816;
    property PluginSetups: _PluginSetupCollection dispid 1610743818;
    procedure Reset; dispid 1610743820;
    property EnableCachePersistence: WordBool dispid 1610743821;
    property EnableNativeClient: WordBool dispid 1610743823;
    property EnableNetApiClient: WordBool dispid 1610743825;
    property EnableServiceClient: WordBool dispid 1610743827;
    property PersistenceKey: WideString dispid 1610743829;
    property HoldPeriods: _EasyDAClientHoldPeriods dispid 1610743831;
    property Mode: _EasyDAClientMode dispid 1610743833;
    property Timeouts: _EasyDAClientTimeouts dispid 1610743835;
  end;

// *********************************************************************//
// Interface: _EasyDASharedParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5650C287-F671-48AC-AFBE-949CD3CD4A28}
// *********************************************************************//
  _EasyDASharedParameters = interface(IDispatch)
    ['{5650C287-F671-48AC-AFBE-949CD3CD4A28}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_PluginConfigurations: _ConfigurationPartCollection; safecall;
    procedure _Set_PluginConfigurations(const pRetVal: _ConfigurationPartCollection); safecall;
    function Get_PluginSetups: _PluginSetupCollection; safecall;
    procedure _Set_PluginSetups(const pRetVal: _PluginSetupCollection); safecall;
    procedure Reset; safecall;
    function Get_ClientParameters: _EasyDAClientParameters; safecall;
    procedure _Set_ClientParameters(const pRetVal: _EasyDAClientParameters); safecall;
    function Get_EngineParameters: _EasyDAEngineParameters; safecall;
    procedure _Set_EngineParameters(const pRetVal: _EasyDAEngineParameters); safecall;
    function Get_MachineParameters: _EasyMachineParameters; safecall;
    procedure _Set_MachineParameters(const pRetVal: _EasyMachineParameters); safecall;
    function Get_TopicParameters: _EasyDATopicParameters; safecall;
    procedure _Set_TopicParameters(const pRetVal: _EasyDATopicParameters); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property PluginConfigurations: _ConfigurationPartCollection read Get_PluginConfigurations write _Set_PluginConfigurations;
    property PluginSetups: _PluginSetupCollection read Get_PluginSetups write _Set_PluginSetups;
    property ClientParameters: _EasyDAClientParameters read Get_ClientParameters write _Set_ClientParameters;
    property EngineParameters: _EasyDAEngineParameters read Get_EngineParameters write _Set_EngineParameters;
    property MachineParameters: _EasyMachineParameters read Get_MachineParameters write _Set_MachineParameters;
    property TopicParameters: _EasyDATopicParameters read Get_TopicParameters write _Set_TopicParameters;
  end;

// *********************************************************************//
// DispIntf:  _EasyDASharedParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5650C287-F671-48AC-AFBE-949CD3CD4A28}
// *********************************************************************//
  _EasyDASharedParametersDisp = dispinterface
    ['{5650C287-F671-48AC-AFBE-949CD3CD4A28}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property PluginConfigurations: _ConfigurationPartCollection dispid 1610743816;
    property PluginSetups: _PluginSetupCollection dispid 1610743818;
    procedure Reset; dispid 1610743820;
    property ClientParameters: _EasyDAClientParameters dispid 1610743821;
    property EngineParameters: _EasyDAEngineParameters dispid 1610743823;
    property MachineParameters: _EasyMachineParameters dispid 1610743825;
    property TopicParameters: _EasyDATopicParameters dispid 1610743827;
  end;

// *********************************************************************//
// Interface: _EasyDATopicParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7B779FF3-1033-48B0-87FD-A543AB12CD34}
// *********************************************************************//
  _EasyDATopicParameters = interface(IDispatch)
    ['{7B779FF3-1033-48B0-87FD-A543AB12CD34}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_TopicRetrialDelay: Integer; safecall;
    procedure Set_TopicRetrialDelay(pRetVal: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property TopicRetrialDelay: Integer read Get_TopicRetrialDelay write Set_TopicRetrialDelay;
  end;

// *********************************************************************//
// DispIntf:  _EasyDATopicParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7B779FF3-1033-48B0-87FD-A543AB12CD34}
// *********************************************************************//
  _EasyDATopicParametersDisp = dispinterface
    ['{7B779FF3-1033-48B0-87FD-A543AB12CD34}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property TopicRetrialDelay: Integer dispid 1610743816;
  end;

// *********************************************************************//
// Interface: _DAItemDescriptor
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {734BE223-4ED7-4CAB-A443-015B0C521A44}
// *********************************************************************//
  _DAItemDescriptor = interface(IDispatch)
    ['{734BE223-4ED7-4CAB-A443-015B0C521A44}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_AliasName: WideString; safecall;
    procedure Set_AliasName(const pRetVal: WideString); safecall;
    function Get_IsAliased: WordBool; safecall;
    function Get_ArgumentString: WideString; safecall;
    function Get_BrowsePath: _BrowsePath; safecall;
    procedure _Set_BrowsePath(const pRetVal: _BrowsePath); safecall;
    function Get_BrowsePathStartingNodeDescriptor: _DANodeDescriptor; safecall;
    procedure _Set_BrowsePathStartingNodeDescriptor(const pRetVal: _DANodeDescriptor); safecall;
    function Get_HasBrowsePath: WordBool; safecall;
    function Get_HasNodeId: WordBool; safecall;
    function Get_IsNull: WordBool; safecall;
    function Get_IsRoot: WordBool; safecall;
    function Get_NodeId: WideString; safecall;
    function Get_NodePath: WideString; safecall;
    procedure Set_NodePath(const pRetVal: WideString); safecall;
    function Match(other: OleVariant): WordBool; safecall;
    function Get_ItemId: WideString; safecall;
    procedure Set_ItemId(const pRetVal: WideString); safecall;
    function Flatten: _DANodeDescriptor; safecall;
    function Get_AccessPath: WideString; safecall;
    procedure Set_AccessPath(const pRetVal: WideString); safecall;
    function Get_RequestedDataType: _VarType; safecall;
    procedure _Set_RequestedDataType(const pRetVal: _VarType); safecall;
    function Clone: _DAItemDescriptor; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property AliasName: WideString read Get_AliasName write Set_AliasName;
    property IsAliased: WordBool read Get_IsAliased;
    property ArgumentString: WideString read Get_ArgumentString;
    property BrowsePath: _BrowsePath read Get_BrowsePath write _Set_BrowsePath;
    property BrowsePathStartingNodeDescriptor: _DANodeDescriptor read Get_BrowsePathStartingNodeDescriptor write _Set_BrowsePathStartingNodeDescriptor;
    property HasBrowsePath: WordBool read Get_HasBrowsePath;
    property HasNodeId: WordBool read Get_HasNodeId;
    property IsNull: WordBool read Get_IsNull;
    property IsRoot: WordBool read Get_IsRoot;
    property NodeId: WideString read Get_NodeId;
    property NodePath: WideString read Get_NodePath write Set_NodePath;
    property ItemId: WideString read Get_ItemId write Set_ItemId;
    property AccessPath: WideString read Get_AccessPath write Set_AccessPath;
    property RequestedDataType: _VarType read Get_RequestedDataType write _Set_RequestedDataType;
  end;

// *********************************************************************//
// DispIntf:  _DAItemDescriptorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {734BE223-4ED7-4CAB-A443-015B0C521A44}
// *********************************************************************//
  _DAItemDescriptorDisp = dispinterface
    ['{734BE223-4ED7-4CAB-A443-015B0C521A44}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property AliasName: WideString dispid 1610743813;
    property IsAliased: WordBool readonly dispid 1610743815;
    property ArgumentString: WideString readonly dispid 1610743816;
    property BrowsePath: _BrowsePath dispid 1610743817;
    property BrowsePathStartingNodeDescriptor: _DANodeDescriptor dispid 1610743819;
    property HasBrowsePath: WordBool readonly dispid 1610743821;
    property HasNodeId: WordBool readonly dispid 1610743822;
    property IsNull: WordBool readonly dispid 1610743823;
    property IsRoot: WordBool readonly dispid 1610743824;
    property NodeId: WideString readonly dispid 1610743825;
    property NodePath: WideString dispid 1610743826;
    function Match(other: OleVariant): WordBool; dispid 1610743828;
    property ItemId: WideString dispid 1610743829;
    function Flatten: _DANodeDescriptor; dispid 1610743831;
    property AccessPath: WideString dispid 1610743832;
    property RequestedDataType: _VarType dispid 1610743834;
    function Clone: _DAItemDescriptor; dispid 1610743836;
  end;

// *********************************************************************//
// Interface: _DANodeElementCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D31E5208-EA12-40C5-A0BF-FC719EE76F48}
// *********************************************************************//
  _DANodeElementCollection = interface(IDispatch)
    ['{D31E5208-EA12-40C5-A0BF-FC719EE76F48}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Clone: OleVariant; safecall;
    function Get_Item(const key: WideString): _DANodeElement; safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(Item: OleVariant); safecall;
    procedure Clear; safecall;
    function Contains(const key: WideString): WordBool; safecall;
    function Remove(const key: WideString): WordBool; safecall;
    function ToList: _ElasticVector; safecall;
    function TryGetValue(const key: WideString; out Item: OleVariant): WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property Item[const key: WideString]: _DANodeElement read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _DANodeElementCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D31E5208-EA12-40C5-A0BF-FC719EE76F48}
// *********************************************************************//
  _DANodeElementCollectionDisp = dispinterface
    ['{D31E5208-EA12-40C5-A0BF-FC719EE76F48}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    function Clone: OleVariant; dispid 1610743812;
    property Item[const key: WideString]: _DANodeElement readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743814;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(Item: OleVariant); dispid 1610743816;
    procedure Clear; dispid 1610743817;
    function Contains(const key: WideString): WordBool; dispid 1610743818;
    function Remove(const key: WideString): WordBool; dispid 1610743819;
    function ToList: _ElasticVector; dispid 1610743820;
    function TryGetValue(const key: WideString; out Item: OleVariant): WordBool; dispid 1610743821;
  end;

// *********************************************************************//
// Interface: _DAPropertyElementCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {885CD305-2CF6-49B0-9CE5-4A1FE9794374}
// *********************************************************************//
  _DAPropertyElementCollection = interface(IDispatch)
    ['{885CD305-2CF6-49B0-9CE5-4A1FE9794374}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Clone: OleVariant; safecall;
    function Get_Item(key: OleVariant): _DAPropertyElement; safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(Item: OleVariant); safecall;
    procedure Clear; safecall;
    function Contains(key: OleVariant): WordBool; safecall;
    function Remove(key: OleVariant): WordBool; safecall;
    function ToList: _ElasticVector; safecall;
    function TryGetValue(key: OleVariant; out Item: OleVariant): WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property Item[key: OleVariant]: _DAPropertyElement read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _DAPropertyElementCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {885CD305-2CF6-49B0-9CE5-4A1FE9794374}
// *********************************************************************//
  _DAPropertyElementCollectionDisp = dispinterface
    ['{885CD305-2CF6-49B0-9CE5-4A1FE9794374}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    function Clone: OleVariant; dispid 1610743812;
    property Item[key: OleVariant]: _DAPropertyElement readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743814;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(Item: OleVariant); dispid 1610743816;
    procedure Clear; dispid 1610743817;
    function Contains(key: OleVariant): WordBool; dispid 1610743818;
    function Remove(key: OleVariant): WordBool; dispid 1610743819;
    function ToList: _ElasticVector; dispid 1610743820;
    function TryGetValue(key: OleVariant; out Item: OleVariant): WordBool; dispid 1610743821;
  end;

// *********************************************************************//
// Interface: _NodeElement
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {82A76A06-81CF-4482-AD47-E091B950FAFF}
// *********************************************************************//
  _NodeElement = interface(IDispatch)
    ['{82A76A06-81CF-4482-AD47-E091B950FAFF}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_BrowsePath: _BrowsePath; safecall;
    procedure _Set_BrowsePath(const pRetVal: _BrowsePath); safecall;
    function Get_HasChildren: WordBool; safecall;
    procedure Set_HasChildren(pRetVal: WordBool); safecall;
    function Get_IsRoot: WordBool; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pRetVal: WideString); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property BrowsePath: _BrowsePath read Get_BrowsePath write _Set_BrowsePath;
    property HasChildren: WordBool read Get_HasChildren write Set_HasChildren;
    property IsRoot: WordBool read Get_IsRoot;
    property Name: WideString read Get_Name write Set_Name;
  end;

// *********************************************************************//
// DispIntf:  _NodeElementDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {82A76A06-81CF-4482-AD47-E091B950FAFF}
// *********************************************************************//
  _NodeElementDisp = dispinterface
    ['{82A76A06-81CF-4482-AD47-E091B950FAFF}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property BrowsePath: _BrowsePath dispid 1610743814;
    property HasChildren: WordBool dispid 1610743816;
    property IsRoot: WordBool readonly dispid 1610743818;
    property Name: WideString dispid 1610743819;
  end;

// *********************************************************************//
// Interface: _DAPropertyElement
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2D7C4394-02A6-4488-8859-E4F1B69FC457}
// *********************************************************************//
  _DAPropertyElement = interface(IDispatch)
    ['{2D7C4394-02A6-4488-8859-E4F1B69FC457}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_DataType: _VarType; safecall;
    procedure _Set_DataType(const pRetVal: _VarType); safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pRetVal: WideString); safecall;
    function Get_DescriptorString: WideString; safecall;
    function Get_ItemId: WideString; safecall;
    procedure Set_ItemId(const pRetVal: WideString); safecall;
    function Get_Name: WideString; safecall;
    function Get_ItemPath: WideString; safecall;
    procedure Set_ItemPath(const pRetVal: WideString); safecall;
    function Get_PropertyId: _DAPropertyId; safecall;
    procedure _Set_PropertyId(const pRetVal: _DAPropertyId); safecall;
    function Get_QualifiedName: _XmlQualifiedName2; safecall;
    procedure _Set_QualifiedName(const pRetVal: _XmlQualifiedName2); safecall;
    function Get_QualifiedNameString: WideString; safecall;
    procedure Set_QualifiedNameString(const pRetVal: WideString); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property DataType: _VarType read Get_DataType write _Set_DataType;
    property Description: WideString read Get_Description write Set_Description;
    property DescriptorString: WideString read Get_DescriptorString;
    property ItemId: WideString read Get_ItemId write Set_ItemId;
    property Name: WideString read Get_Name;
    property ItemPath: WideString read Get_ItemPath write Set_ItemPath;
    property PropertyId: _DAPropertyId read Get_PropertyId write _Set_PropertyId;
    property QualifiedName: _XmlQualifiedName2 read Get_QualifiedName write _Set_QualifiedName;
    property QualifiedNameString: WideString read Get_QualifiedNameString write Set_QualifiedNameString;
  end;

// *********************************************************************//
// DispIntf:  _DAPropertyElementDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2D7C4394-02A6-4488-8859-E4F1B69FC457}
// *********************************************************************//
  _DAPropertyElementDisp = dispinterface
    ['{2D7C4394-02A6-4488-8859-E4F1B69FC457}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property DataType: _VarType dispid 1610743814;
    property Description: WideString dispid 1610743816;
    property DescriptorString: WideString readonly dispid 1610743818;
    property ItemId: WideString dispid 1610743819;
    property Name: WideString readonly dispid 1610743821;
    property ItemPath: WideString dispid 1610743822;
    property PropertyId: _DAPropertyId dispid 1610743824;
    property QualifiedName: _XmlQualifiedName2 dispid 1610743826;
    property QualifiedNameString: WideString dispid 1610743828;
  end;

// *********************************************************************//
// Interface: _DANodeElement
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6417F9C2-4DCF-4D44-BF21-5B0959229784}
// *********************************************************************//
  _DANodeElement = interface(IDispatch)
    ['{6417F9C2-4DCF-4D44-BF21-5B0959229784}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_BrowsePath: _BrowsePath; safecall;
    procedure _Set_BrowsePath(const pRetVal: _BrowsePath); safecall;
    function Get_HasChildren: WordBool; safecall;
    procedure Set_HasChildren(pRetVal: WordBool); safecall;
    function Get_IsRoot: WordBool; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pRetVal: WideString); safecall;
    function Get_IsBranch: WordBool; safecall;
    procedure Set_IsBranch(pRetVal: WordBool); safecall;
    function Get_IsLeaf: WordBool; safecall;
    procedure Set_IsLeaf(pRetVal: WordBool); safecall;
    function Get_IsHint: WordBool; safecall;
    function Get_IsItem: WordBool; safecall;
    function Get_ItemId: WideString; safecall;
    procedure Set_ItemId(const pRetVal: WideString); safecall;
    function Get_NodePath: WideString; safecall;
    procedure Set_NodePath(const pRetVal: WideString); safecall;
    function ToDANodeDescriptor: _DANodeDescriptor; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property BrowsePath: _BrowsePath read Get_BrowsePath write _Set_BrowsePath;
    property HasChildren: WordBool read Get_HasChildren write Set_HasChildren;
    property IsRoot: WordBool read Get_IsRoot;
    property Name: WideString read Get_Name write Set_Name;
    property IsBranch: WordBool read Get_IsBranch write Set_IsBranch;
    property IsLeaf: WordBool read Get_IsLeaf write Set_IsLeaf;
    property IsHint: WordBool read Get_IsHint;
    property IsItem: WordBool read Get_IsItem;
    property ItemId: WideString read Get_ItemId write Set_ItemId;
    property NodePath: WideString read Get_NodePath write Set_NodePath;
  end;

// *********************************************************************//
// DispIntf:  _DANodeElementDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6417F9C2-4DCF-4D44-BF21-5B0959229784}
// *********************************************************************//
  _DANodeElementDisp = dispinterface
    ['{6417F9C2-4DCF-4D44-BF21-5B0959229784}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property BrowsePath: _BrowsePath dispid 1610743814;
    property HasChildren: WordBool dispid 1610743816;
    property IsRoot: WordBool readonly dispid 1610743818;
    property Name: WideString dispid 1610743819;
    property IsBranch: WordBool dispid 1610743821;
    property IsLeaf: WordBool dispid 1610743823;
    property IsHint: WordBool readonly dispid 1610743825;
    property IsItem: WordBool readonly dispid 1610743826;
    property ItemId: WideString dispid 1610743827;
    property NodePath: WideString dispid 1610743829;
    function ToDANodeDescriptor: _DANodeDescriptor; dispid 1610743831;
  end;

// *********************************************************************//
// Interface: _AEAttributeSetDictionary
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F100F8EF-8CC5-4E49-BC05-0066370CB47B}
// *********************************************************************//
  _AEAttributeSetDictionary = interface(IDispatch)
    ['{F100F8EF-8CC5-4E49-BC05-0066370CB47B}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(key: Integer): _Int32Collection; safecall;
    procedure _Set_Item(key: Integer; const pRetVal: _Int32Collection); safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(key: Integer; Item: OleVariant); safecall;
    procedure Clear; safecall;
    function ContainsKey(key: Integer): WordBool; safecall;
    function Remove(key: Integer): WordBool; safecall;
    function TryGetValue(key: Integer; out Value: OleVariant): WordBool; safecall;
    function ContainsValue(Value: PSafeArray): WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property Item[key: Integer]: _Int32Collection read Get_Item write _Set_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _AEAttributeSetDictionaryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F100F8EF-8CC5-4E49-BC05-0066370CB47B}
// *********************************************************************//
  _AEAttributeSetDictionaryDisp = dispinterface
    ['{F100F8EF-8CC5-4E49-BC05-0066370CB47B}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[key: Integer]: _Int32Collection dispid 0; default;
    property Count: Integer readonly dispid 1610743814;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(key: Integer; Item: OleVariant); dispid 1610743816;
    procedure Clear; dispid 1610743817;
    function ContainsKey(key: Integer): WordBool; dispid 1610743818;
    function Remove(key: Integer): WordBool; dispid 1610743819;
    function TryGetValue(key: Integer; out Value: OleVariant): WordBool; dispid 1610743820;
    function ContainsValue(Value: {NOT_OLEAUTO(PSafeArray)}OleVariant): WordBool; dispid 1610743821;
  end;

// *********************************************************************//
// Interface: _AEAttributeValueDictionary
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FA4ED2CC-C266-4DCD-9AB8-FB64E75629A0}
// *********************************************************************//
  _AEAttributeValueDictionary = interface(IDispatch)
    ['{FA4ED2CC-C266-4DCD-9AB8-FB64E75629A0}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(key: Integer): OleVariant; safecall;
    procedure _Set_Item(key: Integer; pRetVal: OleVariant); safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(key: Integer; Item: OleVariant); safecall;
    procedure Clear; safecall;
    function ContainsKey(key: Integer): WordBool; safecall;
    function Remove(key: Integer): WordBool; safecall;
    function TryGetValue(key: Integer; out Value: OleVariant): WordBool; safecall;
    function ContainsValue(Value: OleVariant): WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property Item[key: Integer]: OleVariant read Get_Item write _Set_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _AEAttributeValueDictionaryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FA4ED2CC-C266-4DCD-9AB8-FB64E75629A0}
// *********************************************************************//
  _AEAttributeValueDictionaryDisp = dispinterface
    ['{FA4ED2CC-C266-4DCD-9AB8-FB64E75629A0}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[key: Integer]: OleVariant dispid 0; default;
    property Count: Integer readonly dispid 1610743814;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(key: Integer; Item: OleVariant); dispid 1610743816;
    procedure Clear; dispid 1610743817;
    function ContainsKey(key: Integer): WordBool; dispid 1610743818;
    function Remove(key: Integer): WordBool; dispid 1610743819;
    function TryGetValue(key: Integer; out Value: OleVariant): WordBool; dispid 1610743820;
    function ContainsValue(Value: OleVariant): WordBool; dispid 1610743821;
  end;

// *********************************************************************//
// Interface: _AEConditionState
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A2307389-54A9-4B4A-AFBD-93687184C59A}
// *********************************************************************//
  _AEConditionState = interface(IDispatch)
    ['{A2307389-54A9-4B4A-AFBD-93687184C59A}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_SubconditionElements: _AESubconditionElementCollection; safecall;
    procedure _Set_SubconditionElements(const pRetVal: _AESubconditionElementCollection); safecall;
    function Get_AttributeValues: _AEAttributeValueDictionary; safecall;
    procedure _Set_AttributeValues(const pRetVal: _AEAttributeValueDictionary); safecall;
    function Get_ActiveSubcondition: _AESubconditionElement; safecall;
    procedure _Set_ActiveSubcondition(const pRetVal: _AESubconditionElement); safecall;
    function Get_Enabled: WordBool; safecall;
    procedure Set_Enabled(pRetVal: WordBool); safecall;
    function Get_Active: WordBool; safecall;
    procedure Set_Active(pRetVal: WordBool); safecall;
    function Get_Acknowledged: WordBool; safecall;
    procedure Set_Acknowledged(pRetVal: WordBool); safecall;
    function Get_Quality: _DAQuality; safecall;
    procedure _Set_Quality(const pRetVal: _DAQuality); safecall;
    function Get_ActiveTime: TDateTime; safecall;
    procedure Set_ActiveTime(pRetVal: TDateTime); safecall;
    function Get_ActiveTimeDouble: Double; safecall;
    procedure Set_ActiveTimeDouble(pRetVal: Double); safecall;
    function Get_ActiveTimeLocal: TDateTime; safecall;
    procedure Set_ActiveTimeLocal(pRetVal: TDateTime); safecall;
    function Get_ActiveTimeLocalDouble: Double; safecall;
    procedure Set_ActiveTimeLocalDouble(pRetVal: Double); safecall;
    function Get_SubconditionActiveTime: TDateTime; safecall;
    procedure Set_SubconditionActiveTime(pRetVal: TDateTime); safecall;
    function Get_SubconditionActiveTimeDouble: Double; safecall;
    procedure Set_SubconditionActiveTimeDouble(pRetVal: Double); safecall;
    function Get_SubconditionActiveTimeLocal: TDateTime; safecall;
    procedure Set_SubconditionActiveTimeLocal(pRetVal: TDateTime); safecall;
    function Get_SubconditionActiveTimeLocalDouble: Double; safecall;
    procedure Set_SubconditionActiveTimeLocalDouble(pRetVal: Double); safecall;
    function Get_InactiveTime: TDateTime; safecall;
    procedure Set_InactiveTime(pRetVal: TDateTime); safecall;
    function Get_InactiveTimeDouble: Double; safecall;
    procedure Set_InactiveTimeDouble(pRetVal: Double); safecall;
    function Get_InactiveTimeLocal: TDateTime; safecall;
    procedure Set_InactiveTimeLocal(pRetVal: TDateTime); safecall;
    function Get_InactiveTimeLocalDouble: Double; safecall;
    procedure Set_InactiveTimeLocalDouble(pRetVal: Double); safecall;
    function Get_AcknowledgeTime: TDateTime; safecall;
    procedure Set_AcknowledgeTime(pRetVal: TDateTime); safecall;
    function Get_AcknowledgeTimeDouble: Double; safecall;
    procedure Set_AcknowledgeTimeDouble(pRetVal: Double); safecall;
    function Get_AcknowledgeTimeLocal: TDateTime; safecall;
    procedure Set_AcknowledgeTimeLocal(pRetVal: TDateTime); safecall;
    function Get_AcknowledgeTimeLocalDouble: Double; safecall;
    procedure Set_AcknowledgeTimeLocalDouble(pRetVal: Double); safecall;
    function Get_AcknowledgerId: WideString; safecall;
    procedure Set_AcknowledgerId(const pRetVal: WideString); safecall;
    function Get_Comment: WideString; safecall;
    procedure Set_Comment(const pRetVal: WideString); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property SubconditionElements: _AESubconditionElementCollection read Get_SubconditionElements write _Set_SubconditionElements;
    property AttributeValues: _AEAttributeValueDictionary read Get_AttributeValues write _Set_AttributeValues;
    property ActiveSubcondition: _AESubconditionElement read Get_ActiveSubcondition write _Set_ActiveSubcondition;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property Active: WordBool read Get_Active write Set_Active;
    property Acknowledged: WordBool read Get_Acknowledged write Set_Acknowledged;
    property Quality: _DAQuality read Get_Quality write _Set_Quality;
    property ActiveTime: TDateTime read Get_ActiveTime write Set_ActiveTime;
    property ActiveTimeDouble: Double read Get_ActiveTimeDouble write Set_ActiveTimeDouble;
    property ActiveTimeLocal: TDateTime read Get_ActiveTimeLocal write Set_ActiveTimeLocal;
    property ActiveTimeLocalDouble: Double read Get_ActiveTimeLocalDouble write Set_ActiveTimeLocalDouble;
    property SubconditionActiveTime: TDateTime read Get_SubconditionActiveTime write Set_SubconditionActiveTime;
    property SubconditionActiveTimeDouble: Double read Get_SubconditionActiveTimeDouble write Set_SubconditionActiveTimeDouble;
    property SubconditionActiveTimeLocal: TDateTime read Get_SubconditionActiveTimeLocal write Set_SubconditionActiveTimeLocal;
    property SubconditionActiveTimeLocalDouble: Double read Get_SubconditionActiveTimeLocalDouble write Set_SubconditionActiveTimeLocalDouble;
    property InactiveTime: TDateTime read Get_InactiveTime write Set_InactiveTime;
    property InactiveTimeDouble: Double read Get_InactiveTimeDouble write Set_InactiveTimeDouble;
    property InactiveTimeLocal: TDateTime read Get_InactiveTimeLocal write Set_InactiveTimeLocal;
    property InactiveTimeLocalDouble: Double read Get_InactiveTimeLocalDouble write Set_InactiveTimeLocalDouble;
    property AcknowledgeTime: TDateTime read Get_AcknowledgeTime write Set_AcknowledgeTime;
    property AcknowledgeTimeDouble: Double read Get_AcknowledgeTimeDouble write Set_AcknowledgeTimeDouble;
    property AcknowledgeTimeLocal: TDateTime read Get_AcknowledgeTimeLocal write Set_AcknowledgeTimeLocal;
    property AcknowledgeTimeLocalDouble: Double read Get_AcknowledgeTimeLocalDouble write Set_AcknowledgeTimeLocalDouble;
    property AcknowledgerId: WideString read Get_AcknowledgerId write Set_AcknowledgerId;
    property Comment: WideString read Get_Comment write Set_Comment;
  end;

// *********************************************************************//
// DispIntf:  _AEConditionStateDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A2307389-54A9-4B4A-AFBD-93687184C59A}
// *********************************************************************//
  _AEConditionStateDisp = dispinterface
    ['{A2307389-54A9-4B4A-AFBD-93687184C59A}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property SubconditionElements: _AESubconditionElementCollection dispid 1610743814;
    property AttributeValues: _AEAttributeValueDictionary dispid 1610743816;
    property ActiveSubcondition: _AESubconditionElement dispid 1610743818;
    property Enabled: WordBool dispid 1610743820;
    property Active: WordBool dispid 1610743822;
    property Acknowledged: WordBool dispid 1610743824;
    property Quality: _DAQuality dispid 1610743826;
    property ActiveTime: TDateTime dispid 1610743828;
    property ActiveTimeDouble: Double dispid 1610743830;
    property ActiveTimeLocal: TDateTime dispid 1610743832;
    property ActiveTimeLocalDouble: Double dispid 1610743834;
    property SubconditionActiveTime: TDateTime dispid 1610743836;
    property SubconditionActiveTimeDouble: Double dispid 1610743838;
    property SubconditionActiveTimeLocal: TDateTime dispid 1610743840;
    property SubconditionActiveTimeLocalDouble: Double dispid 1610743842;
    property InactiveTime: TDateTime dispid 1610743844;
    property InactiveTimeDouble: Double dispid 1610743846;
    property InactiveTimeLocal: TDateTime dispid 1610743848;
    property InactiveTimeLocalDouble: Double dispid 1610743850;
    property AcknowledgeTime: TDateTime dispid 1610743852;
    property AcknowledgeTimeDouble: Double dispid 1610743854;
    property AcknowledgeTimeLocal: TDateTime dispid 1610743856;
    property AcknowledgeTimeLocalDouble: Double dispid 1610743858;
    property AcknowledgerId: WideString dispid 1610743860;
    property Comment: WideString dispid 1610743862;
  end;

// *********************************************************************//
// Interface: _AEEventData
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F4249D93-CDB2-43F8-B24A-884548148CCF}
// *********************************************************************//
  _AEEventData = interface(IDispatch)
    ['{F4249D93-CDB2-43F8-B24A-884548148CCF}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_QualifiedSourceName: WideString; safecall;
    procedure Set_QualifiedSourceName(const pRetVal: WideString); safecall;
    function Get_Time: TDateTime; safecall;
    procedure Set_Time(pRetVal: TDateTime); safecall;
    function Get_TimeDouble: Double; safecall;
    procedure Set_TimeDouble(pRetVal: Double); safecall;
    function Get_TimeLocal: TDateTime; safecall;
    procedure Set_TimeLocal(pRetVal: TDateTime); safecall;
    function Get_TimeLocalDouble: Double; safecall;
    procedure Set_TimeLocalDouble(pRetVal: Double); safecall;
    function Get_Message: WideString; safecall;
    procedure Set_Message(const pRetVal: WideString); safecall;
    function Get_EventType: _AEEventType; safecall;
    procedure _Set_EventType(const pRetVal: _AEEventType); safecall;
    function Get_CategoryId: Integer; safecall;
    procedure Set_CategoryId(pRetVal: Integer); safecall;
    function Get_Severity: Integer; safecall;
    procedure Set_Severity(pRetVal: Integer); safecall;
    function Get_AttributeValues: _AEAttributeValueDictionary; safecall;
    procedure _Set_AttributeValues(const pRetVal: _AEAttributeValueDictionary); safecall;
    function Get_ConditionName: WideString; safecall;
    procedure Set_ConditionName(const pRetVal: WideString); safecall;
    function Get_SubconditionName: WideString; safecall;
    procedure Set_SubconditionName(const pRetVal: WideString); safecall;
    function Get_Enabled: WordBool; safecall;
    procedure Set_Enabled(pRetVal: WordBool); safecall;
    function Get_Active: WordBool; safecall;
    procedure Set_Active(pRetVal: WordBool); safecall;
    function Get_Acknowledged: WordBool; safecall;
    procedure Set_Acknowledged(pRetVal: WordBool); safecall;
    function Get_Quality: _DAQuality; safecall;
    procedure _Set_Quality(const pRetVal: _DAQuality); safecall;
    function Get_AcknowledgeRequired: WordBool; safecall;
    procedure Set_AcknowledgeRequired(pRetVal: WordBool); safecall;
    function Get_ActiveTime: TDateTime; safecall;
    procedure Set_ActiveTime(pRetVal: TDateTime); safecall;
    function Get_ActiveTimeDouble: Double; safecall;
    procedure Set_ActiveTimeDouble(pRetVal: Double); safecall;
    function Get_ActiveTimeLocal: TDateTime; safecall;
    procedure Set_ActiveTimeLocal(pRetVal: TDateTime); safecall;
    function Get_ActiveTimeLocalDouble: Double; safecall;
    procedure Set_ActiveTimeLocalDouble(pRetVal: Double); safecall;
    function Get_ActiveTimeTicks: Int64; safecall;
    procedure Set_ActiveTimeTicks(pRetVal: Int64); safecall;
    function Get_Cookie: Integer; safecall;
    procedure Set_Cookie(pRetVal: Integer); safecall;
    function Get_ActorId: WideString; safecall;
    procedure Set_ActorId(const pRetVal: WideString); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property QualifiedSourceName: WideString read Get_QualifiedSourceName write Set_QualifiedSourceName;
    property Time: TDateTime read Get_Time write Set_Time;
    property TimeDouble: Double read Get_TimeDouble write Set_TimeDouble;
    property TimeLocal: TDateTime read Get_TimeLocal write Set_TimeLocal;
    property TimeLocalDouble: Double read Get_TimeLocalDouble write Set_TimeLocalDouble;
    property Message: WideString read Get_Message write Set_Message;
    property EventType: _AEEventType read Get_EventType write _Set_EventType;
    property CategoryId: Integer read Get_CategoryId write Set_CategoryId;
    property Severity: Integer read Get_Severity write Set_Severity;
    property AttributeValues: _AEAttributeValueDictionary read Get_AttributeValues write _Set_AttributeValues;
    property ConditionName: WideString read Get_ConditionName write Set_ConditionName;
    property SubconditionName: WideString read Get_SubconditionName write Set_SubconditionName;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property Active: WordBool read Get_Active write Set_Active;
    property Acknowledged: WordBool read Get_Acknowledged write Set_Acknowledged;
    property Quality: _DAQuality read Get_Quality write _Set_Quality;
    property AcknowledgeRequired: WordBool read Get_AcknowledgeRequired write Set_AcknowledgeRequired;
    property ActiveTime: TDateTime read Get_ActiveTime write Set_ActiveTime;
    property ActiveTimeDouble: Double read Get_ActiveTimeDouble write Set_ActiveTimeDouble;
    property ActiveTimeLocal: TDateTime read Get_ActiveTimeLocal write Set_ActiveTimeLocal;
    property ActiveTimeLocalDouble: Double read Get_ActiveTimeLocalDouble write Set_ActiveTimeLocalDouble;
    property ActiveTimeTicks: Int64 read Get_ActiveTimeTicks write Set_ActiveTimeTicks;
    property Cookie: Integer read Get_Cookie write Set_Cookie;
    property ActorId: WideString read Get_ActorId write Set_ActorId;
  end;

// *********************************************************************//
// DispIntf:  _AEEventDataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F4249D93-CDB2-43F8-B24A-884548148CCF}
// *********************************************************************//
  _AEEventDataDisp = dispinterface
    ['{F4249D93-CDB2-43F8-B24A-884548148CCF}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property QualifiedSourceName: WideString dispid 1610743814;
    property Time: TDateTime dispid 1610743816;
    property TimeDouble: Double dispid 1610743818;
    property TimeLocal: TDateTime dispid 1610743820;
    property TimeLocalDouble: Double dispid 1610743822;
    property Message: WideString dispid 1610743824;
    property EventType: _AEEventType dispid 1610743826;
    property CategoryId: Integer dispid 1610743828;
    property Severity: Integer dispid 1610743830;
    property AttributeValues: _AEAttributeValueDictionary dispid 1610743832;
    property ConditionName: WideString dispid 1610743834;
    property SubconditionName: WideString dispid 1610743836;
    property Enabled: WordBool dispid 1610743838;
    property Active: WordBool dispid 1610743840;
    property Acknowledged: WordBool dispid 1610743842;
    property Quality: _DAQuality dispid 1610743844;
    property AcknowledgeRequired: WordBool dispid 1610743846;
    property ActiveTime: TDateTime dispid 1610743848;
    property ActiveTimeDouble: Double dispid 1610743850;
    property ActiveTimeLocal: TDateTime dispid 1610743852;
    property ActiveTimeLocalDouble: Double dispid 1610743854;
    property ActiveTimeTicks: Int64 dispid 1610743856;
    property Cookie: Integer dispid 1610743858;
    property ActorId: WideString dispid 1610743860;
  end;

// *********************************************************************//
// Interface: _AESubscriptionFilter
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B92E22F2-6DA2-4755-9842-3BE9F7139BF1}
// *********************************************************************//
  _AESubscriptionFilter = interface(IDispatch)
    ['{B92E22F2-6DA2-4755-9842-3BE9F7139BF1}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_EventTypes: _AEEventType; safecall;
    procedure _Set_EventTypes(const pRetVal: _AEEventType); safecall;
    function Get_Categories: PSafeArray; safecall;
    procedure Set_Categories(pRetVal: PSafeArray); safecall;
    function Get_LowSeverity: Integer; safecall;
    procedure Set_LowSeverity(pRetVal: Integer); safecall;
    function Get_HighSeverity: Integer; safecall;
    procedure Set_HighSeverity(pRetVal: Integer); safecall;
    function Get_Areas: PSafeArray; safecall;
    procedure Set_Areas(pRetVal: PSafeArray); safecall;
    function Get_Sources: PSafeArray; safecall;
    procedure Set_Sources(pRetVal: PSafeArray); safecall;
    procedure SetAreas(nodeDescriptorArray: OleVariant); safecall;
    procedure SetCategories(categoryArray: OleVariant); safecall;
    procedure SetSources(nodeDescriptorArray: OleVariant); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property EventTypes: _AEEventType read Get_EventTypes write _Set_EventTypes;
    property Categories: PSafeArray read Get_Categories write Set_Categories;
    property LowSeverity: Integer read Get_LowSeverity write Set_LowSeverity;
    property HighSeverity: Integer read Get_HighSeverity write Set_HighSeverity;
    property Areas: PSafeArray read Get_Areas write Set_Areas;
    property Sources: PSafeArray read Get_Sources write Set_Sources;
  end;

// *********************************************************************//
// DispIntf:  _AESubscriptionFilterDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B92E22F2-6DA2-4755-9842-3BE9F7139BF1}
// *********************************************************************//
  _AESubscriptionFilterDisp = dispinterface
    ['{B92E22F2-6DA2-4755-9842-3BE9F7139BF1}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property EventTypes: _AEEventType dispid 1610743814;
    property Categories: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743816;
    property LowSeverity: Integer dispid 1610743818;
    property HighSeverity: Integer dispid 1610743820;
    property Areas: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743822;
    property Sources: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743824;
    procedure SetAreas(nodeDescriptorArray: OleVariant); dispid 1610743826;
    procedure SetCategories(categoryArray: OleVariant); dispid 1610743827;
    procedure SetSources(nodeDescriptorArray: OleVariant); dispid 1610743828;
  end;

// *********************************************************************//
// Interface: _AEEventType
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CB39EE78-3CFD-4B9A-9064-C07D85D874B5}
// *********************************************************************//
  _AEEventType = interface(IDispatch)
    ['{CB39EE78-3CFD-4B9A-9064-C07D85D874B5}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_IsSimple: WordBool; safecall;
    procedure Set_IsSimple(pRetVal: WordBool); safecall;
    function Get_IsTracking: WordBool; safecall;
    procedure Set_IsTracking(pRetVal: WordBool); safecall;
    function Get_IsCondition: WordBool; safecall;
    procedure Set_IsCondition(pRetVal: WordBool); safecall;
    function Get_InternalValue: Int64; safecall;
    procedure Set_InternalValue(pRetVal: Int64); safecall;
    function Get_NumericalValue: Integer; safecall;
    procedure Set_NumericalValue(pRetVal: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property IsSimple: WordBool read Get_IsSimple write Set_IsSimple;
    property IsTracking: WordBool read Get_IsTracking write Set_IsTracking;
    property IsCondition: WordBool read Get_IsCondition write Set_IsCondition;
    property InternalValue: Int64 read Get_InternalValue write Set_InternalValue;
    property NumericalValue: Integer read Get_NumericalValue write Set_NumericalValue;
  end;

// *********************************************************************//
// DispIntf:  _AEEventTypeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CB39EE78-3CFD-4B9A-9064-C07D85D874B5}
// *********************************************************************//
  _AEEventTypeDisp = dispinterface
    ['{CB39EE78-3CFD-4B9A-9064-C07D85D874B5}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property IsSimple: WordBool dispid 1610743816;
    property IsTracking: WordBool dispid 1610743818;
    property IsCondition: WordBool dispid 1610743820;
    property InternalValue: Int64 dispid 1610743822;
    property NumericalValue: Integer dispid 1610743824;
  end;

// *********************************************************************//
// Interface: _AENodeDescriptor
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {51B70D4E-D4E6-4ADE-8AF4-1348873B213B}
// *********************************************************************//
  _AENodeDescriptor = interface(IDispatch)
    ['{51B70D4E-D4E6-4ADE-8AF4-1348873B213B}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_AliasName: WideString; safecall;
    procedure Set_AliasName(const pRetVal: WideString); safecall;
    function Get_IsAliased: WordBool; safecall;
    function Get_ArgumentString: WideString; safecall;
    function Get_BrowsePath: _BrowsePath; safecall;
    procedure _Set_BrowsePath(const pRetVal: _BrowsePath); safecall;
    function Get_HasBrowsePath: WordBool; safecall;
    function Get_HasNodeId: WordBool; safecall;
    function Get_IsNull: WordBool; safecall;
    function Get_IsRoot: WordBool; safecall;
    function Get_NodeId: WideString; safecall;
    function Get_NodePath: WideString; safecall;
    procedure Set_NodePath(const pRetVal: WideString); safecall;
    function Match(other: OleVariant): WordBool; safecall;
    function Get_BrowsePathStartingNodeDescriptor: _AENodeDescriptor; safecall;
    procedure _Set_BrowsePathStartingNodeDescriptor(const pRetVal: _AENodeDescriptor); safecall;
    function Get_QualifiedName: WideString; safecall;
    procedure Set_QualifiedName(const pRetVal: WideString); safecall;
    function Clone: _AENodeDescriptor; safecall;
    function Flatten: _AENodeDescriptor; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property AliasName: WideString read Get_AliasName write Set_AliasName;
    property IsAliased: WordBool read Get_IsAliased;
    property ArgumentString: WideString read Get_ArgumentString;
    property BrowsePath: _BrowsePath read Get_BrowsePath write _Set_BrowsePath;
    property HasBrowsePath: WordBool read Get_HasBrowsePath;
    property HasNodeId: WordBool read Get_HasNodeId;
    property IsNull: WordBool read Get_IsNull;
    property IsRoot: WordBool read Get_IsRoot;
    property NodeId: WideString read Get_NodeId;
    property NodePath: WideString read Get_NodePath write Set_NodePath;
    property BrowsePathStartingNodeDescriptor: _AENodeDescriptor read Get_BrowsePathStartingNodeDescriptor write _Set_BrowsePathStartingNodeDescriptor;
    property QualifiedName: WideString read Get_QualifiedName write Set_QualifiedName;
  end;

// *********************************************************************//
// DispIntf:  _AENodeDescriptorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {51B70D4E-D4E6-4ADE-8AF4-1348873B213B}
// *********************************************************************//
  _AENodeDescriptorDisp = dispinterface
    ['{51B70D4E-D4E6-4ADE-8AF4-1348873B213B}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property AliasName: WideString dispid 1610743813;
    property IsAliased: WordBool readonly dispid 1610743815;
    property ArgumentString: WideString readonly dispid 1610743816;
    property BrowsePath: _BrowsePath dispid 1610743817;
    property HasBrowsePath: WordBool readonly dispid 1610743819;
    property HasNodeId: WordBool readonly dispid 1610743820;
    property IsNull: WordBool readonly dispid 1610743821;
    property IsRoot: WordBool readonly dispid 1610743822;
    property NodeId: WideString readonly dispid 1610743823;
    property NodePath: WideString dispid 1610743824;
    function Match(other: OleVariant): WordBool; dispid 1610743826;
    property BrowsePathStartingNodeDescriptor: _AENodeDescriptor dispid 1610743827;
    property QualifiedName: WideString dispid 1610743829;
    function Clone: _AENodeDescriptor; dispid 1610743831;
    function Flatten: _AENodeDescriptor; dispid 1610743832;
  end;

// *********************************************************************//
// Interface: _AEBrowseParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9DD27D53-A3CB-44BD-BA1E-61E8BD47BC07}
// *********************************************************************//
  _AEBrowseParameters = interface(IDispatch)
    ['{9DD27D53-A3CB-44BD-BA1E-61E8BD47BC07}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_BrowseFilter: AEBrowseFilter; safecall;
    procedure Set_BrowseFilter(pRetVal: AEBrowseFilter); safecall;
    function Get_VendorFilter: WideString; safecall;
    procedure Set_VendorFilter(const pRetVal: WideString); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property BrowseFilter: AEBrowseFilter read Get_BrowseFilter write Set_BrowseFilter;
    property VendorFilter: WideString read Get_VendorFilter write Set_VendorFilter;
  end;

// *********************************************************************//
// DispIntf:  _AEBrowseParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9DD27D53-A3CB-44BD-BA1E-61E8BD47BC07}
// *********************************************************************//
  _AEBrowseParametersDisp = dispinterface
    ['{9DD27D53-A3CB-44BD-BA1E-61E8BD47BC07}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property BrowseFilter: AEBrowseFilter dispid 1610743816;
    property VendorFilter: WideString dispid 1610743818;
  end;

// *********************************************************************//
// Interface: _AESubscriptionParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F6E3AE64-C2B4-479B-ACB3-EBAB4B348874}
// *********************************************************************//
  _AESubscriptionParameters = interface(IDispatch)
    ['{F6E3AE64-C2B4-479B-ACB3-EBAB4B348874}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_Active: WordBool; safecall;
    procedure Set_Active(pRetVal: WordBool); safecall;
    function Get_NotificationRate: Integer; safecall;
    procedure Set_NotificationRate(pRetVal: Integer); safecall;
    function Get_Filter: _AESubscriptionFilter; safecall;
    procedure _Set_Filter(const pRetVal: _AESubscriptionFilter); safecall;
    function Get_ReturnedAttributesByCategory: _AEAttributeSetDictionary; safecall;
    procedure _Set_ReturnedAttributesByCategory(const pRetVal: _AEAttributeSetDictionary); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property Active: WordBool read Get_Active write Set_Active;
    property NotificationRate: Integer read Get_NotificationRate write Set_NotificationRate;
    property Filter: _AESubscriptionFilter read Get_Filter write _Set_Filter;
    property ReturnedAttributesByCategory: _AEAttributeSetDictionary read Get_ReturnedAttributesByCategory write _Set_ReturnedAttributesByCategory;
  end;

// *********************************************************************//
// DispIntf:  _AESubscriptionParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F6E3AE64-C2B4-479B-ACB3-EBAB4B348874}
// *********************************************************************//
  _AESubscriptionParametersDisp = dispinterface
    ['{F6E3AE64-C2B4-479B-ACB3-EBAB4B348874}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property Active: WordBool dispid 1610743816;
    property NotificationRate: Integer dispid 1610743818;
    property Filter: _AESubscriptionFilter dispid 1610743820;
    property ReturnedAttributesByCategory: _AEAttributeSetDictionary dispid 1610743822;
  end;

// *********************************************************************//
// Interface: _AEOptimizerPluginParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B1FBBABF-10D6-49C8-BC61-4C713BE0A299}
// *********************************************************************//
  _AEOptimizerPluginParameters = interface(IDispatch)
    ['{B1FBBABF-10D6-49C8-BC61-4C713BE0A299}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_EnableServerDatabase: WordBool; safecall;
    procedure Set_EnableServerDatabase(pRetVal: WordBool); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property EnableServerDatabase: WordBool read Get_EnableServerDatabase write Set_EnableServerDatabase;
  end;

// *********************************************************************//
// DispIntf:  _AEOptimizerPluginParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B1FBBABF-10D6-49C8-BC61-4C713BE0A299}
// *********************************************************************//
  _AEOptimizerPluginParametersDisp = dispinterface
    ['{B1FBBABF-10D6-49C8-BC61-4C713BE0A299}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property EnableServerDatabase: WordBool dispid 1610743816;
  end;

// *********************************************************************//
// Interface: _AENodeArguments
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {26992952-9E14-4E9A-8E65-33D27784AA57}
// *********************************************************************//
  _AENodeArguments = interface(IDispatch)
    ['{26992952-9E14-4E9A-8E65-33D27784AA57}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_State: OleVariant; safecall;
    procedure _Set_State(pRetVal: OleVariant); safecall;
    function MemberwiseClone: _OperationArguments; safecall;
    procedure SetState(State: OleVariant); safecall;
    function Get_ServerDescriptor: _ServerDescriptor; safecall;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor); safecall;
    function Get_NodeDescriptor: _AENodeDescriptor; safecall;
    procedure _Set_NodeDescriptor(const pRetVal: _AENodeDescriptor); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property State: OleVariant read Get_State write _Set_State;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property NodeDescriptor: _AENodeDescriptor read Get_NodeDescriptor write _Set_NodeDescriptor;
  end;

// *********************************************************************//
// DispIntf:  _AENodeArgumentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {26992952-9E14-4E9A-8E65-33D27784AA57}
// *********************************************************************//
  _AENodeArgumentsDisp = dispinterface
    ['{26992952-9E14-4E9A-8E65-33D27784AA57}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property State: OleVariant dispid 1610743814;
    function MemberwiseClone: _OperationArguments; dispid 1610743816;
    procedure SetState(State: OleVariant); dispid 1610743817;
    property ServerDescriptor: _ServerDescriptor dispid 1610743818;
    property NodeDescriptor: _AENodeDescriptor dispid 1610743820;
  end;

// *********************************************************************//
// Interface: _AEEventsSubscriptionArguments
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {13AF6838-C205-49EE-84F5-D7C997C9D752}
// *********************************************************************//
  _AEEventsSubscriptionArguments = interface(IDispatch)
    ['{13AF6838-C205-49EE-84F5-D7C997C9D752}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_State: OleVariant; safecall;
    procedure _Set_State(pRetVal: OleVariant); safecall;
    function MemberwiseClone: _OperationArguments; safecall;
    procedure SetState(State: OleVariant); safecall;
    function Get_ServerDescriptor: _ServerDescriptor; safecall;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor); safecall;
    function Get_SubscriptionParameters: _AESubscriptionParameters; safecall;
    procedure _Set_SubscriptionParameters(const pRetVal: _AESubscriptionParameters); safecall;
    function Get_RefreshWhenActive: WordBool; safecall;
    procedure Set_RefreshWhenActive(pRetVal: WordBool); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property State: OleVariant read Get_State write _Set_State;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property SubscriptionParameters: _AESubscriptionParameters read Get_SubscriptionParameters write _Set_SubscriptionParameters;
    property RefreshWhenActive: WordBool read Get_RefreshWhenActive write Set_RefreshWhenActive;
  end;

// *********************************************************************//
// DispIntf:  _AEEventsSubscriptionArgumentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {13AF6838-C205-49EE-84F5-D7C997C9D752}
// *********************************************************************//
  _AEEventsSubscriptionArgumentsDisp = dispinterface
    ['{13AF6838-C205-49EE-84F5-D7C997C9D752}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property State: OleVariant dispid 1610743814;
    function MemberwiseClone: _OperationArguments; dispid 1610743816;
    procedure SetState(State: OleVariant); dispid 1610743817;
    property ServerDescriptor: _ServerDescriptor dispid 1610743818;
    property SubscriptionParameters: _AESubscriptionParameters dispid 1610743820;
    property RefreshWhenActive: WordBool dispid 1610743822;
  end;

// *********************************************************************//
// Interface: _EasyAEEventsSubscriptionArguments
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D3B65F45-3ED9-4482-84F2-E13D0F4F0B3E}
// *********************************************************************//
  _EasyAEEventsSubscriptionArguments = interface(IDispatch)
    ['{D3B65F45-3ED9-4482-84F2-E13D0F4F0B3E}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_State: OleVariant; safecall;
    procedure _Set_State(pRetVal: OleVariant); safecall;
    procedure SetState(State: OleVariant); safecall;
    function Get_ServerDescriptor: _ServerDescriptor; safecall;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor); safecall;
    function Get_SubscriptionParameters: _AESubscriptionParameters; safecall;
    procedure _Set_SubscriptionParameters(const pRetVal: _AESubscriptionParameters); safecall;
    function Get_RefreshWhenActive: WordBool; safecall;
    procedure Set_RefreshWhenActive(pRetVal: WordBool); safecall;
    function MemberwiseClone: _EasyAEEventsSubscriptionArguments; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property State: OleVariant read Get_State write _Set_State;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property SubscriptionParameters: _AESubscriptionParameters read Get_SubscriptionParameters write _Set_SubscriptionParameters;
    property RefreshWhenActive: WordBool read Get_RefreshWhenActive write Set_RefreshWhenActive;
  end;

// *********************************************************************//
// DispIntf:  _EasyAEEventsSubscriptionArgumentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D3B65F45-3ED9-4482-84F2-E13D0F4F0B3E}
// *********************************************************************//
  _EasyAEEventsSubscriptionArgumentsDisp = dispinterface
    ['{D3B65F45-3ED9-4482-84F2-E13D0F4F0B3E}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property State: OleVariant dispid 1610743814;
    procedure SetState(State: OleVariant); dispid 1610743816;
    property ServerDescriptor: _ServerDescriptor dispid 1610743817;
    property SubscriptionParameters: _AESubscriptionParameters dispid 1610743819;
    property RefreshWhenActive: WordBool dispid 1610743821;
    function MemberwiseClone: _EasyAEEventsSubscriptionArguments; dispid 1610743823;
  end;

// *********************************************************************//
// Interface: _EasyAENotificationEventArgs
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {615EB036-EF3E-4B3F-8521-120483BF68AC}
// *********************************************************************//
  _EasyAENotificationEventArgs = interface(IDispatch)
    ['{615EB036-EF3E-4B3F-8521-120483BF68AC}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Diagnostics: _ExceptionCollection; safecall;
    procedure _Set_Diagnostics(const pRetVal: _ExceptionCollection); safecall;
    function Get_DiagnosticsCount: Integer; safecall;
    function Get_DiagnosticsSummary: WideString; safecall;
    function Get_ErrorId: WideString; safecall;
    procedure Set_ErrorId(const pRetVal: WideString); safecall;
    function Get_ErrorMessage: WideString; safecall;
    procedure Set_ErrorMessage(const pRetVal: WideString); safecall;
    function Get_ErrorMessageBrief: WideString; safecall;
    function Get_Exception: _Exception; safecall;
    procedure _Set_Exception(const pRetVal: _Exception); safecall;
    function Get_NormalizedDiagnostics: _NormalizedExceptionCollection; safecall;
    function Get_NormalizedException: _NormalizedException; safecall;
    function Get_Succeeded: WordBool; safecall;
    function Clone: OleVariant; safecall;
    function MemberwiseClone: _OperationEventArgs; safecall;
    function ToLongString: WideString; safecall;
    function Get_Arguments: _EasyAEEventsSubscriptionArguments; safecall;
    procedure _Set_Arguments(const pRetVal: _EasyAEEventsSubscriptionArguments); safecall;
    function Get_Refresh: WordBool; safecall;
    procedure Set_Refresh(pRetVal: WordBool); safecall;
    function Get_RefreshComplete: WordBool; safecall;
    procedure Set_RefreshComplete(pRetVal: WordBool); safecall;
    function Get_EnabledChanged: WordBool; safecall;
    procedure Set_EnabledChanged(pRetVal: WordBool); safecall;
    function Get_ActiveChanged: WordBool; safecall;
    procedure Set_ActiveChanged(pRetVal: WordBool); safecall;
    function Get_AcknowledgedChanged: WordBool; safecall;
    procedure Set_AcknowledgedChanged(pRetVal: WordBool); safecall;
    function Get_QualityChanged: WordBool; safecall;
    procedure Set_QualityChanged(pRetVal: WordBool); safecall;
    function Get_SeverityChanged: WordBool; safecall;
    procedure Set_SeverityChanged(pRetVal: WordBool); safecall;
    function Get_SubconditionChanged: WordBool; safecall;
    procedure Set_SubconditionChanged(pRetVal: WordBool); safecall;
    function Get_MessageChanged: WordBool; safecall;
    procedure Set_MessageChanged(pRetVal: WordBool); safecall;
    function Get_AttributeChanged: WordBool; safecall;
    procedure Set_AttributeChanged(pRetVal: WordBool); safecall;
    function Get_EventData: _AEEventData; safecall;
    procedure _Set_EventData(const pRetVal: _AEEventData); safecall;
    function Get_ChangeMask: Smallint; safecall;
    procedure Set_ChangeMask(pRetVal: Smallint); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Diagnostics: _ExceptionCollection read Get_Diagnostics write _Set_Diagnostics;
    property DiagnosticsCount: Integer read Get_DiagnosticsCount;
    property DiagnosticsSummary: WideString read Get_DiagnosticsSummary;
    property ErrorId: WideString read Get_ErrorId write Set_ErrorId;
    property ErrorMessage: WideString read Get_ErrorMessage write Set_ErrorMessage;
    property ErrorMessageBrief: WideString read Get_ErrorMessageBrief;
    property Exception: _Exception read Get_Exception write _Set_Exception;
    property NormalizedDiagnostics: _NormalizedExceptionCollection read Get_NormalizedDiagnostics;
    property NormalizedException: _NormalizedException read Get_NormalizedException;
    property Succeeded: WordBool read Get_Succeeded;
    property Arguments: _EasyAEEventsSubscriptionArguments read Get_Arguments write _Set_Arguments;
    property Refresh: WordBool read Get_Refresh write Set_Refresh;
    property RefreshComplete: WordBool read Get_RefreshComplete write Set_RefreshComplete;
    property EnabledChanged: WordBool read Get_EnabledChanged write Set_EnabledChanged;
    property ActiveChanged: WordBool read Get_ActiveChanged write Set_ActiveChanged;
    property AcknowledgedChanged: WordBool read Get_AcknowledgedChanged write Set_AcknowledgedChanged;
    property QualityChanged: WordBool read Get_QualityChanged write Set_QualityChanged;
    property SeverityChanged: WordBool read Get_SeverityChanged write Set_SeverityChanged;
    property SubconditionChanged: WordBool read Get_SubconditionChanged write Set_SubconditionChanged;
    property MessageChanged: WordBool read Get_MessageChanged write Set_MessageChanged;
    property AttributeChanged: WordBool read Get_AttributeChanged write Set_AttributeChanged;
    property EventData: _AEEventData read Get_EventData write _Set_EventData;
    property ChangeMask: Smallint read Get_ChangeMask write Set_ChangeMask;
  end;

// *********************************************************************//
// DispIntf:  _EasyAENotificationEventArgsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {615EB036-EF3E-4B3F-8521-120483BF68AC}
// *********************************************************************//
  _EasyAENotificationEventArgsDisp = dispinterface
    ['{615EB036-EF3E-4B3F-8521-120483BF68AC}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Diagnostics: _ExceptionCollection dispid 1610743813;
    property DiagnosticsCount: Integer readonly dispid 1610743815;
    property DiagnosticsSummary: WideString readonly dispid 1610743816;
    property ErrorId: WideString dispid 1610743817;
    property ErrorMessage: WideString dispid 1610743819;
    property ErrorMessageBrief: WideString readonly dispid 1610743821;
    property Exception: _Exception dispid 1610743822;
    property NormalizedDiagnostics: _NormalizedExceptionCollection readonly dispid 1610743824;
    property NormalizedException: _NormalizedException readonly dispid 1610743825;
    property Succeeded: WordBool readonly dispid 1610743826;
    function Clone: OleVariant; dispid 1610743827;
    function MemberwiseClone: _OperationEventArgs; dispid 1610743828;
    function ToLongString: WideString; dispid 1610743829;
    property Arguments: _EasyAEEventsSubscriptionArguments dispid 1610743830;
    property Refresh: WordBool dispid 1610743832;
    property RefreshComplete: WordBool dispid 1610743834;
    property EnabledChanged: WordBool dispid 1610743836;
    property ActiveChanged: WordBool dispid 1610743838;
    property AcknowledgedChanged: WordBool dispid 1610743840;
    property QualityChanged: WordBool dispid 1610743842;
    property SeverityChanged: WordBool dispid 1610743844;
    property SubconditionChanged: WordBool dispid 1610743846;
    property MessageChanged: WordBool dispid 1610743848;
    property AttributeChanged: WordBool dispid 1610743850;
    property EventData: _AEEventData dispid 1610743852;
    property ChangeMask: Smallint dispid 1610743854;
  end;

// *********************************************************************//
// Interface: _AENodeElementCollectionResult
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {38BD9039-5C18-4C15-96F5-F6114C53E477}
// *********************************************************************//
  _AENodeElementCollectionResult = interface(IDispatch)
    ['{38BD9039-5C18-4C15-96F5-F6114C53E477}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_Diagnostics: _ExceptionCollection; safecall;
    procedure _Set_Diagnostics(const pRetVal: _ExceptionCollection); safecall;
    function Get_DiagnosticsCount: Integer; safecall;
    function Get_DiagnosticsSummary: WideString; safecall;
    function Get_ErrorId: WideString; safecall;
    procedure Set_ErrorId(const pRetVal: WideString); safecall;
    function Get_ErrorMessage: WideString; safecall;
    procedure Set_ErrorMessage(const pRetVal: WideString); safecall;
    function Get_ErrorMessageBrief: WideString; safecall;
    function Get_Exception: _Exception; safecall;
    procedure _Set_Exception(const pRetVal: _Exception); safecall;
    function Get_NormalizedDiagnostics: _NormalizedExceptionCollection; safecall;
    function Get_NormalizedException: _NormalizedException; safecall;
    function Get_State: OleVariant; safecall;
    procedure _Set_State(pRetVal: OleVariant); safecall;
    function Get_Succeeded: WordBool; safecall;
    function MemberwiseClone: _OperationResult; safecall;
    procedure SetState(State: OleVariant); safecall;
    procedure ThrowIfFailed; safecall;
    function Get_RegularizedValue: OleVariant; safecall;
    function Get_Value: _AENodeElementCollection; safecall;
    procedure _Set_Value(const pRetVal: _AENodeElementCollection); safecall;
    function Get_ValueType: _Type; safecall;
    procedure SetValue(Value: OleVariant); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property Diagnostics: _ExceptionCollection read Get_Diagnostics write _Set_Diagnostics;
    property DiagnosticsCount: Integer read Get_DiagnosticsCount;
    property DiagnosticsSummary: WideString read Get_DiagnosticsSummary;
    property ErrorId: WideString read Get_ErrorId write Set_ErrorId;
    property ErrorMessage: WideString read Get_ErrorMessage write Set_ErrorMessage;
    property ErrorMessageBrief: WideString read Get_ErrorMessageBrief;
    property Exception: _Exception read Get_Exception write _Set_Exception;
    property NormalizedDiagnostics: _NormalizedExceptionCollection read Get_NormalizedDiagnostics;
    property NormalizedException: _NormalizedException read Get_NormalizedException;
    property State: OleVariant read Get_State write _Set_State;
    property Succeeded: WordBool read Get_Succeeded;
    property RegularizedValue: OleVariant read Get_RegularizedValue;
    property Value: _AENodeElementCollection read Get_Value write _Set_Value;
    property ValueType: _Type read Get_ValueType;
  end;

// *********************************************************************//
// DispIntf:  _AENodeElementCollectionResultDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {38BD9039-5C18-4C15-96F5-F6114C53E477}
// *********************************************************************//
  _AENodeElementCollectionResultDisp = dispinterface
    ['{38BD9039-5C18-4C15-96F5-F6114C53E477}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    function Clone: OleVariant; dispid 1610743815;
    property Diagnostics: _ExceptionCollection dispid 1610743816;
    property DiagnosticsCount: Integer readonly dispid 1610743818;
    property DiagnosticsSummary: WideString readonly dispid 1610743819;
    property ErrorId: WideString dispid 1610743820;
    property ErrorMessage: WideString dispid 1610743822;
    property ErrorMessageBrief: WideString readonly dispid 1610743824;
    property Exception: _Exception dispid 1610743825;
    property NormalizedDiagnostics: _NormalizedExceptionCollection readonly dispid 1610743827;
    property NormalizedException: _NormalizedException readonly dispid 1610743828;
    property State: OleVariant dispid 1610743829;
    property Succeeded: WordBool readonly dispid 1610743831;
    function MemberwiseClone: _OperationResult; dispid 1610743832;
    procedure SetState(State: OleVariant); dispid 1610743833;
    procedure ThrowIfFailed; dispid 1610743834;
    property RegularizedValue: OleVariant readonly dispid 1610743835;
    property Value: _AENodeElementCollection dispid 1610743836;
    property ValueType: _Type readonly dispid 1610743838;
    procedure SetValue(Value: OleVariant); dispid 1610743839;
  end;

// *********************************************************************//
// Interface: _AEBrowseArguments
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3EBA0F70-721A-492F-81E2-9CBC7262A756}
// *********************************************************************//
  _AEBrowseArguments = interface(IDispatch)
    ['{3EBA0F70-721A-492F-81E2-9CBC7262A756}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_State: OleVariant; safecall;
    procedure _Set_State(pRetVal: OleVariant); safecall;
    function MemberwiseClone: _OperationArguments; safecall;
    procedure SetState(State: OleVariant); safecall;
    function Get_ServerDescriptor: _ServerDescriptor; safecall;
    procedure _Set_ServerDescriptor(const pRetVal: _ServerDescriptor); safecall;
    function Get_NodeDescriptor: _AENodeDescriptor; safecall;
    procedure _Set_NodeDescriptor(const pRetVal: _AENodeDescriptor); safecall;
    function Get_BrowseParameters: _AEBrowseParameters; safecall;
    procedure _Set_BrowseParameters(const pRetVal: _AEBrowseParameters); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property State: OleVariant read Get_State write _Set_State;
    property ServerDescriptor: _ServerDescriptor read Get_ServerDescriptor write _Set_ServerDescriptor;
    property NodeDescriptor: _AENodeDescriptor read Get_NodeDescriptor write _Set_NodeDescriptor;
    property BrowseParameters: _AEBrowseParameters read Get_BrowseParameters write _Set_BrowseParameters;
  end;

// *********************************************************************//
// DispIntf:  _AEBrowseArgumentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3EBA0F70-721A-492F-81E2-9CBC7262A756}
// *********************************************************************//
  _AEBrowseArgumentsDisp = dispinterface
    ['{3EBA0F70-721A-492F-81E2-9CBC7262A756}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property State: OleVariant dispid 1610743814;
    function MemberwiseClone: _OperationArguments; dispid 1610743816;
    procedure SetState(State: OleVariant); dispid 1610743817;
    property ServerDescriptor: _ServerDescriptor dispid 1610743818;
    property NodeDescriptor: _AENodeDescriptor dispid 1610743820;
    property BrowseParameters: _AEBrowseParameters dispid 1610743822;
  end;

// *********************************************************************//
// Interface: _AEClientMode
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EA583E10-7DC7-43A6-B29E-3CA5FBFC28DB}
// *********************************************************************//
  _AEClientMode = interface(IDispatch)
    ['{EA583E10-7DC7-43A6-B29E-3CA5FBFC28DB}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
  end;

// *********************************************************************//
// DispIntf:  _AEClientModeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EA583E10-7DC7-43A6-B29E-3CA5FBFC28DB}
// *********************************************************************//
  _AEClientModeDisp = dispinterface
    ['{EA583E10-7DC7-43A6-B29E-3CA5FBFC28DB}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
  end;

// *********************************************************************//
// Interface: _EasyAEClientMode
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1907C649-CD2F-4D12-9FB1-9C31D755EF34}
// *********************************************************************//
  _EasyAEClientMode = interface(IDispatch)
    ['{1907C649-CD2F-4D12-9FB1-9C31D755EF34}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_AcknowledgerId: WideString; safecall;
    procedure Set_AcknowledgerId(const pRetVal: WideString); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property AcknowledgerId: WideString read Get_AcknowledgerId write Set_AcknowledgerId;
  end;

// *********************************************************************//
// DispIntf:  _EasyAEClientModeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1907C649-CD2F-4D12-9FB1-9C31D755EF34}
// *********************************************************************//
  _EasyAEClientModeDisp = dispinterface
    ['{1907C649-CD2F-4D12-9FB1-9C31D755EF34}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property AcknowledgerId: WideString dispid 1610743816;
  end;

// *********************************************************************//
// Interface: _EasyAEAdaptableParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DB7C0CFE-771F-4736-900F-5109A10DD723}
// *********************************************************************//
  _EasyAEAdaptableParameters = interface(IDispatch)
    ['{DB7C0CFE-771F-4736-900F-5109A10DD723}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    procedure Reset; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
  end;

// *********************************************************************//
// DispIntf:  _EasyAEAdaptableParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DB7C0CFE-771F-4736-900F-5109A10DD723}
// *********************************************************************//
  _EasyAEAdaptableParametersDisp = dispinterface
    ['{DB7C0CFE-771F-4736-900F-5109A10DD723}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    procedure Reset; dispid 1610743816;
  end;

// *********************************************************************//
// Interface: _EasyAEClientHoldPeriods
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ED4F692D-BAAB-468A-AF06-7A645E0C4513}
// *********************************************************************//
  _EasyAEClientHoldPeriods = interface(IDispatch)
    ['{ED4F692D-BAAB-468A-AF06-7A645E0C4513}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_ServerDetach: Integer; safecall;
    procedure Set_ServerDetach(pRetVal: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property ServerDetach: Integer read Get_ServerDetach write Set_ServerDetach;
  end;

// *********************************************************************//
// DispIntf:  _EasyAEClientHoldPeriodsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ED4F692D-BAAB-468A-AF06-7A645E0C4513}
// *********************************************************************//
  _EasyAEClientHoldPeriodsDisp = dispinterface
    ['{ED4F692D-BAAB-468A-AF06-7A645E0C4513}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property ServerDetach: Integer dispid 1610743816;
  end;

// *********************************************************************//
// Interface: _EasyAEClientParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {82B958B9-55EA-4843-BBC2-3F3362AF377C}
// *********************************************************************//
  _EasyAEClientParameters = interface(IDispatch)
    ['{82B958B9-55EA-4843-BBC2-3F3362AF377C}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_ClientReconnectDelay: Integer; safecall;
    procedure Set_ClientReconnectDelay(pRetVal: Integer); safecall;
    function Get_ComInstantiationParameters: _ComInstantiationParameters; safecall;
    procedure _Set_ComInstantiationParameters(const pRetVal: _ComInstantiationParameters); safecall;
    function Get_ServerFailedReconnectDelay: Integer; safecall;
    procedure Set_ServerFailedReconnectDelay(pRetVal: Integer); safecall;
    function Get_ServerShutdownReconnectDelay: Integer; safecall;
    procedure Set_ServerShutdownReconnectDelay(pRetVal: Integer); safecall;
    function Get_ServerStatusCheckPeriod: Integer; safecall;
    procedure Set_ServerStatusCheckPeriod(pRetVal: Integer); safecall;
    function GetEffectiveComInstantiationParameters: _ComInstantiationParameters; safecall;
    function Get_RequestQueueSize: Integer; safecall;
    procedure Set_RequestQueueSize(pRetVal: Integer); safecall;
    function Get_LinkCallbackQueueSize: Integer; safecall;
    procedure Set_LinkCallbackQueueSize(pRetVal: Integer); safecall;
    function Get_ResponseQueueSize: Integer; safecall;
    procedure Set_ResponseQueueSize(pRetVal: Integer); safecall;
    function Get_BrowseNodesChunk: Integer; safecall;
    procedure Set_BrowseNodesChunk(pRetVal: Integer); safecall;
    function Get_LinkRetrialPeriod: Integer; safecall;
    procedure Set_LinkRetrialPeriod(pRetVal: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property ClientReconnectDelay: Integer read Get_ClientReconnectDelay write Set_ClientReconnectDelay;
    property ComInstantiationParameters: _ComInstantiationParameters read Get_ComInstantiationParameters write _Set_ComInstantiationParameters;
    property ServerFailedReconnectDelay: Integer read Get_ServerFailedReconnectDelay write Set_ServerFailedReconnectDelay;
    property ServerShutdownReconnectDelay: Integer read Get_ServerShutdownReconnectDelay write Set_ServerShutdownReconnectDelay;
    property ServerStatusCheckPeriod: Integer read Get_ServerStatusCheckPeriod write Set_ServerStatusCheckPeriod;
    property RequestQueueSize: Integer read Get_RequestQueueSize write Set_RequestQueueSize;
    property LinkCallbackQueueSize: Integer read Get_LinkCallbackQueueSize write Set_LinkCallbackQueueSize;
    property ResponseQueueSize: Integer read Get_ResponseQueueSize write Set_ResponseQueueSize;
    property BrowseNodesChunk: Integer read Get_BrowseNodesChunk write Set_BrowseNodesChunk;
    property LinkRetrialPeriod: Integer read Get_LinkRetrialPeriod write Set_LinkRetrialPeriod;
  end;

// *********************************************************************//
// DispIntf:  _EasyAEClientParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {82B958B9-55EA-4843-BBC2-3F3362AF377C}
// *********************************************************************//
  _EasyAEClientParametersDisp = dispinterface
    ['{82B958B9-55EA-4843-BBC2-3F3362AF377C}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property ClientReconnectDelay: Integer dispid 1610743816;
    property ComInstantiationParameters: _ComInstantiationParameters dispid 1610743818;
    property ServerFailedReconnectDelay: Integer dispid 1610743820;
    property ServerShutdownReconnectDelay: Integer dispid 1610743822;
    property ServerStatusCheckPeriod: Integer dispid 1610743824;
    function GetEffectiveComInstantiationParameters: _ComInstantiationParameters; dispid 1610743826;
    property RequestQueueSize: Integer dispid 1610743827;
    property LinkCallbackQueueSize: Integer dispid 1610743829;
    property ResponseQueueSize: Integer dispid 1610743831;
    property BrowseNodesChunk: Integer dispid 1610743833;
    property LinkRetrialPeriod: Integer dispid 1610743835;
  end;

// *********************************************************************//
// Interface: _EasyAEEngineParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CA789341-2F42-4D8B-9BBD-26BCB78722D7}
// *********************************************************************//
  _EasyAEEngineParameters = interface(IDispatch)
    ['{CA789341-2F42-4D8B-9BBD-26BCB78722D7}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_GarbageCollectionPeriod: Integer; safecall;
    procedure Set_GarbageCollectionPeriod(pRetVal: Integer); safecall;
    function Get_WorkerSleepDelay: Integer; safecall;
    procedure Set_WorkerSleepDelay(pRetVal: Integer); safecall;
    function Get_DefaultEventQueueSize: Integer; safecall;
    procedure Set_DefaultEventQueueSize(pRetVal: Integer); safecall;
    function Get_MaxClientAge: Integer; safecall;
    procedure Set_MaxClientAge(pRetVal: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property GarbageCollectionPeriod: Integer read Get_GarbageCollectionPeriod write Set_GarbageCollectionPeriod;
    property WorkerSleepDelay: Integer read Get_WorkerSleepDelay write Set_WorkerSleepDelay;
    property DefaultEventQueueSize: Integer read Get_DefaultEventQueueSize write Set_DefaultEventQueueSize;
    property MaxClientAge: Integer read Get_MaxClientAge write Set_MaxClientAge;
  end;

// *********************************************************************//
// DispIntf:  _EasyAEEngineParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CA789341-2F42-4D8B-9BBD-26BCB78722D7}
// *********************************************************************//
  _EasyAEEngineParametersDisp = dispinterface
    ['{CA789341-2F42-4D8B-9BBD-26BCB78722D7}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property GarbageCollectionPeriod: Integer dispid 1610743816;
    property WorkerSleepDelay: Integer dispid 1610743818;
    property DefaultEventQueueSize: Integer dispid 1610743820;
    property MaxClientAge: Integer dispid 1610743822;
  end;

// *********************************************************************//
// Interface: _EasyAEInstanceParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6EC497D4-DAFD-44FE-808B-E75B7B44D2FF}
// *********************************************************************//
  _EasyAEInstanceParameters = interface(IDispatch)
    ['{6EC497D4-DAFD-44FE-808B-E75B7B44D2FF}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_PluginConfigurations: _ConfigurationPartCollection; safecall;
    procedure _Set_PluginConfigurations(const pRetVal: _ConfigurationPartCollection); safecall;
    function Get_PluginSetups: _PluginSetupCollection; safecall;
    procedure _Set_PluginSetups(const pRetVal: _PluginSetupCollection); safecall;
    procedure Reset; safecall;
    function Get_EnableCachePersistence: WordBool; safecall;
    procedure Set_EnableCachePersistence(pRetVal: WordBool); safecall;
    function Get_EnableNativeClient: WordBool; safecall;
    procedure Set_EnableNativeClient(pRetVal: WordBool); safecall;
    function Get_EnableNetApiClient: WordBool; safecall;
    procedure Set_EnableNetApiClient(pRetVal: WordBool); safecall;
    function Get_EnableServiceClient: WordBool; safecall;
    procedure Set_EnableServiceClient(pRetVal: WordBool); safecall;
    function Get_PersistenceKey: WideString; safecall;
    procedure Set_PersistenceKey(const pRetVal: WideString); safecall;
    function Get_HoldPeriods: _EasyAEClientHoldPeriods; safecall;
    procedure _Set_HoldPeriods(const pRetVal: _EasyAEClientHoldPeriods); safecall;
    function Get_Mode: _EasyAEClientMode; safecall;
    procedure _Set_Mode(const pRetVal: _EasyAEClientMode); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property PluginConfigurations: _ConfigurationPartCollection read Get_PluginConfigurations write _Set_PluginConfigurations;
    property PluginSetups: _PluginSetupCollection read Get_PluginSetups write _Set_PluginSetups;
    property EnableCachePersistence: WordBool read Get_EnableCachePersistence write Set_EnableCachePersistence;
    property EnableNativeClient: WordBool read Get_EnableNativeClient write Set_EnableNativeClient;
    property EnableNetApiClient: WordBool read Get_EnableNetApiClient write Set_EnableNetApiClient;
    property EnableServiceClient: WordBool read Get_EnableServiceClient write Set_EnableServiceClient;
    property PersistenceKey: WideString read Get_PersistenceKey write Set_PersistenceKey;
    property HoldPeriods: _EasyAEClientHoldPeriods read Get_HoldPeriods write _Set_HoldPeriods;
    property Mode: _EasyAEClientMode read Get_Mode write _Set_Mode;
  end;

// *********************************************************************//
// DispIntf:  _EasyAEInstanceParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6EC497D4-DAFD-44FE-808B-E75B7B44D2FF}
// *********************************************************************//
  _EasyAEInstanceParametersDisp = dispinterface
    ['{6EC497D4-DAFD-44FE-808B-E75B7B44D2FF}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property PluginConfigurations: _ConfigurationPartCollection dispid 1610743816;
    property PluginSetups: _PluginSetupCollection dispid 1610743818;
    procedure Reset; dispid 1610743820;
    property EnableCachePersistence: WordBool dispid 1610743821;
    property EnableNativeClient: WordBool dispid 1610743823;
    property EnableNetApiClient: WordBool dispid 1610743825;
    property EnableServiceClient: WordBool dispid 1610743827;
    property PersistenceKey: WideString dispid 1610743829;
    property HoldPeriods: _EasyAEClientHoldPeriods dispid 1610743831;
    property Mode: _EasyAEClientMode dispid 1610743833;
  end;

// *********************************************************************//
// Interface: _EasyAELinkParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {776CD206-1C58-4E31-A753-CFE977A3FC57}
// *********************************************************************//
  _EasyAELinkParameters = interface(IDispatch)
    ['{776CD206-1C58-4E31-A753-CFE977A3FC57}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_LinkRetrialDelay: Integer; safecall;
    procedure Set_LinkRetrialDelay(pRetVal: Integer); safecall;
    function Get_BufferSize: Integer; safecall;
    procedure Set_BufferSize(pRetVal: Integer); safecall;
    function Get_FastestNotificationRate: Integer; safecall;
    procedure Set_FastestNotificationRate(pRetVal: Integer); safecall;
    function Get_SlowestNotificationRate: Integer; safecall;
    procedure Set_SlowestNotificationRate(pRetVal: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property LinkRetrialDelay: Integer read Get_LinkRetrialDelay write Set_LinkRetrialDelay;
    property BufferSize: Integer read Get_BufferSize write Set_BufferSize;
    property FastestNotificationRate: Integer read Get_FastestNotificationRate write Set_FastestNotificationRate;
    property SlowestNotificationRate: Integer read Get_SlowestNotificationRate write Set_SlowestNotificationRate;
  end;

// *********************************************************************//
// DispIntf:  _EasyAELinkParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {776CD206-1C58-4E31-A753-CFE977A3FC57}
// *********************************************************************//
  _EasyAELinkParametersDisp = dispinterface
    ['{776CD206-1C58-4E31-A753-CFE977A3FC57}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property LinkRetrialDelay: Integer dispid 1610743816;
    property BufferSize: Integer dispid 1610743818;
    property FastestNotificationRate: Integer dispid 1610743820;
    property SlowestNotificationRate: Integer dispid 1610743822;
  end;

// *********************************************************************//
// Interface: _EasyAESharedParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4BF84E81-52FC-4736-817C-C1A8100E7E43}
// *********************************************************************//
  _EasyAESharedParameters = interface(IDispatch)
    ['{4BF84E81-52FC-4736-817C-C1A8100E7E43}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_PluginConfigurations: _ConfigurationPartCollection; safecall;
    procedure _Set_PluginConfigurations(const pRetVal: _ConfigurationPartCollection); safecall;
    function Get_PluginSetups: _PluginSetupCollection; safecall;
    procedure _Set_PluginSetups(const pRetVal: _PluginSetupCollection); safecall;
    procedure Reset; safecall;
    function Get_ClientParameters: _EasyAEClientParameters; safecall;
    procedure _Set_ClientParameters(const pRetVal: _EasyAEClientParameters); safecall;
    function Get_EngineParameters: _EasyAEEngineParameters; safecall;
    procedure _Set_EngineParameters(const pRetVal: _EasyAEEngineParameters); safecall;
    function Get_LinkParameters: _EasyAELinkParameters; safecall;
    procedure _Set_LinkParameters(const pRetVal: _EasyAELinkParameters); safecall;
    function Get_MachineParameters: _EasyMachineParameters; safecall;
    procedure _Set_MachineParameters(const pRetVal: _EasyMachineParameters); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property PluginConfigurations: _ConfigurationPartCollection read Get_PluginConfigurations write _Set_PluginConfigurations;
    property PluginSetups: _PluginSetupCollection read Get_PluginSetups write _Set_PluginSetups;
    property ClientParameters: _EasyAEClientParameters read Get_ClientParameters write _Set_ClientParameters;
    property EngineParameters: _EasyAEEngineParameters read Get_EngineParameters write _Set_EngineParameters;
    property LinkParameters: _EasyAELinkParameters read Get_LinkParameters write _Set_LinkParameters;
    property MachineParameters: _EasyMachineParameters read Get_MachineParameters write _Set_MachineParameters;
  end;

// *********************************************************************//
// DispIntf:  _EasyAESharedParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4BF84E81-52FC-4736-817C-C1A8100E7E43}
// *********************************************************************//
  _EasyAESharedParametersDisp = dispinterface
    ['{4BF84E81-52FC-4736-817C-C1A8100E7E43}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property PluginConfigurations: _ConfigurationPartCollection dispid 1610743816;
    property PluginSetups: _PluginSetupCollection dispid 1610743818;
    procedure Reset; dispid 1610743820;
    property ClientParameters: _EasyAEClientParameters dispid 1610743821;
    property EngineParameters: _EasyAEEngineParameters dispid 1610743823;
    property LinkParameters: _EasyAELinkParameters dispid 1610743825;
    property MachineParameters: _EasyMachineParameters dispid 1610743827;
  end;

// *********************************************************************//
// Interface: _AEAttributeElementCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {096C7DC7-9D16-4D13-A5F3-AC4461926812}
// *********************************************************************//
  _AEAttributeElementCollection = interface(IDispatch)
    ['{096C7DC7-9D16-4D13-A5F3-AC4461926812}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Clone: OleVariant; safecall;
    function Get_Item(key: Integer): _AEAttributeElement; safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(Item: OleVariant); safecall;
    procedure Clear; safecall;
    function Contains(key: Integer): WordBool; safecall;
    function Remove(key: Integer): WordBool; safecall;
    function ToList: _ElasticVector; safecall;
    function TryGetValue(key: Integer; out Item: OleVariant): WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property Item[key: Integer]: _AEAttributeElement read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _AEAttributeElementCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {096C7DC7-9D16-4D13-A5F3-AC4461926812}
// *********************************************************************//
  _AEAttributeElementCollectionDisp = dispinterface
    ['{096C7DC7-9D16-4D13-A5F3-AC4461926812}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    function Clone: OleVariant; dispid 1610743812;
    property Item[key: Integer]: _AEAttributeElement readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743814;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(Item: OleVariant); dispid 1610743816;
    procedure Clear; dispid 1610743817;
    function Contains(key: Integer): WordBool; dispid 1610743818;
    function Remove(key: Integer): WordBool; dispid 1610743819;
    function ToList: _ElasticVector; dispid 1610743820;
    function TryGetValue(key: Integer; out Item: OleVariant): WordBool; dispid 1610743821;
  end;

// *********************************************************************//
// Interface: _AECategoryElementCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9C7E1ABA-3EB2-4054-AF70-B9DE0DEFC449}
// *********************************************************************//
  _AECategoryElementCollection = interface(IDispatch)
    ['{9C7E1ABA-3EB2-4054-AF70-B9DE0DEFC449}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Clone: OleVariant; safecall;
    function Get_Item(key: Integer): _AECategoryElement; safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(Item: OleVariant); safecall;
    procedure Clear; safecall;
    function Contains(key: Integer): WordBool; safecall;
    function Remove(key: Integer): WordBool; safecall;
    function ToList: _ElasticVector; safecall;
    function TryGetValue(key: Integer; out Item: OleVariant): WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property Item[key: Integer]: _AECategoryElement read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _AECategoryElementCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9C7E1ABA-3EB2-4054-AF70-B9DE0DEFC449}
// *********************************************************************//
  _AECategoryElementCollectionDisp = dispinterface
    ['{9C7E1ABA-3EB2-4054-AF70-B9DE0DEFC449}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    function Clone: OleVariant; dispid 1610743812;
    property Item[key: Integer]: _AECategoryElement readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743814;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(Item: OleVariant); dispid 1610743816;
    procedure Clear; dispid 1610743817;
    function Contains(key: Integer): WordBool; dispid 1610743818;
    function Remove(key: Integer): WordBool; dispid 1610743819;
    function ToList: _ElasticVector; dispid 1610743820;
    function TryGetValue(key: Integer; out Item: OleVariant): WordBool; dispid 1610743821;
  end;

// *********************************************************************//
// Interface: _AEConditionElementCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {83680EF6-F273-4243-8508-1C9C819ED180}
// *********************************************************************//
  _AEConditionElementCollection = interface(IDispatch)
    ['{83680EF6-F273-4243-8508-1C9C819ED180}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Clone: OleVariant; safecall;
    function Get_Item(const key: WideString): _AEConditionElement; safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(Item: OleVariant); safecall;
    procedure Clear; safecall;
    function Contains(const key: WideString): WordBool; safecall;
    function Remove(const key: WideString): WordBool; safecall;
    function ToList: _ElasticVector; safecall;
    function TryGetValue(const key: WideString; out Item: OleVariant): WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property Item[const key: WideString]: _AEConditionElement read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _AEConditionElementCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {83680EF6-F273-4243-8508-1C9C819ED180}
// *********************************************************************//
  _AEConditionElementCollectionDisp = dispinterface
    ['{83680EF6-F273-4243-8508-1C9C819ED180}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    function Clone: OleVariant; dispid 1610743812;
    property Item[const key: WideString]: _AEConditionElement readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743814;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(Item: OleVariant); dispid 1610743816;
    procedure Clear; dispid 1610743817;
    function Contains(const key: WideString): WordBool; dispid 1610743818;
    function Remove(const key: WideString): WordBool; dispid 1610743819;
    function ToList: _ElasticVector; dispid 1610743820;
    function TryGetValue(const key: WideString; out Item: OleVariant): WordBool; dispid 1610743821;
  end;

// *********************************************************************//
// Interface: _AENodeElementCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D7C65220-B9C9-4737-8935-A8071C2186EA}
// *********************************************************************//
  _AENodeElementCollection = interface(IDispatch)
    ['{D7C65220-B9C9-4737-8935-A8071C2186EA}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Clone: OleVariant; safecall;
    function Get_Item(const key: WideString): _AENodeElement; safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(Item: OleVariant); safecall;
    procedure Clear; safecall;
    function Contains(const key: WideString): WordBool; safecall;
    function Remove(const key: WideString): WordBool; safecall;
    function ToList: _ElasticVector; safecall;
    function TryGetValue(const key: WideString; out Item: OleVariant): WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property Item[const key: WideString]: _AENodeElement read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _AENodeElementCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D7C65220-B9C9-4737-8935-A8071C2186EA}
// *********************************************************************//
  _AENodeElementCollectionDisp = dispinterface
    ['{D7C65220-B9C9-4737-8935-A8071C2186EA}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    function Clone: OleVariant; dispid 1610743812;
    property Item[const key: WideString]: _AENodeElement readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743814;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(Item: OleVariant); dispid 1610743816;
    procedure Clear; dispid 1610743817;
    function Contains(const key: WideString): WordBool; dispid 1610743818;
    function Remove(const key: WideString): WordBool; dispid 1610743819;
    function ToList: _ElasticVector; dispid 1610743820;
    function TryGetValue(const key: WideString; out Item: OleVariant): WordBool; dispid 1610743821;
  end;

// *********************************************************************//
// Interface: _AESubconditionElementCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DDAA5968-9E24-410E-8CE8-31680F1BB0FB}
// *********************************************************************//
  _AESubconditionElementCollection = interface(IDispatch)
    ['{DDAA5968-9E24-410E-8CE8-31680F1BB0FB}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(const key: WideString): _AESubconditionElement; safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(Item: OleVariant); safecall;
    procedure Clear; safecall;
    function Contains(const key: WideString): WordBool; safecall;
    function Remove(const key: WideString): WordBool; safecall;
    function ToList: _ElasticVector; safecall;
    function TryGetValue(const key: WideString; out Item: OleVariant): WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property Item[const key: WideString]: _AESubconditionElement read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _AESubconditionElementCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DDAA5968-9E24-410E-8CE8-31680F1BB0FB}
// *********************************************************************//
  _AESubconditionElementCollectionDisp = dispinterface
    ['{DDAA5968-9E24-410E-8CE8-31680F1BB0FB}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[const key: WideString]: _AESubconditionElement readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743813;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(Item: OleVariant); dispid 1610743815;
    procedure Clear; dispid 1610743816;
    function Contains(const key: WideString): WordBool; dispid 1610743817;
    function Remove(const key: WideString): WordBool; dispid 1610743818;
    function ToList: _ElasticVector; dispid 1610743819;
    function TryGetValue(const key: WideString; out Item: OleVariant): WordBool; dispid 1610743820;
  end;

// *********************************************************************//
// Interface: _AEAttributeElement
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E7A357CA-667F-4D1F-8A25-D0D148567E29}
// *********************************************************************//
  _AEAttributeElement = interface(IDispatch)
    ['{E7A357CA-667F-4D1F-8A25-D0D148567E29}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_AttributeId: Integer; safecall;
    procedure Set_AttributeId(pRetVal: Integer); safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pRetVal: WideString); safecall;
    function Get_DataType: _VarType; safecall;
    procedure _Set_DataType(const pRetVal: _VarType); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property AttributeId: Integer read Get_AttributeId write Set_AttributeId;
    property Description: WideString read Get_Description write Set_Description;
    property DataType: _VarType read Get_DataType write _Set_DataType;
  end;

// *********************************************************************//
// DispIntf:  _AEAttributeElementDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E7A357CA-667F-4D1F-8A25-D0D148567E29}
// *********************************************************************//
  _AEAttributeElementDisp = dispinterface
    ['{E7A357CA-667F-4D1F-8A25-D0D148567E29}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property AttributeId: Integer dispid 1610743814;
    property Description: WideString dispid 1610743816;
    property DataType: _VarType dispid 1610743818;
  end;

// *********************************************************************//
// Interface: _AECategoryElement
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3306C0FE-3AEE-47F7-A6C3-2185787D9665}
// *********************************************************************//
  _AECategoryElement = interface(IDispatch)
    ['{3306C0FE-3AEE-47F7-A6C3-2185787D9665}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_AttributeElementCount: Integer; safecall;
    function Get_AttributeElements: _AEAttributeElementCollection; safecall;
    procedure _Set_AttributeElements(const pRetVal: _AEAttributeElementCollection); safecall;
    function Get_CategoryId: Integer; safecall;
    procedure Set_CategoryId(pRetVal: Integer); safecall;
    function Get_ConditionElementCount: Integer; safecall;
    function Get_ConditionElements: _AEConditionElementCollection; safecall;
    procedure _Set_ConditionElements(const pRetVal: _AEConditionElementCollection); safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pRetVal: WideString); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property AttributeElementCount: Integer read Get_AttributeElementCount;
    property AttributeElements: _AEAttributeElementCollection read Get_AttributeElements write _Set_AttributeElements;
    property CategoryId: Integer read Get_CategoryId write Set_CategoryId;
    property ConditionElementCount: Integer read Get_ConditionElementCount;
    property ConditionElements: _AEConditionElementCollection read Get_ConditionElements write _Set_ConditionElements;
    property Description: WideString read Get_Description write Set_Description;
  end;

// *********************************************************************//
// DispIntf:  _AECategoryElementDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3306C0FE-3AEE-47F7-A6C3-2185787D9665}
// *********************************************************************//
  _AECategoryElementDisp = dispinterface
    ['{3306C0FE-3AEE-47F7-A6C3-2185787D9665}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property AttributeElementCount: Integer readonly dispid 1610743814;
    property AttributeElements: _AEAttributeElementCollection dispid 1610743815;
    property CategoryId: Integer dispid 1610743817;
    property ConditionElementCount: Integer readonly dispid 1610743819;
    property ConditionElements: _AEConditionElementCollection dispid 1610743820;
    property Description: WideString dispid 1610743822;
  end;

// *********************************************************************//
// Interface: _AEConditionElement
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9C6200EA-AA60-4135-B5AE-28ECD4A9C630}
// *********************************************************************//
  _AEConditionElement = interface(IDispatch)
    ['{9C6200EA-AA60-4135-B5AE-28ECD4A9C630}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pRetVal: WideString); safecall;
    function Get_SubconditionNames: PSafeArray; safecall;
    procedure Set_SubconditionNames(pRetVal: PSafeArray); safecall;
    procedure SetSubconditionNames(var Value: PSafeArray); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Name: WideString read Get_Name write Set_Name;
    property SubconditionNames: PSafeArray read Get_SubconditionNames write Set_SubconditionNames;
  end;

// *********************************************************************//
// DispIntf:  _AEConditionElementDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9C6200EA-AA60-4135-B5AE-28ECD4A9C630}
// *********************************************************************//
  _AEConditionElementDisp = dispinterface
    ['{9C6200EA-AA60-4135-B5AE-28ECD4A9C630}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property Name: WideString dispid 1610743814;
    property SubconditionNames: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743816;
    procedure SetSubconditionNames(var Value: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743818;
  end;

// *********************************************************************//
// Interface: _AENodeElement
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E0E7FA5B-2DAE-47B1-8053-08E2D2544EE1}
// *********************************************************************//
  _AENodeElement = interface(IDispatch)
    ['{E0E7FA5B-2DAE-47B1-8053-08E2D2544EE1}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_BrowsePath: _BrowsePath; safecall;
    procedure _Set_BrowsePath(const pRetVal: _BrowsePath); safecall;
    function Get_HasChildren: WordBool; safecall;
    procedure Set_HasChildren(pRetVal: WordBool); safecall;
    function Get_IsRoot: WordBool; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pRetVal: WideString); safecall;
    function Get_IsArea: WordBool; safecall;
    procedure Set_IsArea(pRetVal: WordBool); safecall;
    function Get_IsSource: WordBool; safecall;
    procedure Set_IsSource(pRetVal: WordBool); safecall;
    function Get_QualifiedName: WideString; safecall;
    procedure Set_QualifiedName(const pRetVal: WideString); safecall;
    function ToAENodeDescriptor: _AENodeDescriptor; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property BrowsePath: _BrowsePath read Get_BrowsePath write _Set_BrowsePath;
    property HasChildren: WordBool read Get_HasChildren write Set_HasChildren;
    property IsRoot: WordBool read Get_IsRoot;
    property Name: WideString read Get_Name write Set_Name;
    property IsArea: WordBool read Get_IsArea write Set_IsArea;
    property IsSource: WordBool read Get_IsSource write Set_IsSource;
    property QualifiedName: WideString read Get_QualifiedName write Set_QualifiedName;
  end;

// *********************************************************************//
// DispIntf:  _AENodeElementDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E0E7FA5B-2DAE-47B1-8053-08E2D2544EE1}
// *********************************************************************//
  _AENodeElementDisp = dispinterface
    ['{E0E7FA5B-2DAE-47B1-8053-08E2D2544EE1}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property BrowsePath: _BrowsePath dispid 1610743814;
    property HasChildren: WordBool dispid 1610743816;
    property IsRoot: WordBool readonly dispid 1610743818;
    property Name: WideString dispid 1610743819;
    property IsArea: WordBool dispid 1610743821;
    property IsSource: WordBool dispid 1610743823;
    property QualifiedName: WideString dispid 1610743825;
    function ToAENodeDescriptor: _AENodeDescriptor; dispid 1610743827;
  end;

// *********************************************************************//
// Interface: _AESubconditionElement
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {67123945-2427-48D6-89B7-87FE32E235EC}
// *********************************************************************//
  _AESubconditionElement = interface(IDispatch)
    ['{67123945-2427-48D6-89B7-87FE32E235EC}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pRetVal: WideString); safecall;
    function Get_Definition: WideString; safecall;
    procedure Set_Definition(const pRetVal: WideString); safecall;
    function Get_Severity: Integer; safecall;
    procedure Set_Severity(pRetVal: Integer); safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pRetVal: WideString); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Name: WideString read Get_Name write Set_Name;
    property Definition: WideString read Get_Definition write Set_Definition;
    property Severity: Integer read Get_Severity write Set_Severity;
    property Description: WideString read Get_Description write Set_Description;
  end;

// *********************************************************************//
// DispIntf:  _AESubconditionElementDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {67123945-2427-48D6-89B7-87FE32E235EC}
// *********************************************************************//
  _AESubconditionElementDisp = dispinterface
    ['{67123945-2427-48D6-89B7-87FE32E235EC}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property Name: WideString dispid 1610743814;
    property Definition: WideString dispid 1610743816;
    property Severity: Integer dispid 1610743818;
    property Description: WideString dispid 1610743820;
  end;

// *********************************************************************//
// The Class CoOpcException provides a Create and CreateRemote method to          
// create instances of the default interface _OpcException exposed by              
// the CoClass OpcException. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOpcException = class
    class function Create: _OpcException;
    class function CreateRemote(const MachineName: string): _OpcException;
  end;

// *********************************************************************//
// The Class CoEasyClientParameters provides a Create and CreateRemote method to          
// create instances of the default interface _EasyClientParameters exposed by              
// the CoClass EasyClientParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyClientParameters = class
    class function Create: _EasyClientParameters;
    class function CreateRemote(const MachineName: string): _EasyClientParameters;
  end;

// *********************************************************************//
// The Class CoEasyEngineParameters provides a Create and CreateRemote method to          
// create instances of the default interface _EasyEngineParameters exposed by              
// the CoClass EasyEngineParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyEngineParameters = class
    class function Create: _EasyEngineParameters;
    class function CreateRemote(const MachineName: string): _EasyEngineParameters;
  end;

// *********************************************************************//
// The Class CoEasyInstanceParameters provides a Create and CreateRemote method to          
// create instances of the default interface _EasyInstanceParameters exposed by              
// the CoClass EasyInstanceParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyInstanceParameters = class
    class function Create: _EasyInstanceParameters;
    class function CreateRemote(const MachineName: string): _EasyInstanceParameters;
  end;

// *********************************************************************//
// The Class CoEasyMachineParameters provides a Create and CreateRemote method to          
// create instances of the default interface _EasyMachineParameters exposed by              
// the CoClass EasyMachineParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyMachineParameters = class
    class function Create: _EasyMachineParameters;
    class function CreateRemote(const MachineName: string): _EasyMachineParameters;
  end;

// *********************************************************************//
// The Class CoDANodeDescriptor provides a Create and CreateRemote method to          
// create instances of the default interface _DANodeDescriptor exposed by              
// the CoClass DANodeDescriptor. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDANodeDescriptor = class
    class function Create: _DANodeDescriptor;
    class function CreateRemote(const MachineName: string): _DANodeDescriptor;
  end;

// *********************************************************************//
// The Class CoDAOptimizerPluginParameters provides a Create and CreateRemote method to          
// create instances of the default interface _DAOptimizerPluginParameters exposed by              
// the CoClass DAOptimizerPluginParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAOptimizerPluginParameters = class
    class function Create: _DAOptimizerPluginParameters;
    class function CreateRemote(const MachineName: string): _DAOptimizerPluginParameters;
  end;

// *********************************************************************//
// The Class CoDAAutoSubscribingParameters provides a Create and CreateRemote method to          
// create instances of the default interface _DAAutoSubscribingParameters exposed by              
// the CoClass DAAutoSubscribingParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAAutoSubscribingParameters = class
    class function Create: _DAAutoSubscribingParameters;
    class function CreateRemote(const MachineName: string): _DAAutoSubscribingParameters;
  end;

// *********************************************************************//
// The Class CoDAParameterBucketingParameters provides a Create and CreateRemote method to          
// create instances of the default interface _DAParameterBucketingParameters exposed by              
// the CoClass DAParameterBucketingParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAParameterBucketingParameters = class
    class function Create: _DAParameterBucketingParameters;
    class function CreateRemote(const MachineName: string): _DAParameterBucketingParameters;
  end;

// *********************************************************************//
// The Class CoDAParameterRestrictingParameters provides a Create and CreateRemote method to          
// create instances of the default interface _DAParameterRestrictingParameters exposed by              
// the CoClass DAParameterRestrictingParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAParameterRestrictingParameters = class
    class function Create: _DAParameterRestrictingParameters;
    class function CreateRemote(const MachineName: string): _DAParameterRestrictingParameters;
  end;

// *********************************************************************//
// The Class CoDARequestChunkingParameters provides a Create and CreateRemote method to          
// create instances of the default interface _DARequestChunkingParameters exposed by              
// the CoClass DARequestChunkingParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDARequestChunkingParameters = class
    class function Create: _DARequestChunkingParameters;
    class function CreateRemote(const MachineName: string): _DARequestChunkingParameters;
  end;

// *********************************************************************//
// The Class CoDANodeArguments provides a Create and CreateRemote method to          
// create instances of the default interface _DANodeArguments exposed by              
// the CoClass DANodeArguments. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDANodeArguments = class
    class function Create: _DANodeArguments;
    class function CreateRemote(const MachineName: string): _DANodeArguments;
  end;

// *********************************************************************//
// The Class CoDAHandleGroupArguments provides a Create and CreateRemote method to          
// create instances of the default interface _DAHandleGroupArguments exposed by              
// the CoClass DAHandleGroupArguments. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAHandleGroupArguments = class
    class function Create: _DAHandleGroupArguments;
    class function CreateRemote(const MachineName: string): _DAHandleGroupArguments;
  end;

// *********************************************************************//
// The Class CoDAItemArguments provides a Create and CreateRemote method to          
// create instances of the default interface _DAItemArguments exposed by              
// the CoClass DAItemArguments. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAItemArguments = class
    class function Create: _DAItemArguments;
    class function CreateRemote(const MachineName: string): _DAItemArguments;
  end;

// *********************************************************************//
// The Class CoDAItemGroupArguments provides a Create and CreateRemote method to          
// create instances of the default interface _DAItemGroupArguments exposed by              
// the CoClass DAItemGroupArguments. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAItemGroupArguments = class
    class function Create: _DAItemGroupArguments;
    class function CreateRemote(const MachineName: string): _DAItemGroupArguments;
  end;

// *********************************************************************//
// The Class CoDAItemValueArguments provides a Create and CreateRemote method to          
// create instances of the default interface _DAItemValueArguments exposed by              
// the CoClass DAItemValueArguments. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAItemValueArguments = class
    class function Create: _DAItemValueArguments;
    class function CreateRemote(const MachineName: string): _DAItemValueArguments;
  end;

// *********************************************************************//
// The Class CoDAItemVtqArguments provides a Create and CreateRemote method to          
// create instances of the default interface _DAItemVtqArguments exposed by              
// the CoClass DAItemVtqArguments. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAItemVtqArguments = class
    class function Create: _DAItemVtqArguments;
    class function CreateRemote(const MachineName: string): _DAItemVtqArguments;
  end;

// *********************************************************************//
// The Class CoDABrowseArguments provides a Create and CreateRemote method to          
// create instances of the default interface _DABrowseArguments exposed by              
// the CoClass DABrowseArguments. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDABrowseArguments = class
    class function Create: _DABrowseArguments;
    class function CreateRemote(const MachineName: string): _DABrowseArguments;
  end;

// *********************************************************************//
// The Class CoDANodeElementCollectionResult provides a Create and CreateRemote method to          
// create instances of the default interface _DANodeElementCollectionResult exposed by              
// the CoClass DANodeElementCollectionResult. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDANodeElementCollectionResult = class
    class function Create: _DANodeElementCollectionResult;
    class function CreateRemote(const MachineName: string): _DANodeElementCollectionResult;
  end;

// *********************************************************************//
// The Class CoDAPropertyArguments provides a Create and CreateRemote method to          
// create instances of the default interface _DAPropertyArguments exposed by              
// the CoClass DAPropertyArguments. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAPropertyArguments = class
    class function Create: _DAPropertyArguments;
    class function CreateRemote(const MachineName: string): _DAPropertyArguments;
  end;

// *********************************************************************//
// The Class CoDAReadItemArguments provides a Create and CreateRemote method to          
// create instances of the default interface _DAReadItemArguments exposed by              
// the CoClass DAReadItemArguments. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAReadItemArguments = class
    class function Create: _DAReadItemArguments;
    class function CreateRemote(const MachineName: string): _DAReadItemArguments;
  end;

// *********************************************************************//
// The Class CoDAVtqResult provides a Create and CreateRemote method to          
// create instances of the default interface _DAVtqResult exposed by              
// the CoClass DAVtqResult. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAVtqResult = class
    class function Create: _DAVtqResult;
    class function CreateRemote(const MachineName: string): _DAVtqResult;
  end;

// *********************************************************************//
// The Class CoEasyDAItemChangedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _EasyDAItemChangedEventArgs exposed by              
// the CoClass EasyDAItemChangedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyDAItemChangedEventArgs = class
    class function Create: _EasyDAItemChangedEventArgs;
    class function CreateRemote(const MachineName: string): _EasyDAItemChangedEventArgs;
  end;

// *********************************************************************//
// The Class CoEasyDAItemSubscriptionArguments provides a Create and CreateRemote method to          
// create instances of the default interface _EasyDAItemSubscriptionArguments exposed by              
// the CoClass EasyDAItemSubscriptionArguments. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyDAItemSubscriptionArguments = class
    class function Create: _EasyDAItemSubscriptionArguments;
    class function CreateRemote(const MachineName: string): _EasyDAItemSubscriptionArguments;
  end;

// *********************************************************************//
// The Class CoDAClientMode provides a Create and CreateRemote method to          
// create instances of the default interface _DAClientMode exposed by              
// the CoClass DAClientMode. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAClientMode = class
    class function Create: _DAClientMode;
    class function CreateRemote(const MachineName: string): _DAClientMode;
  end;

// *********************************************************************//
// The Class CoEasyDAAdaptableParameters provides a Create and CreateRemote method to          
// create instances of the default interface _EasyDAAdaptableParameters exposed by              
// the CoClass EasyDAAdaptableParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyDAAdaptableParameters = class
    class function Create: _EasyDAAdaptableParameters;
    class function CreateRemote(const MachineName: string): _EasyDAAdaptableParameters;
  end;

// *********************************************************************//
// The Class CoEasyDAClientHoldPeriods provides a Create and CreateRemote method to          
// create instances of the default interface _EasyDAClientHoldPeriods exposed by              
// the CoClass EasyDAClientHoldPeriods. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyDAClientHoldPeriods = class
    class function Create: _EasyDAClientHoldPeriods;
    class function CreateRemote(const MachineName: string): _EasyDAClientHoldPeriods;
  end;

// *********************************************************************//
// The Class CoEasyDAClientMode provides a Create and CreateRemote method to          
// create instances of the default interface _EasyDAClientMode exposed by              
// the CoClass EasyDAClientMode. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyDAClientMode = class
    class function Create: _EasyDAClientMode;
    class function CreateRemote(const MachineName: string): _EasyDAClientMode;
  end;

// *********************************************************************//
// The Class CoEasyDAClientParameters provides a Create and CreateRemote method to          
// create instances of the default interface _EasyDAClientParameters exposed by              
// the CoClass EasyDAClientParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyDAClientParameters = class
    class function Create: _EasyDAClientParameters;
    class function CreateRemote(const MachineName: string): _EasyDAClientParameters;
  end;

// *********************************************************************//
// The Class CoEasyDAClientTimeouts provides a Create and CreateRemote method to          
// create instances of the default interface _EasyDAClientTimeouts exposed by              
// the CoClass EasyDAClientTimeouts. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyDAClientTimeouts = class
    class function Create: _EasyDAClientTimeouts;
    class function CreateRemote(const MachineName: string): _EasyDAClientTimeouts;
  end;

// *********************************************************************//
// The Class CoEasyDAEngineParameters provides a Create and CreateRemote method to          
// create instances of the default interface _EasyDAEngineParameters exposed by              
// the CoClass EasyDAEngineParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyDAEngineParameters = class
    class function Create: _EasyDAEngineParameters;
    class function CreateRemote(const MachineName: string): _EasyDAEngineParameters;
  end;

// *********************************************************************//
// The Class CoEasyDAInstanceParameters provides a Create and CreateRemote method to          
// create instances of the default interface _EasyDAInstanceParameters exposed by              
// the CoClass EasyDAInstanceParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyDAInstanceParameters = class
    class function Create: _EasyDAInstanceParameters;
    class function CreateRemote(const MachineName: string): _EasyDAInstanceParameters;
  end;

// *********************************************************************//
// The Class CoEasyDASharedParameters provides a Create and CreateRemote method to          
// create instances of the default interface _EasyDASharedParameters exposed by              
// the CoClass EasyDASharedParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyDASharedParameters = class
    class function Create: _EasyDASharedParameters;
    class function CreateRemote(const MachineName: string): _EasyDASharedParameters;
  end;

// *********************************************************************//
// The Class CoEasyDATopicParameters provides a Create and CreateRemote method to          
// create instances of the default interface _EasyDATopicParameters exposed by              
// the CoClass EasyDATopicParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyDATopicParameters = class
    class function Create: _EasyDATopicParameters;
    class function CreateRemote(const MachineName: string): _EasyDATopicParameters;
  end;

// *********************************************************************//
// The Class CoDAAccessRight provides a Create and CreateRemote method to          
// create instances of the default interface _DAAccessRight exposed by              
// the CoClass DAAccessRight. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAAccessRight = class
    class function Create: _DAAccessRight;
    class function CreateRemote(const MachineName: string): _DAAccessRight;
  end;

// *********************************************************************//
// The Class CoDABrowseParameters provides a Create and CreateRemote method to          
// create instances of the default interface _DABrowseParameters exposed by              
// the CoClass DABrowseParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDABrowseParameters = class
    class function Create: _DABrowseParameters;
    class function CreateRemote(const MachineName: string): _DABrowseParameters;
  end;

// *********************************************************************//
// The Class CoDAGroupParameters provides a Create and CreateRemote method to          
// create instances of the default interface _DAGroupParameters exposed by              
// the CoClass DAGroupParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAGroupParameters = class
    class function Create: _DAGroupParameters;
    class function CreateRemote(const MachineName: string): _DAGroupParameters;
  end;

// *********************************************************************//
// The Class CoDAItemDescriptor provides a Create and CreateRemote method to          
// create instances of the default interface _DAItemDescriptor exposed by              
// the CoClass DAItemDescriptor. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAItemDescriptor = class
    class function Create: _DAItemDescriptor;
    class function CreateRemote(const MachineName: string): _DAItemDescriptor;
  end;

// *********************************************************************//
// The Class CoDAPropertyDescriptor provides a Create and CreateRemote method to          
// create instances of the default interface _DAPropertyDescriptor exposed by              
// the CoClass DAPropertyDescriptor. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAPropertyDescriptor = class
    class function Create: _DAPropertyDescriptor;
    class function CreateRemote(const MachineName: string): _DAPropertyDescriptor;
  end;

// *********************************************************************//
// The Class CoDAPropertyId provides a Create and CreateRemote method to          
// create instances of the default interface _DAPropertyId exposed by              
// the CoClass DAPropertyId. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAPropertyId = class
    class function Create: _DAPropertyId;
    class function CreateRemote(const MachineName: string): _DAPropertyId;
  end;

// *********************************************************************//
// The Class CoDAQuality provides a Create and CreateRemote method to          
// create instances of the default interface _DAQuality exposed by              
// the CoClass DAQuality. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAQuality = class
    class function Create: _DAQuality;
    class function CreateRemote(const MachineName: string): _DAQuality;
  end;

// *********************************************************************//
// The Class CoDAReadParameters provides a Create and CreateRemote method to          
// create instances of the default interface _DAReadParameters exposed by              
// the CoClass DAReadParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAReadParameters = class
    class function Create: _DAReadParameters;
    class function CreateRemote(const MachineName: string): _DAReadParameters;
  end;

// *********************************************************************//
// The Class CoDAVtq provides a Create and CreateRemote method to          
// create instances of the default interface _DAVtq exposed by              
// the CoClass DAVtq. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAVtq = class
    class function Create: _DAVtq;
    class function CreateRemote(const MachineName: string): _DAVtq;
  end;

// *********************************************************************//
// The Class CoDANodeElementCollection provides a Create and CreateRemote method to          
// create instances of the default interface _DANodeElementCollection exposed by              
// the CoClass DANodeElementCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDANodeElementCollection = class
    class function Create: _DANodeElementCollection;
    class function CreateRemote(const MachineName: string): _DANodeElementCollection;
  end;

// *********************************************************************//
// The Class CoDAPropertyElement provides a Create and CreateRemote method to          
// create instances of the default interface _DAPropertyElement exposed by              
// the CoClass DAPropertyElement. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAPropertyElement = class
    class function Create: _DAPropertyElement;
    class function CreateRemote(const MachineName: string): _DAPropertyElement;
  end;

// *********************************************************************//
// The Class CoDAPropertyElementCollection provides a Create and CreateRemote method to          
// create instances of the default interface _DAPropertyElementCollection exposed by              
// the CoClass DAPropertyElementCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDAPropertyElementCollection = class
    class function Create: _DAPropertyElementCollection;
    class function CreateRemote(const MachineName: string): _DAPropertyElementCollection;
  end;

// *********************************************************************//
// The Class CoNodeDescriptor provides a Create and CreateRemote method to          
// create instances of the default interface _NodeDescriptor exposed by              
// the CoClass NodeDescriptor. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNodeDescriptor = class
    class function Create: _NodeDescriptor;
    class function CreateRemote(const MachineName: string): _NodeDescriptor;
  end;

// *********************************************************************//
// The Class CoDANodeElement provides a Create and CreateRemote method to          
// create instances of the default interface _DANodeElement exposed by              
// the CoClass DANodeElement. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDANodeElement = class
    class function Create: _DANodeElement;
    class function CreateRemote(const MachineName: string): _DANodeElement;
  end;

// *********************************************************************//
// The Class CoOpcResultException provides a Create and CreateRemote method to          
// create instances of the default interface _OpcResultException exposed by              
// the CoClass OpcResultException. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOpcResultException = class
    class function Create: _OpcResultException;
    class function CreateRemote(const MachineName: string): _OpcResultException;
  end;

// *********************************************************************//
// The Class CoServerCategories provides a Create and CreateRemote method to          
// create instances of the default interface _ServerCategories exposed by              
// the CoClass ServerCategories. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoServerCategories = class
    class function Create: _ServerCategories;
    class function CreateRemote(const MachineName: string): _ServerCategories;
  end;

// *********************************************************************//
// The Class CoServerDescriptor provides a Create and CreateRemote method to          
// create instances of the default interface _ServerDescriptor exposed by              
// the CoClass ServerDescriptor. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoServerDescriptor = class
    class function Create: _ServerDescriptor;
    class function CreateRemote(const MachineName: string): _ServerDescriptor;
  end;

// *********************************************************************//
// The Class CoServerElement provides a Create and CreateRemote method to          
// create instances of the default interface _ServerElement exposed by              
// the CoClass ServerElement. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoServerElement = class
    class function Create: _ServerElement;
    class function CreateRemote(const MachineName: string): _ServerElement;
  end;

// *********************************************************************//
// The Class CoServerElementCollection provides a Create and CreateRemote method to          
// create instances of the default interface _ServerElementCollection exposed by              
// the CoClass ServerElementCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoServerElementCollection = class
    class function Create: _ServerElementCollection;
    class function CreateRemote(const MachineName: string): _ServerElementCollection;
  end;

// *********************************************************************//
// The Class CoAEOptimizerPluginParameters provides a Create and CreateRemote method to          
// create instances of the default interface _AEOptimizerPluginParameters exposed by              
// the CoClass AEOptimizerPluginParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAEOptimizerPluginParameters = class
    class function Create: _AEOptimizerPluginParameters;
    class function CreateRemote(const MachineName: string): _AEOptimizerPluginParameters;
  end;

// *********************************************************************//
// The Class CoAENodeArguments provides a Create and CreateRemote method to          
// create instances of the default interface _AENodeArguments exposed by              
// the CoClass AENodeArguments. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAENodeArguments = class
    class function Create: _AENodeArguments;
    class function CreateRemote(const MachineName: string): _AENodeArguments;
  end;

// *********************************************************************//
// The Class CoAEEventsSubscriptionArguments provides a Create and CreateRemote method to          
// create instances of the default interface _AEEventsSubscriptionArguments exposed by              
// the CoClass AEEventsSubscriptionArguments. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAEEventsSubscriptionArguments = class
    class function Create: _AEEventsSubscriptionArguments;
    class function CreateRemote(const MachineName: string): _AEEventsSubscriptionArguments;
  end;

// *********************************************************************//
// The Class CoAEBrowseArguments provides a Create and CreateRemote method to          
// create instances of the default interface _AEBrowseArguments exposed by              
// the CoClass AEBrowseArguments. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAEBrowseArguments = class
    class function Create: _AEBrowseArguments;
    class function CreateRemote(const MachineName: string): _AEBrowseArguments;
  end;

// *********************************************************************//
// The Class CoAENodeElementCollectionResult provides a Create and CreateRemote method to          
// create instances of the default interface _AENodeElementCollectionResult exposed by              
// the CoClass AENodeElementCollectionResult. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAENodeElementCollectionResult = class
    class function Create: _AENodeElementCollectionResult;
    class function CreateRemote(const MachineName: string): _AENodeElementCollectionResult;
  end;

// *********************************************************************//
// The Class CoEasyAEEventsSubscriptionArguments provides a Create and CreateRemote method to          
// create instances of the default interface _EasyAEEventsSubscriptionArguments exposed by              
// the CoClass EasyAEEventsSubscriptionArguments. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyAEEventsSubscriptionArguments = class
    class function Create: _EasyAEEventsSubscriptionArguments;
    class function CreateRemote(const MachineName: string): _EasyAEEventsSubscriptionArguments;
  end;

// *********************************************************************//
// The Class CoEasyAENotificationEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _EasyAENotificationEventArgs exposed by              
// the CoClass EasyAENotificationEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyAENotificationEventArgs = class
    class function Create: _EasyAENotificationEventArgs;
    class function CreateRemote(const MachineName: string): _EasyAENotificationEventArgs;
  end;

// *********************************************************************//
// The Class CoAEClientMode provides a Create and CreateRemote method to          
// create instances of the default interface _AEClientMode exposed by              
// the CoClass AEClientMode. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAEClientMode = class
    class function Create: _AEClientMode;
    class function CreateRemote(const MachineName: string): _AEClientMode;
  end;

// *********************************************************************//
// The Class CoEasyAEAdaptableParameters provides a Create and CreateRemote method to          
// create instances of the default interface _EasyAEAdaptableParameters exposed by              
// the CoClass EasyAEAdaptableParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyAEAdaptableParameters = class
    class function Create: _EasyAEAdaptableParameters;
    class function CreateRemote(const MachineName: string): _EasyAEAdaptableParameters;
  end;

// *********************************************************************//
// The Class CoEasyAEClientHoldPeriods provides a Create and CreateRemote method to          
// create instances of the default interface _EasyAEClientHoldPeriods exposed by              
// the CoClass EasyAEClientHoldPeriods. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyAEClientHoldPeriods = class
    class function Create: _EasyAEClientHoldPeriods;
    class function CreateRemote(const MachineName: string): _EasyAEClientHoldPeriods;
  end;

// *********************************************************************//
// The Class CoEasyAEClientMode provides a Create and CreateRemote method to          
// create instances of the default interface _EasyAEClientMode exposed by              
// the CoClass EasyAEClientMode. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyAEClientMode = class
    class function Create: _EasyAEClientMode;
    class function CreateRemote(const MachineName: string): _EasyAEClientMode;
  end;

// *********************************************************************//
// The Class CoEasyAEClientParameters provides a Create and CreateRemote method to          
// create instances of the default interface _EasyAEClientParameters exposed by              
// the CoClass EasyAEClientParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyAEClientParameters = class
    class function Create: _EasyAEClientParameters;
    class function CreateRemote(const MachineName: string): _EasyAEClientParameters;
  end;

// *********************************************************************//
// The Class CoEasyAEEngineParameters provides a Create and CreateRemote method to          
// create instances of the default interface _EasyAEEngineParameters exposed by              
// the CoClass EasyAEEngineParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyAEEngineParameters = class
    class function Create: _EasyAEEngineParameters;
    class function CreateRemote(const MachineName: string): _EasyAEEngineParameters;
  end;

// *********************************************************************//
// The Class CoEasyAEInstanceParameters provides a Create and CreateRemote method to          
// create instances of the default interface _EasyAEInstanceParameters exposed by              
// the CoClass EasyAEInstanceParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyAEInstanceParameters = class
    class function Create: _EasyAEInstanceParameters;
    class function CreateRemote(const MachineName: string): _EasyAEInstanceParameters;
  end;

// *********************************************************************//
// The Class CoEasyAELinkParameters provides a Create and CreateRemote method to          
// create instances of the default interface _EasyAELinkParameters exposed by              
// the CoClass EasyAELinkParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyAELinkParameters = class
    class function Create: _EasyAELinkParameters;
    class function CreateRemote(const MachineName: string): _EasyAELinkParameters;
  end;

// *********************************************************************//
// The Class CoEasyAESharedParameters provides a Create and CreateRemote method to          
// create instances of the default interface _EasyAESharedParameters exposed by              
// the CoClass EasyAESharedParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEasyAESharedParameters = class
    class function Create: _EasyAESharedParameters;
    class function CreateRemote(const MachineName: string): _EasyAESharedParameters;
  end;

// *********************************************************************//
// The Class CoAEAttributeSetDictionary provides a Create and CreateRemote method to          
// create instances of the default interface _AEAttributeSetDictionary exposed by              
// the CoClass AEAttributeSetDictionary. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAEAttributeSetDictionary = class
    class function Create: _AEAttributeSetDictionary;
    class function CreateRemote(const MachineName: string): _AEAttributeSetDictionary;
  end;

// *********************************************************************//
// The Class CoAEAttributeValueDictionary provides a Create and CreateRemote method to          
// create instances of the default interface _AEAttributeValueDictionary exposed by              
// the CoClass AEAttributeValueDictionary. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAEAttributeValueDictionary = class
    class function Create: _AEAttributeValueDictionary;
    class function CreateRemote(const MachineName: string): _AEAttributeValueDictionary;
  end;

// *********************************************************************//
// The Class CoAEBrowseParameters provides a Create and CreateRemote method to          
// create instances of the default interface _AEBrowseParameters exposed by              
// the CoClass AEBrowseParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAEBrowseParameters = class
    class function Create: _AEBrowseParameters;
    class function CreateRemote(const MachineName: string): _AEBrowseParameters;
  end;

// *********************************************************************//
// The Class CoAEConditionState provides a Create and CreateRemote method to          
// create instances of the default interface _AEConditionState exposed by              
// the CoClass AEConditionState. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAEConditionState = class
    class function Create: _AEConditionState;
    class function CreateRemote(const MachineName: string): _AEConditionState;
  end;

// *********************************************************************//
// The Class CoAEEventData provides a Create and CreateRemote method to          
// create instances of the default interface _AEEventData exposed by              
// the CoClass AEEventData. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAEEventData = class
    class function Create: _AEEventData;
    class function CreateRemote(const MachineName: string): _AEEventData;
  end;

// *********************************************************************//
// The Class CoAEEventType provides a Create and CreateRemote method to          
// create instances of the default interface _AEEventType exposed by              
// the CoClass AEEventType. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAEEventType = class
    class function Create: _AEEventType;
    class function CreateRemote(const MachineName: string): _AEEventType;
  end;

// *********************************************************************//
// The Class CoAENodeDescriptor provides a Create and CreateRemote method to          
// create instances of the default interface _AENodeDescriptor exposed by              
// the CoClass AENodeDescriptor. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAENodeDescriptor = class
    class function Create: _AENodeDescriptor;
    class function CreateRemote(const MachineName: string): _AENodeDescriptor;
  end;

// *********************************************************************//
// The Class CoAESubscriptionFilter provides a Create and CreateRemote method to          
// create instances of the default interface _AESubscriptionFilter exposed by              
// the CoClass AESubscriptionFilter. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAESubscriptionFilter = class
    class function Create: _AESubscriptionFilter;
    class function CreateRemote(const MachineName: string): _AESubscriptionFilter;
  end;

// *********************************************************************//
// The Class CoAESubscriptionParameters provides a Create and CreateRemote method to          
// create instances of the default interface _AESubscriptionParameters exposed by              
// the CoClass AESubscriptionParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAESubscriptionParameters = class
    class function Create: _AESubscriptionParameters;
    class function CreateRemote(const MachineName: string): _AESubscriptionParameters;
  end;

// *********************************************************************//
// The Class CoAEAttributeElement provides a Create and CreateRemote method to          
// create instances of the default interface _AEAttributeElement exposed by              
// the CoClass AEAttributeElement. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAEAttributeElement = class
    class function Create: _AEAttributeElement;
    class function CreateRemote(const MachineName: string): _AEAttributeElement;
  end;

// *********************************************************************//
// The Class CoAEAttributeElementCollection provides a Create and CreateRemote method to          
// create instances of the default interface _AEAttributeElementCollection exposed by              
// the CoClass AEAttributeElementCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAEAttributeElementCollection = class
    class function Create: _AEAttributeElementCollection;
    class function CreateRemote(const MachineName: string): _AEAttributeElementCollection;
  end;

// *********************************************************************//
// The Class CoAECategoryElement provides a Create and CreateRemote method to          
// create instances of the default interface _AECategoryElement exposed by              
// the CoClass AECategoryElement. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAECategoryElement = class
    class function Create: _AECategoryElement;
    class function CreateRemote(const MachineName: string): _AECategoryElement;
  end;

// *********************************************************************//
// The Class CoAECategoryElementCollection provides a Create and CreateRemote method to          
// create instances of the default interface _AECategoryElementCollection exposed by              
// the CoClass AECategoryElementCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAECategoryElementCollection = class
    class function Create: _AECategoryElementCollection;
    class function CreateRemote(const MachineName: string): _AECategoryElementCollection;
  end;

// *********************************************************************//
// The Class CoAEConditionElement provides a Create and CreateRemote method to          
// create instances of the default interface _AEConditionElement exposed by              
// the CoClass AEConditionElement. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAEConditionElement = class
    class function Create: _AEConditionElement;
    class function CreateRemote(const MachineName: string): _AEConditionElement;
  end;

// *********************************************************************//
// The Class CoAEConditionElementCollection provides a Create and CreateRemote method to          
// create instances of the default interface _AEConditionElementCollection exposed by              
// the CoClass AEConditionElementCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAEConditionElementCollection = class
    class function Create: _AEConditionElementCollection;
    class function CreateRemote(const MachineName: string): _AEConditionElementCollection;
  end;

// *********************************************************************//
// The Class CoAENodeElement provides a Create and CreateRemote method to          
// create instances of the default interface _AENodeElement exposed by              
// the CoClass AENodeElement. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAENodeElement = class
    class function Create: _AENodeElement;
    class function CreateRemote(const MachineName: string): _AENodeElement;
  end;

// *********************************************************************//
// The Class CoAENodeElementCollection provides a Create and CreateRemote method to          
// create instances of the default interface _AENodeElementCollection exposed by              
// the CoClass AENodeElementCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAENodeElementCollection = class
    class function Create: _AENodeElementCollection;
    class function CreateRemote(const MachineName: string): _AENodeElementCollection;
  end;

// *********************************************************************//
// The Class CoAESubconditionElement provides a Create and CreateRemote method to          
// create instances of the default interface _AESubconditionElement exposed by              
// the CoClass AESubconditionElement. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAESubconditionElement = class
    class function Create: _AESubconditionElement;
    class function CreateRemote(const MachineName: string): _AESubconditionElement;
  end;

// *********************************************************************//
// The Class CoAESubconditionElementCollection provides a Create and CreateRemote method to          
// create instances of the default interface _AESubconditionElementCollection exposed by              
// the CoClass AESubconditionElementCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAESubconditionElementCollection = class
    class function Create: _AESubconditionElementCollection;
    class function CreateRemote(const MachineName: string): _AESubconditionElementCollection;
  end;

implementation

uses System.Win.ComObj;

class function CoOpcException.Create: _OpcException;
begin
  Result := CreateComObject(CLASS_OpcException) as _OpcException;
end;

class function CoOpcException.CreateRemote(const MachineName: string): _OpcException;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OpcException) as _OpcException;
end;

class function CoEasyClientParameters.Create: _EasyClientParameters;
begin
  Result := CreateComObject(CLASS_EasyClientParameters) as _EasyClientParameters;
end;

class function CoEasyClientParameters.CreateRemote(const MachineName: string): _EasyClientParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyClientParameters) as _EasyClientParameters;
end;

class function CoEasyEngineParameters.Create: _EasyEngineParameters;
begin
  Result := CreateComObject(CLASS_EasyEngineParameters) as _EasyEngineParameters;
end;

class function CoEasyEngineParameters.CreateRemote(const MachineName: string): _EasyEngineParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyEngineParameters) as _EasyEngineParameters;
end;

class function CoEasyInstanceParameters.Create: _EasyInstanceParameters;
begin
  Result := CreateComObject(CLASS_EasyInstanceParameters) as _EasyInstanceParameters;
end;

class function CoEasyInstanceParameters.CreateRemote(const MachineName: string): _EasyInstanceParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyInstanceParameters) as _EasyInstanceParameters;
end;

class function CoEasyMachineParameters.Create: _EasyMachineParameters;
begin
  Result := CreateComObject(CLASS_EasyMachineParameters) as _EasyMachineParameters;
end;

class function CoEasyMachineParameters.CreateRemote(const MachineName: string): _EasyMachineParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyMachineParameters) as _EasyMachineParameters;
end;

class function CoDANodeDescriptor.Create: _DANodeDescriptor;
begin
  Result := CreateComObject(CLASS_DANodeDescriptor) as _DANodeDescriptor;
end;

class function CoDANodeDescriptor.CreateRemote(const MachineName: string): _DANodeDescriptor;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DANodeDescriptor) as _DANodeDescriptor;
end;

class function CoDAOptimizerPluginParameters.Create: _DAOptimizerPluginParameters;
begin
  Result := CreateComObject(CLASS_DAOptimizerPluginParameters) as _DAOptimizerPluginParameters;
end;

class function CoDAOptimizerPluginParameters.CreateRemote(const MachineName: string): _DAOptimizerPluginParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAOptimizerPluginParameters) as _DAOptimizerPluginParameters;
end;

class function CoDAAutoSubscribingParameters.Create: _DAAutoSubscribingParameters;
begin
  Result := CreateComObject(CLASS_DAAutoSubscribingParameters) as _DAAutoSubscribingParameters;
end;

class function CoDAAutoSubscribingParameters.CreateRemote(const MachineName: string): _DAAutoSubscribingParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAAutoSubscribingParameters) as _DAAutoSubscribingParameters;
end;

class function CoDAParameterBucketingParameters.Create: _DAParameterBucketingParameters;
begin
  Result := CreateComObject(CLASS_DAParameterBucketingParameters) as _DAParameterBucketingParameters;
end;

class function CoDAParameterBucketingParameters.CreateRemote(const MachineName: string): _DAParameterBucketingParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAParameterBucketingParameters) as _DAParameterBucketingParameters;
end;

class function CoDAParameterRestrictingParameters.Create: _DAParameterRestrictingParameters;
begin
  Result := CreateComObject(CLASS_DAParameterRestrictingParameters) as _DAParameterRestrictingParameters;
end;

class function CoDAParameterRestrictingParameters.CreateRemote(const MachineName: string): _DAParameterRestrictingParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAParameterRestrictingParameters) as _DAParameterRestrictingParameters;
end;

class function CoDARequestChunkingParameters.Create: _DARequestChunkingParameters;
begin
  Result := CreateComObject(CLASS_DARequestChunkingParameters) as _DARequestChunkingParameters;
end;

class function CoDARequestChunkingParameters.CreateRemote(const MachineName: string): _DARequestChunkingParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DARequestChunkingParameters) as _DARequestChunkingParameters;
end;

class function CoDANodeArguments.Create: _DANodeArguments;
begin
  Result := CreateComObject(CLASS_DANodeArguments) as _DANodeArguments;
end;

class function CoDANodeArguments.CreateRemote(const MachineName: string): _DANodeArguments;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DANodeArguments) as _DANodeArguments;
end;

class function CoDAHandleGroupArguments.Create: _DAHandleGroupArguments;
begin
  Result := CreateComObject(CLASS_DAHandleGroupArguments) as _DAHandleGroupArguments;
end;

class function CoDAHandleGroupArguments.CreateRemote(const MachineName: string): _DAHandleGroupArguments;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAHandleGroupArguments) as _DAHandleGroupArguments;
end;

class function CoDAItemArguments.Create: _DAItemArguments;
begin
  Result := CreateComObject(CLASS_DAItemArguments) as _DAItemArguments;
end;

class function CoDAItemArguments.CreateRemote(const MachineName: string): _DAItemArguments;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAItemArguments) as _DAItemArguments;
end;

class function CoDAItemGroupArguments.Create: _DAItemGroupArguments;
begin
  Result := CreateComObject(CLASS_DAItemGroupArguments) as _DAItemGroupArguments;
end;

class function CoDAItemGroupArguments.CreateRemote(const MachineName: string): _DAItemGroupArguments;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAItemGroupArguments) as _DAItemGroupArguments;
end;

class function CoDAItemValueArguments.Create: _DAItemValueArguments;
begin
  Result := CreateComObject(CLASS_DAItemValueArguments) as _DAItemValueArguments;
end;

class function CoDAItemValueArguments.CreateRemote(const MachineName: string): _DAItemValueArguments;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAItemValueArguments) as _DAItemValueArguments;
end;

class function CoDAItemVtqArguments.Create: _DAItemVtqArguments;
begin
  Result := CreateComObject(CLASS_DAItemVtqArguments) as _DAItemVtqArguments;
end;

class function CoDAItemVtqArguments.CreateRemote(const MachineName: string): _DAItemVtqArguments;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAItemVtqArguments) as _DAItemVtqArguments;
end;

class function CoDABrowseArguments.Create: _DABrowseArguments;
begin
  Result := CreateComObject(CLASS_DABrowseArguments) as _DABrowseArguments;
end;

class function CoDABrowseArguments.CreateRemote(const MachineName: string): _DABrowseArguments;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DABrowseArguments) as _DABrowseArguments;
end;

class function CoDANodeElementCollectionResult.Create: _DANodeElementCollectionResult;
begin
  Result := CreateComObject(CLASS_DANodeElementCollectionResult) as _DANodeElementCollectionResult;
end;

class function CoDANodeElementCollectionResult.CreateRemote(const MachineName: string): _DANodeElementCollectionResult;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DANodeElementCollectionResult) as _DANodeElementCollectionResult;
end;

class function CoDAPropertyArguments.Create: _DAPropertyArguments;
begin
  Result := CreateComObject(CLASS_DAPropertyArguments) as _DAPropertyArguments;
end;

class function CoDAPropertyArguments.CreateRemote(const MachineName: string): _DAPropertyArguments;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAPropertyArguments) as _DAPropertyArguments;
end;

class function CoDAReadItemArguments.Create: _DAReadItemArguments;
begin
  Result := CreateComObject(CLASS_DAReadItemArguments) as _DAReadItemArguments;
end;

class function CoDAReadItemArguments.CreateRemote(const MachineName: string): _DAReadItemArguments;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAReadItemArguments) as _DAReadItemArguments;
end;

class function CoDAVtqResult.Create: _DAVtqResult;
begin
  Result := CreateComObject(CLASS_DAVtqResult) as _DAVtqResult;
end;

class function CoDAVtqResult.CreateRemote(const MachineName: string): _DAVtqResult;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAVtqResult) as _DAVtqResult;
end;

class function CoEasyDAItemChangedEventArgs.Create: _EasyDAItemChangedEventArgs;
begin
  Result := CreateComObject(CLASS_EasyDAItemChangedEventArgs) as _EasyDAItemChangedEventArgs;
end;

class function CoEasyDAItemChangedEventArgs.CreateRemote(const MachineName: string): _EasyDAItemChangedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyDAItemChangedEventArgs) as _EasyDAItemChangedEventArgs;
end;

class function CoEasyDAItemSubscriptionArguments.Create: _EasyDAItemSubscriptionArguments;
begin
  Result := CreateComObject(CLASS_EasyDAItemSubscriptionArguments) as _EasyDAItemSubscriptionArguments;
end;

class function CoEasyDAItemSubscriptionArguments.CreateRemote(const MachineName: string): _EasyDAItemSubscriptionArguments;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyDAItemSubscriptionArguments) as _EasyDAItemSubscriptionArguments;
end;

class function CoDAClientMode.Create: _DAClientMode;
begin
  Result := CreateComObject(CLASS_DAClientMode) as _DAClientMode;
end;

class function CoDAClientMode.CreateRemote(const MachineName: string): _DAClientMode;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAClientMode) as _DAClientMode;
end;

class function CoEasyDAAdaptableParameters.Create: _EasyDAAdaptableParameters;
begin
  Result := CreateComObject(CLASS_EasyDAAdaptableParameters) as _EasyDAAdaptableParameters;
end;

class function CoEasyDAAdaptableParameters.CreateRemote(const MachineName: string): _EasyDAAdaptableParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyDAAdaptableParameters) as _EasyDAAdaptableParameters;
end;

class function CoEasyDAClientHoldPeriods.Create: _EasyDAClientHoldPeriods;
begin
  Result := CreateComObject(CLASS_EasyDAClientHoldPeriods) as _EasyDAClientHoldPeriods;
end;

class function CoEasyDAClientHoldPeriods.CreateRemote(const MachineName: string): _EasyDAClientHoldPeriods;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyDAClientHoldPeriods) as _EasyDAClientHoldPeriods;
end;

class function CoEasyDAClientMode.Create: _EasyDAClientMode;
begin
  Result := CreateComObject(CLASS_EasyDAClientMode) as _EasyDAClientMode;
end;

class function CoEasyDAClientMode.CreateRemote(const MachineName: string): _EasyDAClientMode;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyDAClientMode) as _EasyDAClientMode;
end;

class function CoEasyDAClientParameters.Create: _EasyDAClientParameters;
begin
  Result := CreateComObject(CLASS_EasyDAClientParameters) as _EasyDAClientParameters;
end;

class function CoEasyDAClientParameters.CreateRemote(const MachineName: string): _EasyDAClientParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyDAClientParameters) as _EasyDAClientParameters;
end;

class function CoEasyDAClientTimeouts.Create: _EasyDAClientTimeouts;
begin
  Result := CreateComObject(CLASS_EasyDAClientTimeouts) as _EasyDAClientTimeouts;
end;

class function CoEasyDAClientTimeouts.CreateRemote(const MachineName: string): _EasyDAClientTimeouts;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyDAClientTimeouts) as _EasyDAClientTimeouts;
end;

class function CoEasyDAEngineParameters.Create: _EasyDAEngineParameters;
begin
  Result := CreateComObject(CLASS_EasyDAEngineParameters) as _EasyDAEngineParameters;
end;

class function CoEasyDAEngineParameters.CreateRemote(const MachineName: string): _EasyDAEngineParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyDAEngineParameters) as _EasyDAEngineParameters;
end;

class function CoEasyDAInstanceParameters.Create: _EasyDAInstanceParameters;
begin
  Result := CreateComObject(CLASS_EasyDAInstanceParameters) as _EasyDAInstanceParameters;
end;

class function CoEasyDAInstanceParameters.CreateRemote(const MachineName: string): _EasyDAInstanceParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyDAInstanceParameters) as _EasyDAInstanceParameters;
end;

class function CoEasyDASharedParameters.Create: _EasyDASharedParameters;
begin
  Result := CreateComObject(CLASS_EasyDASharedParameters) as _EasyDASharedParameters;
end;

class function CoEasyDASharedParameters.CreateRemote(const MachineName: string): _EasyDASharedParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyDASharedParameters) as _EasyDASharedParameters;
end;

class function CoEasyDATopicParameters.Create: _EasyDATopicParameters;
begin
  Result := CreateComObject(CLASS_EasyDATopicParameters) as _EasyDATopicParameters;
end;

class function CoEasyDATopicParameters.CreateRemote(const MachineName: string): _EasyDATopicParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyDATopicParameters) as _EasyDATopicParameters;
end;

class function CoDAAccessRight.Create: _DAAccessRight;
begin
  Result := CreateComObject(CLASS_DAAccessRight) as _DAAccessRight;
end;

class function CoDAAccessRight.CreateRemote(const MachineName: string): _DAAccessRight;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAAccessRight) as _DAAccessRight;
end;

class function CoDABrowseParameters.Create: _DABrowseParameters;
begin
  Result := CreateComObject(CLASS_DABrowseParameters) as _DABrowseParameters;
end;

class function CoDABrowseParameters.CreateRemote(const MachineName: string): _DABrowseParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DABrowseParameters) as _DABrowseParameters;
end;

class function CoDAGroupParameters.Create: _DAGroupParameters;
begin
  Result := CreateComObject(CLASS_DAGroupParameters) as _DAGroupParameters;
end;

class function CoDAGroupParameters.CreateRemote(const MachineName: string): _DAGroupParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAGroupParameters) as _DAGroupParameters;
end;

class function CoDAItemDescriptor.Create: _DAItemDescriptor;
begin
  Result := CreateComObject(CLASS_DAItemDescriptor) as _DAItemDescriptor;
end;

class function CoDAItemDescriptor.CreateRemote(const MachineName: string): _DAItemDescriptor;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAItemDescriptor) as _DAItemDescriptor;
end;

class function CoDAPropertyDescriptor.Create: _DAPropertyDescriptor;
begin
  Result := CreateComObject(CLASS_DAPropertyDescriptor) as _DAPropertyDescriptor;
end;

class function CoDAPropertyDescriptor.CreateRemote(const MachineName: string): _DAPropertyDescriptor;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAPropertyDescriptor) as _DAPropertyDescriptor;
end;

class function CoDAPropertyId.Create: _DAPropertyId;
begin
  Result := CreateComObject(CLASS_DAPropertyId) as _DAPropertyId;
end;

class function CoDAPropertyId.CreateRemote(const MachineName: string): _DAPropertyId;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAPropertyId) as _DAPropertyId;
end;

class function CoDAQuality.Create: _DAQuality;
begin
  Result := CreateComObject(CLASS_DAQuality) as _DAQuality;
end;

class function CoDAQuality.CreateRemote(const MachineName: string): _DAQuality;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAQuality) as _DAQuality;
end;

class function CoDAReadParameters.Create: _DAReadParameters;
begin
  Result := CreateComObject(CLASS_DAReadParameters) as _DAReadParameters;
end;

class function CoDAReadParameters.CreateRemote(const MachineName: string): _DAReadParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAReadParameters) as _DAReadParameters;
end;

class function CoDAVtq.Create: _DAVtq;
begin
  Result := CreateComObject(CLASS_DAVtq) as _DAVtq;
end;

class function CoDAVtq.CreateRemote(const MachineName: string): _DAVtq;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAVtq) as _DAVtq;
end;

class function CoDANodeElementCollection.Create: _DANodeElementCollection;
begin
  Result := CreateComObject(CLASS_DANodeElementCollection) as _DANodeElementCollection;
end;

class function CoDANodeElementCollection.CreateRemote(const MachineName: string): _DANodeElementCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DANodeElementCollection) as _DANodeElementCollection;
end;

class function CoDAPropertyElement.Create: _DAPropertyElement;
begin
  Result := CreateComObject(CLASS_DAPropertyElement) as _DAPropertyElement;
end;

class function CoDAPropertyElement.CreateRemote(const MachineName: string): _DAPropertyElement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAPropertyElement) as _DAPropertyElement;
end;

class function CoDAPropertyElementCollection.Create: _DAPropertyElementCollection;
begin
  Result := CreateComObject(CLASS_DAPropertyElementCollection) as _DAPropertyElementCollection;
end;

class function CoDAPropertyElementCollection.CreateRemote(const MachineName: string): _DAPropertyElementCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DAPropertyElementCollection) as _DAPropertyElementCollection;
end;

class function CoNodeDescriptor.Create: _NodeDescriptor;
begin
  Result := CreateComObject(CLASS_NodeDescriptor) as _NodeDescriptor;
end;

class function CoNodeDescriptor.CreateRemote(const MachineName: string): _NodeDescriptor;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NodeDescriptor) as _NodeDescriptor;
end;

class function CoDANodeElement.Create: _DANodeElement;
begin
  Result := CreateComObject(CLASS_DANodeElement) as _DANodeElement;
end;

class function CoDANodeElement.CreateRemote(const MachineName: string): _DANodeElement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DANodeElement) as _DANodeElement;
end;

class function CoOpcResultException.Create: _OpcResultException;
begin
  Result := CreateComObject(CLASS_OpcResultException) as _OpcResultException;
end;

class function CoOpcResultException.CreateRemote(const MachineName: string): _OpcResultException;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OpcResultException) as _OpcResultException;
end;

class function CoServerCategories.Create: _ServerCategories;
begin
  Result := CreateComObject(CLASS_ServerCategories) as _ServerCategories;
end;

class function CoServerCategories.CreateRemote(const MachineName: string): _ServerCategories;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ServerCategories) as _ServerCategories;
end;

class function CoServerDescriptor.Create: _ServerDescriptor;
begin
  Result := CreateComObject(CLASS_ServerDescriptor) as _ServerDescriptor;
end;

class function CoServerDescriptor.CreateRemote(const MachineName: string): _ServerDescriptor;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ServerDescriptor) as _ServerDescriptor;
end;

class function CoServerElement.Create: _ServerElement;
begin
  Result := CreateComObject(CLASS_ServerElement) as _ServerElement;
end;

class function CoServerElement.CreateRemote(const MachineName: string): _ServerElement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ServerElement) as _ServerElement;
end;

class function CoServerElementCollection.Create: _ServerElementCollection;
begin
  Result := CreateComObject(CLASS_ServerElementCollection) as _ServerElementCollection;
end;

class function CoServerElementCollection.CreateRemote(const MachineName: string): _ServerElementCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ServerElementCollection) as _ServerElementCollection;
end;

class function CoAEOptimizerPluginParameters.Create: _AEOptimizerPluginParameters;
begin
  Result := CreateComObject(CLASS_AEOptimizerPluginParameters) as _AEOptimizerPluginParameters;
end;

class function CoAEOptimizerPluginParameters.CreateRemote(const MachineName: string): _AEOptimizerPluginParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AEOptimizerPluginParameters) as _AEOptimizerPluginParameters;
end;

class function CoAENodeArguments.Create: _AENodeArguments;
begin
  Result := CreateComObject(CLASS_AENodeArguments) as _AENodeArguments;
end;

class function CoAENodeArguments.CreateRemote(const MachineName: string): _AENodeArguments;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AENodeArguments) as _AENodeArguments;
end;

class function CoAEEventsSubscriptionArguments.Create: _AEEventsSubscriptionArguments;
begin
  Result := CreateComObject(CLASS_AEEventsSubscriptionArguments) as _AEEventsSubscriptionArguments;
end;

class function CoAEEventsSubscriptionArguments.CreateRemote(const MachineName: string): _AEEventsSubscriptionArguments;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AEEventsSubscriptionArguments) as _AEEventsSubscriptionArguments;
end;

class function CoAEBrowseArguments.Create: _AEBrowseArguments;
begin
  Result := CreateComObject(CLASS_AEBrowseArguments) as _AEBrowseArguments;
end;

class function CoAEBrowseArguments.CreateRemote(const MachineName: string): _AEBrowseArguments;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AEBrowseArguments) as _AEBrowseArguments;
end;

class function CoAENodeElementCollectionResult.Create: _AENodeElementCollectionResult;
begin
  Result := CreateComObject(CLASS_AENodeElementCollectionResult) as _AENodeElementCollectionResult;
end;

class function CoAENodeElementCollectionResult.CreateRemote(const MachineName: string): _AENodeElementCollectionResult;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AENodeElementCollectionResult) as _AENodeElementCollectionResult;
end;

class function CoEasyAEEventsSubscriptionArguments.Create: _EasyAEEventsSubscriptionArguments;
begin
  Result := CreateComObject(CLASS_EasyAEEventsSubscriptionArguments) as _EasyAEEventsSubscriptionArguments;
end;

class function CoEasyAEEventsSubscriptionArguments.CreateRemote(const MachineName: string): _EasyAEEventsSubscriptionArguments;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyAEEventsSubscriptionArguments) as _EasyAEEventsSubscriptionArguments;
end;

class function CoEasyAENotificationEventArgs.Create: _EasyAENotificationEventArgs;
begin
  Result := CreateComObject(CLASS_EasyAENotificationEventArgs) as _EasyAENotificationEventArgs;
end;

class function CoEasyAENotificationEventArgs.CreateRemote(const MachineName: string): _EasyAENotificationEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyAENotificationEventArgs) as _EasyAENotificationEventArgs;
end;

class function CoAEClientMode.Create: _AEClientMode;
begin
  Result := CreateComObject(CLASS_AEClientMode) as _AEClientMode;
end;

class function CoAEClientMode.CreateRemote(const MachineName: string): _AEClientMode;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AEClientMode) as _AEClientMode;
end;

class function CoEasyAEAdaptableParameters.Create: _EasyAEAdaptableParameters;
begin
  Result := CreateComObject(CLASS_EasyAEAdaptableParameters) as _EasyAEAdaptableParameters;
end;

class function CoEasyAEAdaptableParameters.CreateRemote(const MachineName: string): _EasyAEAdaptableParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyAEAdaptableParameters) as _EasyAEAdaptableParameters;
end;

class function CoEasyAEClientHoldPeriods.Create: _EasyAEClientHoldPeriods;
begin
  Result := CreateComObject(CLASS_EasyAEClientHoldPeriods) as _EasyAEClientHoldPeriods;
end;

class function CoEasyAEClientHoldPeriods.CreateRemote(const MachineName: string): _EasyAEClientHoldPeriods;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyAEClientHoldPeriods) as _EasyAEClientHoldPeriods;
end;

class function CoEasyAEClientMode.Create: _EasyAEClientMode;
begin
  Result := CreateComObject(CLASS_EasyAEClientMode) as _EasyAEClientMode;
end;

class function CoEasyAEClientMode.CreateRemote(const MachineName: string): _EasyAEClientMode;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyAEClientMode) as _EasyAEClientMode;
end;

class function CoEasyAEClientParameters.Create: _EasyAEClientParameters;
begin
  Result := CreateComObject(CLASS_EasyAEClientParameters) as _EasyAEClientParameters;
end;

class function CoEasyAEClientParameters.CreateRemote(const MachineName: string): _EasyAEClientParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyAEClientParameters) as _EasyAEClientParameters;
end;

class function CoEasyAEEngineParameters.Create: _EasyAEEngineParameters;
begin
  Result := CreateComObject(CLASS_EasyAEEngineParameters) as _EasyAEEngineParameters;
end;

class function CoEasyAEEngineParameters.CreateRemote(const MachineName: string): _EasyAEEngineParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyAEEngineParameters) as _EasyAEEngineParameters;
end;

class function CoEasyAEInstanceParameters.Create: _EasyAEInstanceParameters;
begin
  Result := CreateComObject(CLASS_EasyAEInstanceParameters) as _EasyAEInstanceParameters;
end;

class function CoEasyAEInstanceParameters.CreateRemote(const MachineName: string): _EasyAEInstanceParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyAEInstanceParameters) as _EasyAEInstanceParameters;
end;

class function CoEasyAELinkParameters.Create: _EasyAELinkParameters;
begin
  Result := CreateComObject(CLASS_EasyAELinkParameters) as _EasyAELinkParameters;
end;

class function CoEasyAELinkParameters.CreateRemote(const MachineName: string): _EasyAELinkParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyAELinkParameters) as _EasyAELinkParameters;
end;

class function CoEasyAESharedParameters.Create: _EasyAESharedParameters;
begin
  Result := CreateComObject(CLASS_EasyAESharedParameters) as _EasyAESharedParameters;
end;

class function CoEasyAESharedParameters.CreateRemote(const MachineName: string): _EasyAESharedParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EasyAESharedParameters) as _EasyAESharedParameters;
end;

class function CoAEAttributeSetDictionary.Create: _AEAttributeSetDictionary;
begin
  Result := CreateComObject(CLASS_AEAttributeSetDictionary) as _AEAttributeSetDictionary;
end;

class function CoAEAttributeSetDictionary.CreateRemote(const MachineName: string): _AEAttributeSetDictionary;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AEAttributeSetDictionary) as _AEAttributeSetDictionary;
end;

class function CoAEAttributeValueDictionary.Create: _AEAttributeValueDictionary;
begin
  Result := CreateComObject(CLASS_AEAttributeValueDictionary) as _AEAttributeValueDictionary;
end;

class function CoAEAttributeValueDictionary.CreateRemote(const MachineName: string): _AEAttributeValueDictionary;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AEAttributeValueDictionary) as _AEAttributeValueDictionary;
end;

class function CoAEBrowseParameters.Create: _AEBrowseParameters;
begin
  Result := CreateComObject(CLASS_AEBrowseParameters) as _AEBrowseParameters;
end;

class function CoAEBrowseParameters.CreateRemote(const MachineName: string): _AEBrowseParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AEBrowseParameters) as _AEBrowseParameters;
end;

class function CoAEConditionState.Create: _AEConditionState;
begin
  Result := CreateComObject(CLASS_AEConditionState) as _AEConditionState;
end;

class function CoAEConditionState.CreateRemote(const MachineName: string): _AEConditionState;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AEConditionState) as _AEConditionState;
end;

class function CoAEEventData.Create: _AEEventData;
begin
  Result := CreateComObject(CLASS_AEEventData) as _AEEventData;
end;

class function CoAEEventData.CreateRemote(const MachineName: string): _AEEventData;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AEEventData) as _AEEventData;
end;

class function CoAEEventType.Create: _AEEventType;
begin
  Result := CreateComObject(CLASS_AEEventType) as _AEEventType;
end;

class function CoAEEventType.CreateRemote(const MachineName: string): _AEEventType;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AEEventType) as _AEEventType;
end;

class function CoAENodeDescriptor.Create: _AENodeDescriptor;
begin
  Result := CreateComObject(CLASS_AENodeDescriptor) as _AENodeDescriptor;
end;

class function CoAENodeDescriptor.CreateRemote(const MachineName: string): _AENodeDescriptor;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AENodeDescriptor) as _AENodeDescriptor;
end;

class function CoAESubscriptionFilter.Create: _AESubscriptionFilter;
begin
  Result := CreateComObject(CLASS_AESubscriptionFilter) as _AESubscriptionFilter;
end;

class function CoAESubscriptionFilter.CreateRemote(const MachineName: string): _AESubscriptionFilter;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AESubscriptionFilter) as _AESubscriptionFilter;
end;

class function CoAESubscriptionParameters.Create: _AESubscriptionParameters;
begin
  Result := CreateComObject(CLASS_AESubscriptionParameters) as _AESubscriptionParameters;
end;

class function CoAESubscriptionParameters.CreateRemote(const MachineName: string): _AESubscriptionParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AESubscriptionParameters) as _AESubscriptionParameters;
end;

class function CoAEAttributeElement.Create: _AEAttributeElement;
begin
  Result := CreateComObject(CLASS_AEAttributeElement) as _AEAttributeElement;
end;

class function CoAEAttributeElement.CreateRemote(const MachineName: string): _AEAttributeElement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AEAttributeElement) as _AEAttributeElement;
end;

class function CoAEAttributeElementCollection.Create: _AEAttributeElementCollection;
begin
  Result := CreateComObject(CLASS_AEAttributeElementCollection) as _AEAttributeElementCollection;
end;

class function CoAEAttributeElementCollection.CreateRemote(const MachineName: string): _AEAttributeElementCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AEAttributeElementCollection) as _AEAttributeElementCollection;
end;

class function CoAECategoryElement.Create: _AECategoryElement;
begin
  Result := CreateComObject(CLASS_AECategoryElement) as _AECategoryElement;
end;

class function CoAECategoryElement.CreateRemote(const MachineName: string): _AECategoryElement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AECategoryElement) as _AECategoryElement;
end;

class function CoAECategoryElementCollection.Create: _AECategoryElementCollection;
begin
  Result := CreateComObject(CLASS_AECategoryElementCollection) as _AECategoryElementCollection;
end;

class function CoAECategoryElementCollection.CreateRemote(const MachineName: string): _AECategoryElementCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AECategoryElementCollection) as _AECategoryElementCollection;
end;

class function CoAEConditionElement.Create: _AEConditionElement;
begin
  Result := CreateComObject(CLASS_AEConditionElement) as _AEConditionElement;
end;

class function CoAEConditionElement.CreateRemote(const MachineName: string): _AEConditionElement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AEConditionElement) as _AEConditionElement;
end;

class function CoAEConditionElementCollection.Create: _AEConditionElementCollection;
begin
  Result := CreateComObject(CLASS_AEConditionElementCollection) as _AEConditionElementCollection;
end;

class function CoAEConditionElementCollection.CreateRemote(const MachineName: string): _AEConditionElementCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AEConditionElementCollection) as _AEConditionElementCollection;
end;

class function CoAENodeElement.Create: _AENodeElement;
begin
  Result := CreateComObject(CLASS_AENodeElement) as _AENodeElement;
end;

class function CoAENodeElement.CreateRemote(const MachineName: string): _AENodeElement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AENodeElement) as _AENodeElement;
end;

class function CoAENodeElementCollection.Create: _AENodeElementCollection;
begin
  Result := CreateComObject(CLASS_AENodeElementCollection) as _AENodeElementCollection;
end;

class function CoAENodeElementCollection.CreateRemote(const MachineName: string): _AENodeElementCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AENodeElementCollection) as _AENodeElementCollection;
end;

class function CoAESubconditionElement.Create: _AESubconditionElement;
begin
  Result := CreateComObject(CLASS_AESubconditionElement) as _AESubconditionElement;
end;

class function CoAESubconditionElement.CreateRemote(const MachineName: string): _AESubconditionElement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AESubconditionElement) as _AESubconditionElement;
end;

class function CoAESubconditionElementCollection.Create: _AESubconditionElementCollection;
begin
  Result := CreateComObject(CLASS_AESubconditionElementCollection) as _AESubconditionElementCollection;
end;

class function CoAESubconditionElementCollection.CreateRemote(const MachineName: string): _AESubconditionElementCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AESubconditionElementCollection) as _AESubconditionElementCollection;
end;

end.
