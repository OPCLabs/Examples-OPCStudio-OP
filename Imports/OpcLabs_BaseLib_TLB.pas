unit OpcLabs_BaseLib_TLB;

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
// File generated on 11/3/2024 2:20:23 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\OPC Labs OPC Studio 2024.2\SDK\lib\OpcLabs.BaseLib.tlb (1)
// LIBID: {ECF2E77D-3A90-4FB8-B0E2-F529F0CAE9C9}
// LCID: 0
// Helpfile: 
// HelpString: OPC Labs Base Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
//   (3) v2.4 System, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.tlb)
// Parent TypeLibrary:
//   (0) v5.81 OpcLabs_EasyOpcUA, (C:\Program Files (x86)\OPC Labs OPC Studio 2024.2\SDK\lib\OpcLabs.EasyOpcUA.tlb)
// SYS_KIND: SYS_WIN32
// Errors:
//   Hint: Symbol 'Assign' renamed to 'Assign_'
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, mscorlib_TLB, System.Classes, System.Variants, System.Win.StdVCL, System_TLB, Vcl.Graphics, Vcl.OleServer, 
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
  OpcLabs_BaseLibMajorVersion = 5;
  OpcLabs_BaseLibMinorVersion = 81;

  LIBID_OpcLabs_BaseLib: TGUID = '{ECF2E77D-3A90-4FB8-B0E2-F529F0CAE9C9}';

  IID__Object2: TGUID = '{9B164457-EEF8-4736-BAE7-531D45EA2751}';
  CLASS_Object2: TGUID = '{E2F6E7B2-ECC8-41A5-B9A3-FC75F308B980}';
  IID__Info: TGUID = '{B9103DFD-BACE-4392-AFB0-FF2BFC9C7AB7}';
  IID__ResourceDescriptor: TGUID = '{605FE27E-BF82-4214-96C7-A1DE7A49348C}';
  IID__Aliasable: TGUID = '{98494757-8E03-4D19-87F3-ABEE93F7BD45}';
  IID__GenericError: TGUID = '{20842DED-34A1-47E9-95AC-AF81445FD242}';
  IID__StringListParsingError: TGUID = '{F80CE0F3-87C7-40A6-A77C-A94B8B97F0A6}';
  IID__TextParsingError: TGUID = '{9FDFF667-7C96-4839-9C50-B1F8C19D3198}';
  CLASS_TextParsingError: TGUID = '{9ABC282A-1FE5-4C9B-B09B-F77A037678EA}';
  IID__DataEventArgs: TGUID = '{0A1C63EB-39F4-4060-A1DB-AA4AB197C6DC}';
  IID__ExceptionEventArgs: TGUID = '{11D2784C-114A-44DD-BD1B-40BE064F7C45}';
  IID__FailureEventArgs: TGUID = '{2EC5B913-FB3B-4ADF-A41E-E7B13D6B234B}';
  IID__Exception2: TGUID = '{45305271-B85F-42B7-8F35-F22EC9FEF8F2}';
  IID__FormatException2: TGUID = '{DCDB33DC-9C30-496B-A680-2E447908D864}';
  IID__MemberNotFoundException: TGUID = '{F373D74C-F9BD-4349-AEED-970EBFA23D5F}';
  IID__NormalizedException: TGUID = '{55E17BB5-C01B-4B85-B9F7-EFE5DAF1B7FA}';
  IID__OutOfSlotsException: TGUID = '{63F62210-6E46-4A45-955B-CD685BDDC840}';
  IID__ProcedureCallException: TGUID = '{7F6F65F1-BE25-4DC9-B2D2-B7F5F649299A}';
  IID__QueueOverflowException: TGUID = '{28E02B54-6074-49BE-BB66-AD20387F2058}';
  IID__ResultException: TGUID = '{66DECCFC-A325-406D-936D-768FCA6031C2}';
  IID__Parameters: TGUID = '{6D244BF5-D5DF-409A-85A2-7BC8C14EF351}';
  CLASS_Parameters: TGUID = '{960F47F1-015D-46A1-A692-A532523B926E}';
  IID__XmlQualifiedName2: TGUID = '{DA85E762-EDC8-4259-91E3-9B2B8D95897C}';
  CLASS_XmlQualifiedName2: TGUID = '{6E514C4E-C311-43E2-A570-4B5CD050B0C5}';
  IID__XmlQualifiedName2Dictionary: TGUID = '{5F097501-C089-4A4A-8C3A-5BFC491D00A7}';
  CLASS_XmlQualifiedName2Dictionary: TGUID = '{2793CA8C-FD6C-4C66-90B7-2B13B0882DA5}';
  IID__Widget: TGUID = '{9120435F-3DDE-4BFA-A307-A6CAD683834A}';
  CLASS_Widget: TGUID = '{0E31D997-1975-4F28-BC3C-219C86B09D1D}';
  IID__NotifyingWidget: TGUID = '{F343CD94-7011-4ABD-B40D-7EA4AEDC6F49}';
  CLASS_NotifyingWidget: TGUID = '{A6E5DDFB-EC58-4C4B-BB8B-88C0662EF334}';
  IID__CertificateAcceptancePolicy: TGUID = '{128F27FA-3239-49B8-BE85-11AC5D77A2CE}';
  IID__CertificateGenerationParameters: TGUID = '{A85FE918-9011-4A34-8A83-3D2CFA5C394C}';
  IID__CertificateQuery: TGUID = '{D942E036-D51B-4BF8-AE66-B3108921A800}';
  IID__CertificateQueryCollection: TGUID = '{F9E18096-F237-4436-AE1D-E3F66F206539}';
  IID__NetworkSecurity: TGUID = '{D970048B-393C-41B5-A5D0-A187F5B03D25}';
  IID__GetCertificatesEventArgs: TGUID = '{70730F6C-CA55-4ABD-99FB-4CEBE1D883D7}';
  IID__ValidateCertificateEventArgs: TGUID = '{AA3D3A3A-7FD1-4ADD-A540-8CA9636F2D34}';
  IID__CertificateSecurityParameters: TGUID = '{1D8A04B8-CE67-40EA-AE04-DCA56F2821DF}';
  IID__StaticCertificateSecurityParameters: TGUID = '{CA858C71-E5D3-467B-89D5-0D2D01C808BF}';
  IID__SecurityKeysInfo: TGUID = '{EAED7EE6-7CB6-43D5-BF8B-D5EB2DF50CA5}';
  IID__SecurityGroupElement: TGUID = '{2B0310F1-2E75-40AA-A921-C77C40E8A990}';
  IID__ManagedSecurityGroupParameters: TGUID = '{AEEB83E3-6DBC-492C-BAEC-63F24F3B423C}';
  CLASS_ManagedSecurityGroupParameters: TGUID = '{9748E1EB-72CE-4FD4-B057-BB546D638209}';
  CLASS_SecurityGroupElement: TGUID = '{8B3AB65D-A38A-43D1-BDE7-238002A61919}';
  CLASS_SecurityKeysInfo: TGUID = '{EA941A0C-A87E-47DE-9A96-63A2AABEA1FE}';
  IID__CertificateSecurityHandler: TGUID = '{EC04FA58-853A-4BD4-834E-BCF5EF1B67B4}';
  IID__PkiCertificate: TGUID = '{8FAC7537-4531-465B-A382-BAD55E3F728E}';
  IID__PkiCertificateCollection: TGUID = '{802684EB-849B-463E-AA2A-586139AF2B20}';
  IID__PkiChain: TGUID = '{D6A0D353-D34C-44EC-8C8C-3F61ABB1125D}';
  IID__PkiCrlCollection: TGUID = '{A1F74C36-DDF7-41B8-B7B0-E76EED953F49}';
  IID__PkiCrlEntryCollection: TGUID = '{5B6157DC-AEDF-43F4-9CB1-4F3F74344091}';
  CLASS_PkiCertificate: TGUID = '{8B54F71F-6F69-4F12-BC6E-59E80B49EC72}';
  CLASS_PkiCertificateCollection: TGUID = '{BE701FDA-6528-4AFA-AF57-FE7229D6C553}';
  CLASS_PkiChain: TGUID = '{93EE37E3-D098-458F-9E43-2A59AEC53899}';
  CLASS_PkiCrlCollection: TGUID = '{F96D6284-B837-48AE-9BB6-ABEAC9B04049}';
  IID__PkiCrlEntry: TGUID = '{080CAAFC-5482-4EFC-BBF6-D414859BBEEC}';
  CLASS_PkiCrlEntryCollection: TGUID = '{C3B600B8-4E91-4DBD-9A59-C05496CBB84D}';
  DIID_DCertificateSecurityHandlerEvents: TGUID = '{F3970F18-8AA2-48F0-A38E-3D39F51FFF75}';
  CLASS_CertificateAcceptancePolicy: TGUID = '{7495B22D-5ED4-428E-80E7-1B05FA624A0B}';
  CLASS_CertificateGenerationParameters: TGUID = '{DCE07D53-061C-4DA5-B930-B8AB4F5C7A1C}';
  CLASS_CertificateQuery: TGUID = '{88ABB500-3611-47B4-8DCD-B4EA22D62CAD}';
  CLASS_CertificateQueryCollection: TGUID = '{EFB059B8-13BB-4FCA-887D-7E50D3D27E1D}';
  CLASS_CertificateSecurityHandler: TGUID = '{B4CDCF68-4F46-4F1B-A677-04E5D51868EC}';
  CLASS_CertificateSecurityParameters: TGUID = '{C4C6A5B2-35A5-438C-806E-E62E9AD165A2}';
  IID__CommunicationSecurityRanking: TGUID = '{4221B798-BA7B-419F-BDA3-47B8DEFDC9C7}';
  CLASS_GetCertificatesEventArgs: TGUID = '{C97E7449-68A6-4564-86F9-0841B8C98386}';
  CLASS_NetworkSecurity: TGUID = '{BEF2D6B7-4073-4590-AAAB-1072FAC8B015}';
  CLASS_StaticCertificateSecurityParameters: TGUID = '{9CEF45F1-13A8-465A-85AF-9D7E2A4C5D3F}';
  CLASS_ValidateCertificateEventArgs: TGUID = '{B3DA7BEF-67C9-4CC1-A94E-F3502504D9E2}';
  IID__ComConfiguration: TGUID = '{A259E8FA-56F4-4A70-8B5C-4513F96DA26A}';
  IID__ComInstantiationParameters: TGUID = '{D45D093E-9E6C-4D07-8695-46C96A5D1914}';
  IID__ComManagement: TGUID = '{800FE3F9-8430-446D-BA8B-849E35824CA2}';
  IID__ComSecurityParameters: TGUID = '{C2FAB0E6-A41E-4EA5-B693-513991E679F2}';
  IID__ExtendedCOMException: TGUID = '{A8DB7EC9-9C40-4955-9ABF-7740A4FB23E4}';
  IID__SimulatedCOMException: TGUID = '{6AAA5689-66D6-49F3-BF1B-3E24AFDBFF65}';
  CLASS_ComConfiguration: TGUID = '{93EE804D-A9BF-4226-96B2-A36C0E48C863}';
  CLASS_ComInstantiationParameters: TGUID = '{DFAB6C3E-C302-4314-92CC-16AD51B465DB}';
  CLASS_ComManagement: TGUID = '{5ADA00B3-FAF8-4FAD-A02F-9B80E9357B87}';
  CLASS_ComSecurityParameters: TGUID = '{88639578-DE53-4DE3-B519-7976311009AD}';
  CLASS_ExtendedCOMException: TGUID = '{F86A609B-4822-4F88-871B-F5F17509D035}';
  CLASS_SimulatedCOMException: TGUID = '{8C5F7DDD-E66C-4EBB-827B-EBFF74E4CA1B}';
  IID__OperationArguments: TGUID = '{EEE67FFB-A7B3-43C3-8BD9-47F2805C529A}';
  CLASS_OperationArguments: TGUID = '{C0529222-B9AF-4A57-8E1E-ACF4CB29F37C}';
  IID__ValueArguments: TGUID = '{50E19226-5E5B-4AB8-B9BB-CB5FB3A1C58D}';
  IID__OperationEventArgs: TGUID = '{0D1744A4-D97B-44F8-8C0F-C0526D0F4A89}';
  IID__OperationException: TGUID = '{33B3C6E9-784C-41DA-BDCF-A05A45CA274E}';
  IID__OperationResult: TGUID = '{A15E78B9-8D21-46F5-9194-CC1284911C7B}';
  IID__ValueArrayResult: TGUID = '{5F388852-88D6-4C4E-AA5F-D7C692D4FE09}';
  IID__ValueResult: TGUID = '{AD960B5D-7726-4CD5-9099-D66E300F9BC0}';
  IID__HandleArguments: TGUID = '{AB3E2956-96E8-402F-9042-1612269C93C4}';
  CLASS_HandleArguments: TGUID = '{66385469-0CB3-4E2A-B17C-F11971F96BA7}';
  CLASS_OperationEventArgs: TGUID = '{E67A1551-97FC-4977-AE62-6BE38AFBB97B}';
  CLASS_OperationException: TGUID = '{82ADE793-CBA7-4859-98F6-FC846DF49ACA}';
  CLASS_OperationResult: TGUID = '{8708B3B9-7BA4-4E9B-A2A7-4AC5CA7CE1AE}';
  CLASS_ValueArguments: TGUID = '{92D39BBB-5701-4E07-A4C0-9DA1D7EC9EAB}';
  CLASS_ValueArrayResult: TGUID = '{C5599E14-8118-48A3-966C-B373FBFADD07}';
  CLASS_ValueResult: TGUID = '{B7F6D964-ABA2-4E36-9D96-0E3096F615D7}';
  IID__NetworkCredential2: TGUID = '{3960DBAD-819D-428E-8918-76D0939CE09E}';
  CLASS_NetworkCredential2: TGUID = '{478DE0DC-1702-4918-A755-8CD1488CBB2E}';
  IID__ComputerElement: TGUID = '{53D65B90-D8C7-46D6-9988-766A54843133}';
  IID__HostElement: TGUID = '{AA9578B4-91AA-4486-8DF2-66A87FFF31AD}';
  CLASS_ComputerElement: TGUID = '{D7D6EC2C-FB15-4640-AD3B-EC8C45C4DBA5}';
  CLASS_HostElement: TGUID = '{04DAAC3C-A133-4568-9E0C-6C1462EB819E}';
  IID__NetworkAddress: TGUID = '{579BA61E-2634-4EC6-A568-E666382D243F}';
  IID__ResourceAddress: TGUID = '{0AD6BDF4-58E4-4C74-AFE3-86DE3A48467B}';
  CLASS_ResourceAddress: TGUID = '{AA93C059-3A49-4A91-8492-4DBD1CA94CBD}';
  IID__BrowsePath: TGUID = '{50FF10A3-BD27-403A-B511-982BDDB919A5}';
  IID__BrowsePathFormatException: TGUID = '{2695161C-8F68-4378-AD8A-E73D7828708C}';
  IID__BrowsePathParser: TGUID = '{5887D9FC-816A-4DB5-BD30-807651217EBE}';
  CLASS_BrowsePathFormatException: TGUID = '{F8C787C4-8404-40CA-9923-7F1FB1F54DE0}';
  CLASS_BrowsePathParser: TGUID = '{3CD098C6-EB98-42B0-ABCD-E35335A740CD}';
  CLASS_BrowsePath: TGUID = '{2CFFB6AC-BA6B-4698-AF2F-42DEE677A233}';
  IID__StreamLoader: TGUID = '{3121FC74-340B-49D6-99C1-5F04FE22C79C}';
  IID__LogEntryEventArgs: TGUID = '{41B99F03-76BE-4F86-98C1-3C9CD5350E78}';
  CLASS_LogEntryEventArgs: TGUID = '{4118583E-4270-4C8D-9B05-D314CCE8BD41}';
  IID__TokenInfoCollection: TGUID = '{878CF36E-DB33-4AB4-BF3C-F414E4E6B9DF}';
  IID__TokenInfoPolicy: TGUID = '{3CCB0358-3F81-4A3F-9EA5-0BE74B41F28E}';
  IID__TokenSelectionPolicy: TGUID = '{BDE1B622-5CB3-4FC9-8BB2-E08D7D69DA1A}';
  IID__UserIdentity: TGUID = '{540EFA45-46A8-4731-BB08-77012A0BE794}';
  IID__TokenInfo: TGUID = '{5AEEBF6C-D83B-45F2-8FBC-AA0C722D0D04}';
  IID__KerberosTokenInfo: TGUID = '{640E8379-8450-464B-9A92-4FA29CBDEB9A}';
  IID__UserNameTokenInfo: TGUID = '{1EF84C5C-9F88-4A8D-A1C4-8FEED34A6A78}';
  IID__X509CertificateTokenInfo: TGUID = '{ECC7A2FB-7AF9-4736-ABB1-84D6E7DAD05A}';
  IID__AnonymousTokenInfo: TGUID = '{46F3C283-8B4C-408E-8CC9-F2AFA1F20C5C}';
  CLASS_KerberosTokenInfo: TGUID = '{8D78F8AD-55CD-418A-B0D9-1F0F563181CD}';
  CLASS_AnonymousTokenInfo: TGUID = '{64D7A89F-8DA0-4339-8C65-A27474C547B6}';
  CLASS_TokenInfoCollection: TGUID = '{476FCFE9-25B5-4BB9-A4D7-FDF25DC2C710}';
  CLASS_TokenInfoPolicy: TGUID = '{B3199577-49E8-4056-AF1F-540EFAD13CBF}';
  CLASS_TokenSelectionPolicy: TGUID = '{5C3937A7-B2E8-4170-9940-BB511C558030}';
  CLASS_UserIdentity: TGUID = '{191B5A33-48BC-4BDA-873C-12922E2DBE3E}';
  CLASS_UserNameTokenInfo: TGUID = '{F16B7026-FF59-4323-949E-C94896497ACE}';
  CLASS_X509CertificateTokenInfo: TGUID = '{0734BCFD-6F75-4F91-94C7-77E234800148}';
  IID__WindowsFormsInteractionParameters: TGUID = '{DA40643C-8064-4A5C-86FD-3C71850B2C56}';
  CLASS_WindowsFormsInteractionParameters: TGUID = '{2680B5EF-0336-48FF-8340-7A495EBD37F7}';
  IID__PluginSetup: TGUID = '{CB3B0F1E-F050-41A5-8478-E3B2D2B5CC9F}';
  IID__PluginSetupCollection: TGUID = '{B6CB347D-16FA-4DED-BC53-804999231473}';
  CLASS_PluginSetup: TGUID = '{781363FD-60BD-4529-89B8-1A66BEABA315}';
  CLASS_PluginSetupCollection: TGUID = '{8AFE777A-B487-484D-B4EA-81B7EBAE95E4}';
  IID__DataFieldCollection: TGUID = '{1C208821-40A2-4B5A-838B-C5B9BACC47A0}';
  IID__EnumerationMemberCollection: TGUID = '{B46BDEAB-CFA2-40E1-9CA8-190748F50027}';
  IID__TypeMemberInfo: TGUID = '{D62AD75B-EB06-4C9B-996A-B59DD73303EE}';
  IID__DataType: TGUID = '{BA6F3FA3-F1CC-42CA-B592-08DDB1AD3AF6}';
  IID__EnumerationDataType: TGUID = '{6746081D-6F7A-49C2-90A0-737D43C070A6}';
  IID__EnumerationMember: TGUID = '{7442855C-7824-4FDC-8315-FFE2EF08404E}';
  IID__OpaqueDataType: TGUID = '{375B5E24-6479-4B15-B32F-C01F95AEBC88}';
  IID__PrimitiveDataType: TGUID = '{EA15C7F8-E4C2-4690-9BF7-95DC6E845E66}';
  IID__SequenceDataType: TGUID = '{33EDCFCB-4063-44E7-A9FC-40267F72818B}';
  IID__CompositeDataType: TGUID = '{D35AF189-16DD-4EE7-8531-C396A415BE45}';
  IID__UnionDataType: TGUID = '{20393A03-67F8-462B-92AB-4554FDA353F9}';
  IID__GenericData: TGUID = '{07983241-E75C-4DB4-A12B-5B439DB4D689}';
  IID__FieldDataDictionary: TGUID = '{231B964F-84F5-4CD7-92A2-BCD83B7599E2}';
  CLASS_GenericData: TGUID = '{C69BAEE4-3E48-42E0-B1C4-89B0D762C3DD}';
  IID__GenericDataCollection: TGUID = '{AF1573C3-B4BD-4ABD-A5DF-F1B32A24B513}';
  IID__OpaqueData: TGUID = '{F168F0AD-4947-491D-8602-3FF9BF934FFE}';
  IID__PrimitiveData: TGUID = '{41A6A86C-CAD0-4B62-B75F-4B66D0DF4F74}';
  IID__SequenceData: TGUID = '{545A60F1-2D18-4B0F-A133-B77076CC74F3}';
  IID__StructuredData: TGUID = '{06FAF3F8-2299-4846-AC16-AC133C3A5871}';
  IID__UnionData: TGUID = '{4B9B4274-0081-41B6-9C18-FC60DD453CFF}';
  IID__StructuredDataType: TGUID = '{DA398E68-F727-4C12-A817-994154AF7C24}';
  IID__DataField: TGUID = '{F11C7BAA-720C-4C4C-AABC-A8D59D7A9D3B}';
  CLASS_DataFieldCollection: TGUID = '{F8A156F4-3D07-466D-B1EF-AB93CB0A5B2C}';
  CLASS_DataType: TGUID = '{D196D5B2-AC5D-41DB-9886-D41CD12A4A32}';
  IID__EnumerationData: TGUID = '{BB94F29A-BD26-4ADA-A7F2-1F41BB39A3CA}';
  CLASS_EnumerationDataType: TGUID = '{72235C2F-432B-477D-AEA5-ECE4A5CE6DD5}';
  CLASS_EnumerationMember: TGUID = '{623CFD8F-D337-46F5-BE9D-80EA37C90896}';
  CLASS_EnumerationMemberCollection: TGUID = '{73329871-9777-49D4-8307-626C6FF1AC38}';
  CLASS_FieldDataDictionary: TGUID = '{47D9E47B-96C5-4116-AAD8-F547D7470126}';
  CLASS_EnumerationData: TGUID = '{2EE59845-CF09-4217-B5E3-DF902DEE0E98}';
  CLASS_GenericDataCollection: TGUID = '{9C514E81-3899-4E88-BA29-E200B2B3770A}';
  CLASS_OpaqueData: TGUID = '{0C600BCD-AC9D-4816-8E54-2C54B8A05B4E}';
  CLASS_OpaqueDataType: TGUID = '{E4FFED49-D852-49FD-995F-8D65008BE135}';
  CLASS_PrimitiveData: TGUID = '{8AEDDB77-4452-4B73-AD29-3FCC5266B7BD}';
  CLASS_PrimitiveDataType: TGUID = '{702F1E76-32AC-470E-A2A5-AE01609C51FD}';
  CLASS_SequenceData: TGUID = '{C52B1944-F978-415C-9DC3-B8C43A6DDCD6}';
  CLASS_SequenceDataType: TGUID = '{E7E97DE4-03D9-4B09-94F2-15192AF6B948}';
  CLASS_StructuredData: TGUID = '{5A3B8C46-10C5-49EE-92D0-406302C7212A}';
  CLASS_StructuredDataType: TGUID = '{58B91600-3DA9-47F3-9B6D-82C4E7BDD2AB}';
  CLASS_DataField: TGUID = '{F7EAC0FC-8D6C-48F4-AA9E-CCC58CF2FECB}';
  CLASS_UnionData: TGUID = '{95105859-094B-47C2-82A7-368883C7C954}';
  CLASS_UnionDataType: TGUID = '{9379EA98-04D2-470C-9D24-AEED0B8B4832}';
  IID__ConsoleInteractionParameters: TGUID = '{017F7C43-FE54-45E5-AAFF-FA92BA5BABEC}';
  CLASS_ConsoleInteractionParameters: TGUID = '{CCD03429-F735-43B8-A023-8E4C5344478A}';
  IID__ConfigurationPartCollection: TGUID = '{85798EAB-F57B-43B4-8DCA-198DB4F40B74}';
  CLASS_ConfigurationPartCollection: TGUID = '{78173FD0-5146-498B-A111-A14521BEEEC3}';
  IID__ComponentParameters: TGUID = '{CF8BA9E2-1527-434F-A8AD-15179D4EF1A7}';
  CLASS_DataEventArgs: TGUID = '{A75C531F-8FDD-4D7C-8D1C-42475591C588}';
  IID__EndpointDescriptor: TGUID = '{918A5091-6735-41E0-985B-9C8114B50BFF}';
  CLASS_Exception2: TGUID = '{6F5DC50A-8843-453D-B93D-D5894ED37D39}';
  CLASS_ExceptionEventArgs: TGUID = '{64D12C61-8438-40F2-A283-1B245BA964E7}';
  CLASS_FailureEventArgs: TGUID = '{E9ED998A-1C52-4A59-89BD-975DB8C09D2B}';
  CLASS_FormatException2: TGUID = '{987F6A64-A001-4B90-9124-DCAD188E3C22}';
  CLASS_EndpointDescriptor: TGUID = '{8B54D2DA-4023-46A1-B5F5-5B4C628E1681}';
  CLASS_MemberNotFoundException: TGUID = '{6DFDEFC2-49DA-418B-8C8C-CDA29E930781}';
  CLASS_NormalizedException: TGUID = '{4D34388A-9BE9-449B-BC7B-04F177BFF5E7}';
  CLASS_Info: TGUID = '{9818D729-7B6B-46FD-A2B3-1E9F5F57EA16}';
  IID__ObjectDescriptor: TGUID = '{36A62926-929A-4FA4-9107-3E71FEC44EB1}';
  CLASS_OutOfSlotsException: TGUID = '{C8579CB6-4C61-45A0-9B7E-2EEE732C6E31}';
  CLASS_ComponentParameters: TGUID = '{4F33A51F-93B9-4ED3-AC6B-9AA9CA2B773B}';
  CLASS_ProcedureCallException: TGUID = '{C64E17B8-3F4D-4985-9EAE-76BFDA878AA7}';
  CLASS_QueueOverflowException: TGUID = '{E65C688E-8B70-44FD-8648-B433DD1D3E84}';
  CLASS_ObjectDescriptor: TGUID = '{9B611326-581A-49BD-AF0C-ADCAD2E16DF5}';
  CLASS_ResultException: TGUID = '{5A64CCF9-D9E8-41E7-8274-8BC3A8A6DE5F}';
  CLASS_GenericError: TGUID = '{A4EF2286-061D-448D-90BE-A1CA919837BB}';
  CLASS_StringListParsingError: TGUID = '{43E81E99-D986-4237-BE36-FA9C38E36DE1}';
  IID__StringParsingError: TGUID = '{A4E75632-3697-4B2D-9E35-6D248EFF84FF}';
  CLASS_StringParsingError: TGUID = '{C71A621B-BDC2-4631-921F-77D3E489BDD6}';
  IID__ConnectedConditionChangedEventArgs: TGUID = '{290C6ABC-988A-4399-94A3-CF2C33B79961}';
  IID__ConnectedConditionStatistics: TGUID = '{88A436C9-5756-400D-B7D3-E6334CA949E6}';
  CLASS_ConnectedConditionChangedEventArgs: TGUID = '{FE69399E-DE27-4616-9E10-54ED7A169E93}';
  CLASS_ConnectedConditionStatistics: TGUID = '{124CB59F-4614-4A2C-8FAE-8B8C7056B6F8}';
  IID__InteropHelper: TGUID = '{8A0FF843-180E-4175-B60F-51AACA05262E}';
  IID__VarType: TGUID = '{C5CA79AC-1310-4EAA-AFF4-8D5C48C2A4A4}';
  CLASS_InteropHelper: TGUID = '{91018DF2-0AAD-4B76-92A2-46C27DDBF7FA}';
  CLASS_VarType: TGUID = '{7235EA30-9362-42BC-913A-E1BB1AD850DC}';
  IID__DictionaryEntry2: TGUID = '{1589C232-48C5-49C5-A96F-9E345E677D13}';
  IID__ElasticVector: TGUID = '{03BF9D1E-8CE4-49EE-86D5-47146B2BE0FD}';
  IID__ExceptionCollection: TGUID = '{0D999297-1513-4251-87A6-9349DDBCC427}';
  IID__Int32Collection: TGUID = '{4A15275C-6094-4370-8697-722848691F59}';
  IID__NormalizedExceptionCollection: TGUID = '{B98FB987-0D1F-484B-A54A-2371CB3148CC}';
  IID__StringCollection: TGUID = '{3F6FBA4F-B133-4487-92D7-20EF41C984EE}';
  IID__StringObjectDictionary: TGUID = '{BD4B59CF-3F6C-4A6D-A225-A5B00D7F8FD1}';
  IID__StringSet: TGUID = '{17102801-9710-47F5-AB5B-B58238F791D0}';
  IID__StringStringDictionary: TGUID = '{8472A1B0-BD1B-4387-BFD8-0346630ED403}';
  CLASS_ExceptionCollection: TGUID = '{BFB4FF98-E9B3-4FFC-92D7-16C262781262}';
  CLASS_Int32Collection: TGUID = '{71D3FE66-30DD-43C6-AE04-EAF0513FE3C6}';
  CLASS_NormalizedExceptionCollection: TGUID = '{7EBFA1D4-6A6D-4F18-A63A-FDFEA0178B47}';
  IID__ObjectObjectDictionary: TGUID = '{88F6098D-4048-42E7-9673-2F9E54720459}';
  CLASS_StringCollection: TGUID = '{99713723-403A-49B5-A23B-C9F5C31F239B}';
  CLASS_StringObjectDictionary: TGUID = '{55D37731-BF7D-4935-B8AD-D3E5DECC048D}';
  CLASS_StringSet: TGUID = '{8BA82831-8890-40C5-8982-859B788B4EC3}';
  CLASS_StringStringDictionary: TGUID = '{AE8AF82B-DD08-4A3E-8CCB-6A241CD0F9BA}';
  IID__Dictionary: TGUID = '{EFF596DE-A3D9-4FBC-9BE3-5AD7B735236B}';
  CLASS_DictionaryWrapper: TGUID = '{1371F0C0-4D70-4C57-B69D-2819A4802324}';
  CLASS_DictionaryEntry2: TGUID = '{6289D522-80F4-4B5D-8482-3CBB4462B625}';
  IID__List: TGUID = '{3E222005-BC46-4E3B-9940-83A7F7A4310A}';
  CLASS_ElasticVector: TGUID = '{E6AB098E-533E-41FB-A1C1-18182F452045}';
  IID__AliasFilter: TGUID = '{8AD1E688-983D-40A2-9F32-52A42E3BAC6E}';
  IID__AliasMetadata: TGUID = '{1E4368E9-3ED5-4D6F-B3CE-19F236D50388}';
  CLASS_AliasMetadata: TGUID = '{8A9712D7-537F-4E67-A1A1-01B98716A232}';
  IID__AliasRepository: TGUID = '{BAE71001-A827-4E1A-ABCC-7A3AD467CADD}';
  IID__ReadOnlyAliasRepository: TGUID = '{CC35406F-B148-4534-9B7B-FD6DDF17EF3E}';
  CLASS_ResourceDescriptor: TGUID = '{72FE6C7A-D30C-4F39-88FF-C8779DF4B966}';
  CLASS_AliasFilter: TGUID = '{AEF05AE4-1E01-4EE4-A05F-7590C980DBEC}';
  IID__AliasInfo: TGUID = '{FBD94054-2E09-4070-AE72-167F674B2245}';
  CLASS_AliasInfo: TGUID = '{2EF2E901-CF34-4A51-88C7-65FB117EAFC1}';
  IID__AliasProvider: TGUID = '{F4FD2890-2D36-4C35-8E10-0A5D64365D76}';
  CLASS_EmptyAliasRepository: TGUID = '{70549833-74A8-4B30-96CA-CEB8419F20F6}';
  CLASS_MemoryAliasRepository: TGUID = '{C63B1B60-6EBD-4FB5-9206-45BF65342A66}';
  IID__AutomatonStateStatistics: TGUID = '{279943EB-63C3-486A-BEA4-BDF4BEA5AD74}';
  IID__PeriodicResolverParameters: TGUID = '{5B6B31AE-B602-4E93-A7C1-0802E92591CF}';
  CLASS_AutomatonStateStatistics: TGUID = '{68D5A89E-EB17-4697-931A-BC63E7C3F061}';
  CLASS_PeriodicResolverParameters: TGUID = '{59311F85-75FA-4D1C-84BD-3A6BAE2DA917}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum Sign
type
  Sign = TOleEnum;
const
  Sign_Negative = $FFFFFFFF;
  Sign_None = $00000000;
  Sign_Positive = $00000001;

// Constants for enum CertificateSourceTypes
type
  CertificateSourceTypes = TOleEnum;
const
  CertificateSourceTypes_None = $00000000;
  CertificateSourceTypes_File = $00000001;
  CertificateSourceTypes_PkiStore = $00000002;

// Constants for enum PkiApplicationStoreKind
type
  PkiApplicationStoreKind = TOleEnum;
const
  PkiApplicationStoreKind_None = $00000000;
  PkiApplicationStoreKind_Instance = $00000001;
  PkiApplicationStoreKind_User = $00000002;
  PkiApplicationStoreKind_Https = $00000003;

// Constants for enum PkiCommunicationStoreKind
type
  PkiCommunicationStoreKind = TOleEnum;
const
  PkiCommunicationStoreKind_None = $00000000;
  PkiCommunicationStoreKind_Own = $00000001;
  PkiCommunicationStoreKind_Trusted = $00000002;
  PkiCommunicationStoreKind_Issuer = $00000003;
  PkiCommunicationStoreKind_Rejected = $00000004;

// Constants for enum PkiFileFormat
type
  PkiFileFormat = TOleEnum;
const
  PkiFileFormat_None = $00000000;
  PkiFileFormat_Authenticode = $00000001;
  PkiFileFormat_Cert = $00000002;
  PkiFileFormat_Der = $00000003;
  PkiFileFormat_Pem = $00000004;
  PkiFileFormat_Pfx = $00000005;
  PkiFileFormat_Pkcs12 = $00000006;
  PkiFileFormat_Pkcs7 = $00000007;
  PkiFileFormat_SerializedCert = $00000008;
  PkiFileFormat_SerializedStore = $00000009;

// Constants for enum PkiFindType
type
  PkiFindType = TOleEnum;
const
  PkiFindType_FindByThumbprint = $00000000;
  PkiFindType_FindBySubjectName = $00000001;
  PkiFindType_FindBySubjectDistinguishedName = $00000002;
  PkiFindType_FindByIssuerName = $00000003;
  PkiFindType_FindByIssuerDistinguishedName = $00000004;
  PkiFindType_FindBySerialNumber = $00000005;
  PkiFindType_FindByTimeValid = $00000006;
  PkiFindType_FindByTimeNotYetValid = $00000007;
  PkiFindType_FindByTimeExpired = $00000008;
  PkiFindType_FindByTemplateName = $00000009;
  PkiFindType_FindByApplicationPolicy = $0000000A;
  PkiFindType_FindByCertificatePolicy = $0000000B;
  PkiFindType_FindByExtension = $0000000C;
  PkiFindType_FindByKeyUsage = $0000000D;
  PkiFindType_FindBySubjectKeyIdentifier = $0000000E;

// Constants for enum PkiStoreLocation
type
  PkiStoreLocation = TOleEnum;
const
  PkiStoreLocation_CurrentUser = $00000001;
  PkiStoreLocation_LocalMachine = $00000002;

// Constants for enum PkiStoreName
type
  PkiStoreName = TOleEnum;
const
  PkiStoreName_AddressBook = $00000001;
  PkiStoreName_AuthRoot = $00000002;
  PkiStoreName_CertificateAuthority = $00000003;
  PkiStoreName_Disallowed = $00000004;
  PkiStoreName_My = $00000005;
  PkiStoreName_Root = $00000006;
  PkiStoreName_TrustedPeople = $00000007;
  PkiStoreName_TrustedPublisher = $00000008;

// Constants for enum TransportPolicyErrors
type
  TransportPolicyErrors = TOleEnum;
const
  TransportPolicyErrors_None = $00000000;
  TransportPolicyErrors_RemoteCertificateNotAvailable = $00000001;
  TransportPolicyErrors_RemoteCertificateNameMismatch = $00000002;
  TransportPolicyErrors_RemoteCertificateChainErrors = $00000004;

// Constants for enum BrowsePathFormatErrorCode
type
  BrowsePathFormatErrorCode = TOleEnum;
const
  BrowsePathFormatErrorCode_None = $00000000;
  BrowsePathFormatErrorCode_NotRelative = $00000001;
  BrowsePathFormatErrorCode_RelativeWithNoBase = $00000002;
  BrowsePathFormatErrorCode_BadlyFormedEscape = $00000003;
  BrowsePathFormatErrorCode_EmptyElement = $00000004;
  BrowsePathFormatErrorCode_InvalidBrowseName = $00000005;
  BrowsePathFormatErrorCode_InvalidReference = $00000006;
  BrowsePathFormatErrorCode_UnknownReference = $00000007;
  BrowsePathFormatErrorCode_ReferenceTooDeep = $00000008;

// Constants for enum LogEntryType
type
  LogEntryType = TOleEnum;
const
  LogEntryType_None = $00000000;
  LogEntryType_Error = $00000001;
  LogEntryType_Warning = $00000002;
  LogEntryType_Information = $00000004;
  LogEntryType_SuccessAudit = $00000008;
  LogEntryType_FailureAudit = $00000010;

// Constants for enum StatusInfo
type
  StatusInfo = TOleEnum;
const
  StatusInfo_Unknown = $00000000;
  StatusInfo_Normal = $00000001;
  StatusInfo_Warning = $00000002;
  StatusInfo_Error = $00000003;

// Constants for enum DataTypeKind
type
  DataTypeKind = TOleEnum;
const
  DataTypeKind_None = $00000000;
  DataTypeKind_Primitive = $00000001;
  DataTypeKind_Sequence = $00000002;
  DataTypeKind_Opaque = $00000003;
  DataTypeKind_Enumeration = $00000004;
  DataTypeKind_Structured = $00000005;
  DataTypeKind_Union = $00000006;

// Constants for enum ConnectionState
type
  ConnectionState = TOleEnum;
const
  ConnectionState_Disconnected = $00000000;
  ConnectionState_Connecting = $00000001;
  ConnectionState_Connected = $00000002;
  ConnectionState_Disconnecting = $00000003;

// Constants for enum VarTypes
type
  VarTypes = TOleEnum;
const
  VarTypes_Empty = $00000000;
  VarTypes_Null = $00000001;
  VarTypes_I2 = $00000002;
  VarTypes_I4 = $00000003;
  VarTypes_R4 = $00000004;
  VarTypes_R8 = $00000005;
  VarTypes_Cy = $00000006;
  VarTypes_Date = $00000007;
  VarTypes_BStr = $00000008;
  VarTypes_Dispatch = $00000009;
  VarTypes_Error = $0000000A;
  VarTypes_Bool = $0000000B;
  VarTypes_Variant = $0000000C;
  VarTypes_Unknown = $0000000D;
  VarTypes_Decimal = $0000000E;
  VarTypes_I1 = $00000010;
  VarTypes_UI1 = $00000011;
  VarTypes_UI2 = $00000012;
  VarTypes_UI4 = $00000013;
  VarTypes_I8 = $00000014;
  VarTypes_UI8 = $00000015;
  VarTypes_Int = $00000016;
  VarTypes_UInt = $00000017;
  VarTypes_Void = $00000018;
  VarTypes_HResult = $00000019;
  VarTypes_Ptr = $0000001A;
  VarTypes_SafeArray = $0000001B;
  VarTypes_CArray = $0000001C;
  VarTypes_UserDefined = $0000001D;
  VarTypes_LPStr = $0000001E;
  VarTypes_LPWStr = $0000001F;
  VarTypes_Record = $00000024;
  VarTypes_IntPtr = $00000025;
  VarTypes_UIntPtr = $00000026;
  VarTypes_FileTime = $00000040;
  VarTypes_Blob = $00000041;
  VarTypes_Stream = $00000042;
  VarTypes_Storage = $00000043;
  VarTypes_StreamedObject = $00000044;
  VarTypes_StoredObject = $00000045;
  VarTypes_BlobObject = $00000046;
  VarTypes_Cf = $00000047;
  VarTypes_Clsid = $00000048;
  VarTypes_VersionedStream = $00000049;
  VarTypes_BStrBlob = $00000FFF;
  VarTypes_Vector = $00001000;
  VarTypes_Array = $00002000;
  VarTypes_ByRef = $00004000;
  VarTypes_Reserved = $00008000;
  VarTypes_Illegal = $0000FFFF;
  VarTypes_IllegalMasked = $00000FFF;
  VarTypes_TypeMask = $00000FFF;
  VarTypes_ArrayOfI2 = $00002002;
  VarTypes_ArrayOfI4 = $00002003;
  VarTypes_ArrayOfR4 = $00002004;
  VarTypes_ArrayOfR8 = $00002005;
  VarTypes_ArrayOfCy = $00002006;
  VarTypes_ArrayOfDate = $00002007;
  VarTypes_ArrayOfBStr = $00002008;
  VarTypes_ArrayOfDispatch = $00002009;
  VarTypes_ArrayOfError = $0000200A;
  VarTypes_ArrayOfBool = $0000200B;
  VarTypes_ArrayOfVariant = $0000200C;
  VarTypes_ArrayOfUnknown = $0000200D;
  VarTypes_ArrayOfDecimal = $0000200E;
  VarTypes_ArrayOfRecord = $00002024;
  VarTypes_ArrayOfI1 = $00002010;
  VarTypes_ArrayOfUI1 = $00002011;
  VarTypes_ArrayOfUI2 = $00002012;
  VarTypes_ArrayOfUI4 = $00002013;
  VarTypes_ArrayOfInt = $00002016;
  VarTypes_ArrayOfUInt = $00002017;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _Object2 = interface;
  _Object2Disp = dispinterface;
  _Info = interface;
  _InfoDisp = dispinterface;
  _ResourceDescriptor = interface;
  _ResourceDescriptorDisp = dispinterface;
  _Aliasable = interface;
  _AliasableDisp = dispinterface;
  _GenericError = interface;
  _GenericErrorDisp = dispinterface;
  _StringListParsingError = interface;
  _StringListParsingErrorDisp = dispinterface;
  _TextParsingError = interface;
  _TextParsingErrorDisp = dispinterface;
  _DataEventArgs = interface;
  _DataEventArgsDisp = dispinterface;
  _ExceptionEventArgs = interface;
  _ExceptionEventArgsDisp = dispinterface;
  _FailureEventArgs = interface;
  _FailureEventArgsDisp = dispinterface;
  _Exception2 = interface;
  _Exception2Disp = dispinterface;
  _FormatException2 = interface;
  _FormatException2Disp = dispinterface;
  _MemberNotFoundException = interface;
  _MemberNotFoundExceptionDisp = dispinterface;
  _NormalizedException = interface;
  _NormalizedExceptionDisp = dispinterface;
  _OutOfSlotsException = interface;
  _OutOfSlotsExceptionDisp = dispinterface;
  _ProcedureCallException = interface;
  _ProcedureCallExceptionDisp = dispinterface;
  _QueueOverflowException = interface;
  _QueueOverflowExceptionDisp = dispinterface;
  _ResultException = interface;
  _ResultExceptionDisp = dispinterface;
  _Parameters = interface;
  _ParametersDisp = dispinterface;
  _XmlQualifiedName2 = interface;
  _XmlQualifiedName2Disp = dispinterface;
  _XmlQualifiedName2Dictionary = interface;
  _XmlQualifiedName2DictionaryDisp = dispinterface;
  _Widget = interface;
  _WidgetDisp = dispinterface;
  _NotifyingWidget = interface;
  _NotifyingWidgetDisp = dispinterface;
  _CertificateAcceptancePolicy = interface;
  _CertificateAcceptancePolicyDisp = dispinterface;
  _CertificateGenerationParameters = interface;
  _CertificateGenerationParametersDisp = dispinterface;
  _CertificateQuery = interface;
  _CertificateQueryDisp = dispinterface;
  _CertificateQueryCollection = interface;
  _CertificateQueryCollectionDisp = dispinterface;
  _NetworkSecurity = interface;
  _NetworkSecurityDisp = dispinterface;
  _GetCertificatesEventArgs = interface;
  _GetCertificatesEventArgsDisp = dispinterface;
  _ValidateCertificateEventArgs = interface;
  _ValidateCertificateEventArgsDisp = dispinterface;
  _CertificateSecurityParameters = interface;
  _CertificateSecurityParametersDisp = dispinterface;
  _StaticCertificateSecurityParameters = interface;
  _StaticCertificateSecurityParametersDisp = dispinterface;
  _SecurityKeysInfo = interface;
  _SecurityKeysInfoDisp = dispinterface;
  _SecurityGroupElement = interface;
  _SecurityGroupElementDisp = dispinterface;
  _ManagedSecurityGroupParameters = interface;
  _ManagedSecurityGroupParametersDisp = dispinterface;
  _CertificateSecurityHandler = interface;
  _CertificateSecurityHandlerDisp = dispinterface;
  _PkiCertificate = interface;
  _PkiCertificateDisp = dispinterface;
  _PkiCertificateCollection = interface;
  _PkiCertificateCollectionDisp = dispinterface;
  _PkiChain = interface;
  _PkiChainDisp = dispinterface;
  _PkiCrlCollection = interface;
  _PkiCrlCollectionDisp = dispinterface;
  _PkiCrlEntryCollection = interface;
  _PkiCrlEntryCollectionDisp = dispinterface;
  _PkiCrlEntry = interface;
  _PkiCrlEntryDisp = dispinterface;
  DCertificateSecurityHandlerEvents = dispinterface;
  _CommunicationSecurityRanking = interface;
  _CommunicationSecurityRankingDisp = dispinterface;
  _ComConfiguration = interface;
  _ComConfigurationDisp = dispinterface;
  _ComInstantiationParameters = interface;
  _ComInstantiationParametersDisp = dispinterface;
  _ComManagement = interface;
  _ComManagementDisp = dispinterface;
  _ComSecurityParameters = interface;
  _ComSecurityParametersDisp = dispinterface;
  _ExtendedCOMException = interface;
  _ExtendedCOMExceptionDisp = dispinterface;
  _SimulatedCOMException = interface;
  _SimulatedCOMExceptionDisp = dispinterface;
  _OperationArguments = interface;
  _OperationArgumentsDisp = dispinterface;
  _ValueArguments = interface;
  _ValueArgumentsDisp = dispinterface;
  _OperationEventArgs = interface;
  _OperationEventArgsDisp = dispinterface;
  _OperationException = interface;
  _OperationExceptionDisp = dispinterface;
  _OperationResult = interface;
  _OperationResultDisp = dispinterface;
  _ValueArrayResult = interface;
  _ValueArrayResultDisp = dispinterface;
  _ValueResult = interface;
  _ValueResultDisp = dispinterface;
  _HandleArguments = interface;
  _HandleArgumentsDisp = dispinterface;
  _NetworkCredential2 = interface;
  _NetworkCredential2Disp = dispinterface;
  _ComputerElement = interface;
  _ComputerElementDisp = dispinterface;
  _HostElement = interface;
  _HostElementDisp = dispinterface;
  _NetworkAddress = interface;
  _NetworkAddressDisp = dispinterface;
  _ResourceAddress = interface;
  _ResourceAddressDisp = dispinterface;
  _BrowsePath = interface;
  _BrowsePathDisp = dispinterface;
  _BrowsePathFormatException = interface;
  _BrowsePathFormatExceptionDisp = dispinterface;
  _BrowsePathParser = interface;
  _BrowsePathParserDisp = dispinterface;
  _StreamLoader = interface;
  _StreamLoaderDisp = dispinterface;
  _LogEntryEventArgs = interface;
  _LogEntryEventArgsDisp = dispinterface;
  _TokenInfoCollection = interface;
  _TokenInfoCollectionDisp = dispinterface;
  _TokenInfoPolicy = interface;
  _TokenInfoPolicyDisp = dispinterface;
  _TokenSelectionPolicy = interface;
  _TokenSelectionPolicyDisp = dispinterface;
  _UserIdentity = interface;
  _UserIdentityDisp = dispinterface;
  _TokenInfo = interface;
  _TokenInfoDisp = dispinterface;
  _KerberosTokenInfo = interface;
  _KerberosTokenInfoDisp = dispinterface;
  _UserNameTokenInfo = interface;
  _UserNameTokenInfoDisp = dispinterface;
  _X509CertificateTokenInfo = interface;
  _X509CertificateTokenInfoDisp = dispinterface;
  _AnonymousTokenInfo = interface;
  _AnonymousTokenInfoDisp = dispinterface;
  _WindowsFormsInteractionParameters = interface;
  _WindowsFormsInteractionParametersDisp = dispinterface;
  _PluginSetup = interface;
  _PluginSetupDisp = dispinterface;
  _PluginSetupCollection = interface;
  _PluginSetupCollectionDisp = dispinterface;
  _DataFieldCollection = interface;
  _DataFieldCollectionDisp = dispinterface;
  _EnumerationMemberCollection = interface;
  _EnumerationMemberCollectionDisp = dispinterface;
  _TypeMemberInfo = interface;
  _TypeMemberInfoDisp = dispinterface;
  _DataType = interface;
  _DataTypeDisp = dispinterface;
  _EnumerationDataType = interface;
  _EnumerationDataTypeDisp = dispinterface;
  _EnumerationMember = interface;
  _EnumerationMemberDisp = dispinterface;
  _OpaqueDataType = interface;
  _OpaqueDataTypeDisp = dispinterface;
  _PrimitiveDataType = interface;
  _PrimitiveDataTypeDisp = dispinterface;
  _SequenceDataType = interface;
  _SequenceDataTypeDisp = dispinterface;
  _CompositeDataType = interface;
  _CompositeDataTypeDisp = dispinterface;
  _UnionDataType = interface;
  _UnionDataTypeDisp = dispinterface;
  _GenericData = interface;
  _GenericDataDisp = dispinterface;
  _FieldDataDictionary = interface;
  _FieldDataDictionaryDisp = dispinterface;
  _GenericDataCollection = interface;
  _GenericDataCollectionDisp = dispinterface;
  _OpaqueData = interface;
  _OpaqueDataDisp = dispinterface;
  _PrimitiveData = interface;
  _PrimitiveDataDisp = dispinterface;
  _SequenceData = interface;
  _SequenceDataDisp = dispinterface;
  _StructuredData = interface;
  _StructuredDataDisp = dispinterface;
  _UnionData = interface;
  _UnionDataDisp = dispinterface;
  _StructuredDataType = interface;
  _StructuredDataTypeDisp = dispinterface;
  _DataField = interface;
  _DataFieldDisp = dispinterface;
  _EnumerationData = interface;
  _EnumerationDataDisp = dispinterface;
  _ConsoleInteractionParameters = interface;
  _ConsoleInteractionParametersDisp = dispinterface;
  _ConfigurationPartCollection = interface;
  _ConfigurationPartCollectionDisp = dispinterface;
  _ComponentParameters = interface;
  _ComponentParametersDisp = dispinterface;
  _EndpointDescriptor = interface;
  _EndpointDescriptorDisp = dispinterface;
  _ObjectDescriptor = interface;
  _ObjectDescriptorDisp = dispinterface;
  _StringParsingError = interface;
  _StringParsingErrorDisp = dispinterface;
  _ConnectedConditionChangedEventArgs = interface;
  _ConnectedConditionChangedEventArgsDisp = dispinterface;
  _ConnectedConditionStatistics = interface;
  _ConnectedConditionStatisticsDisp = dispinterface;
  _InteropHelper = interface;
  _InteropHelperDisp = dispinterface;
  _VarType = interface;
  _VarTypeDisp = dispinterface;
  _DictionaryEntry2 = interface;
  _DictionaryEntry2Disp = dispinterface;
  _ElasticVector = interface;
  _ElasticVectorDisp = dispinterface;
  _ExceptionCollection = interface;
  _ExceptionCollectionDisp = dispinterface;
  _Int32Collection = interface;
  _Int32CollectionDisp = dispinterface;
  _NormalizedExceptionCollection = interface;
  _NormalizedExceptionCollectionDisp = dispinterface;
  _StringCollection = interface;
  _StringCollectionDisp = dispinterface;
  _StringObjectDictionary = interface;
  _StringObjectDictionaryDisp = dispinterface;
  _StringSet = interface;
  _StringSetDisp = dispinterface;
  _StringStringDictionary = interface;
  _StringStringDictionaryDisp = dispinterface;
  _ObjectObjectDictionary = interface;
  _ObjectObjectDictionaryDisp = dispinterface;
  _Dictionary = interface;
  _DictionaryDisp = dispinterface;
  _List = interface;
  _ListDisp = dispinterface;
  _AliasFilter = interface;
  _AliasFilterDisp = dispinterface;
  _AliasMetadata = interface;
  _AliasMetadataDisp = dispinterface;
  _AliasRepository = interface;
  _AliasRepositoryDisp = dispinterface;
  _ReadOnlyAliasRepository = interface;
  _ReadOnlyAliasRepositoryDisp = dispinterface;
  _AliasInfo = interface;
  _AliasInfoDisp = dispinterface;
  _AliasProvider = interface;
  _AliasProviderDisp = dispinterface;
  _AutomatonStateStatistics = interface;
  _AutomatonStateStatisticsDisp = dispinterface;
  _PeriodicResolverParameters = interface;
  _PeriodicResolverParametersDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Object2 = _Object2;
  TextParsingError = _TextParsingError;
  Parameters = _Parameters;
  XmlQualifiedName2 = _XmlQualifiedName2;
  XmlQualifiedName2Dictionary = _XmlQualifiedName2Dictionary;
  Widget = _Widget;
  NotifyingWidget = _NotifyingWidget;
  ManagedSecurityGroupParameters = _ManagedSecurityGroupParameters;
  SecurityGroupElement = _SecurityGroupElement;
  SecurityKeysInfo = _SecurityKeysInfo;
  PkiCertificate = _PkiCertificate;
  PkiCertificateCollection = _PkiCertificateCollection;
  PkiChain = _PkiChain;
  PkiCrlCollection = _PkiCrlCollection;
  PkiCrlEntryCollection = _PkiCrlEntryCollection;
  CertificateAcceptancePolicy = _CertificateAcceptancePolicy;
  CertificateGenerationParameters = _CertificateGenerationParameters;
  CertificateQuery = _CertificateQuery;
  CertificateQueryCollection = _CertificateQueryCollection;
  CertificateSecurityHandler = _CertificateSecurityHandler;
  CertificateSecurityParameters = _CertificateSecurityParameters;
  GetCertificatesEventArgs = _GetCertificatesEventArgs;
  NetworkSecurity = _NetworkSecurity;
  StaticCertificateSecurityParameters = _StaticCertificateSecurityParameters;
  ValidateCertificateEventArgs = _ValidateCertificateEventArgs;
  ComConfiguration = _ComConfiguration;
  ComInstantiationParameters = _ComInstantiationParameters;
  ComManagement = _ComManagement;
  ComSecurityParameters = _ComSecurityParameters;
  ExtendedCOMException = _ExtendedCOMException;
  SimulatedCOMException = _SimulatedCOMException;
  OperationArguments = _OperationArguments;
  HandleArguments = _HandleArguments;
  OperationEventArgs = _OperationEventArgs;
  OperationException = _OperationException;
  OperationResult = _OperationResult;
  ValueArguments = _ValueArguments;
  ValueArrayResult = _ValueArrayResult;
  ValueResult = _ValueResult;
  NetworkCredential2 = _NetworkCredential2;
  ComputerElement = _ComputerElement;
  HostElement = _HostElement;
  ResourceAddress = _ResourceAddress;
  BrowsePathFormatException = _BrowsePathFormatException;
  BrowsePathParser = _BrowsePathParser;
  BrowsePath = _BrowsePath;
  LogEntryEventArgs = _LogEntryEventArgs;
  KerberosTokenInfo = _KerberosTokenInfo;
  AnonymousTokenInfo = _AnonymousTokenInfo;
  TokenInfoCollection = _TokenInfoCollection;
  TokenInfoPolicy = _TokenInfoPolicy;
  TokenSelectionPolicy = _TokenSelectionPolicy;
  UserIdentity = _UserIdentity;
  UserNameTokenInfo = _UserNameTokenInfo;
  X509CertificateTokenInfo = _X509CertificateTokenInfo;
  WindowsFormsInteractionParameters = _WindowsFormsInteractionParameters;
  PluginSetup = _PluginSetup;
  PluginSetupCollection = _PluginSetupCollection;
  GenericData = _GenericData;
  DataFieldCollection = _DataFieldCollection;
  DataType = _DataType;
  EnumerationDataType = _EnumerationDataType;
  EnumerationMember = _EnumerationMember;
  EnumerationMemberCollection = _EnumerationMemberCollection;
  FieldDataDictionary = _FieldDataDictionary;
  EnumerationData = _EnumerationData;
  GenericDataCollection = _GenericDataCollection;
  OpaqueData = _OpaqueData;
  OpaqueDataType = _OpaqueDataType;
  PrimitiveData = _PrimitiveData;
  PrimitiveDataType = _PrimitiveDataType;
  SequenceData = _SequenceData;
  SequenceDataType = _SequenceDataType;
  StructuredData = _StructuredData;
  StructuredDataType = _StructuredDataType;
  DataField = _DataField;
  UnionData = _UnionData;
  UnionDataType = _UnionDataType;
  ConsoleInteractionParameters = _ConsoleInteractionParameters;
  ConfigurationPartCollection = _ConfigurationPartCollection;
  DataEventArgs = _DataEventArgs;
  Exception2 = _Exception2;
  ExceptionEventArgs = _ExceptionEventArgs;
  FailureEventArgs = _FailureEventArgs;
  FormatException2 = _FormatException2;
  EndpointDescriptor = _EndpointDescriptor;
  MemberNotFoundException = _MemberNotFoundException;
  NormalizedException = _NormalizedException;
  Info = _Info;
  OutOfSlotsException = _OutOfSlotsException;
  ComponentParameters = _ComponentParameters;
  ProcedureCallException = _ProcedureCallException;
  QueueOverflowException = _QueueOverflowException;
  ObjectDescriptor = _ObjectDescriptor;
  ResultException = _ResultException;
  GenericError = _GenericError;
  StringListParsingError = _StringListParsingError;
  StringParsingError = _StringParsingError;
  ConnectedConditionChangedEventArgs = _ConnectedConditionChangedEventArgs;
  ConnectedConditionStatistics = _ConnectedConditionStatistics;
  InteropHelper = _InteropHelper;
  VarType = _VarType;
  ExceptionCollection = _ExceptionCollection;
  Int32Collection = _Int32Collection;
  NormalizedExceptionCollection = _NormalizedExceptionCollection;
  StringCollection = _StringCollection;
  StringObjectDictionary = _StringObjectDictionary;
  StringSet = _StringSet;
  StringStringDictionary = _StringStringDictionary;
  DictionaryWrapper = _Dictionary;
  DictionaryEntry2 = _DictionaryEntry2;
  ElasticVector = _ElasticVector;
  AliasMetadata = _AliasMetadata;
  ResourceDescriptor = _ResourceDescriptor;
  AliasFilter = _AliasFilter;
  AliasInfo = _AliasInfo;
  EmptyAliasRepository = _AliasRepository;
  MemoryAliasRepository = _AliasRepository;
  AutomatonStateStatistics = _AutomatonStateStatistics;
  PeriodicResolverParameters = _PeriodicResolverParameters;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  CommunicationSecurityRanking = record
    Authentication: Sign;
    Confidentiality: Sign;
    Integrity: Sign;
  end;


// *********************************************************************//
// Interface: _Object2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9B164457-EEF8-4736-BAE7-531D45EA2751}
// *********************************************************************//
  _Object2 = interface(IDispatch)
    ['{9B164457-EEF8-4736-BAE7-531D45EA2751}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
  end;

// *********************************************************************//
// DispIntf:  _Object2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9B164457-EEF8-4736-BAE7-531D45EA2751}
// *********************************************************************//
  _Object2Disp = dispinterface
    ['{9B164457-EEF8-4736-BAE7-531D45EA2751}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
  end;

// *********************************************************************//
// Interface: _Info
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B9103DFD-BACE-4392-AFB0-FF2BFC9C7AB7}
// *********************************************************************//
  _Info = interface(IDispatch)
    ['{B9103DFD-BACE-4392-AFB0-FF2BFC9C7AB7}']
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
// DispIntf:  _InfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B9103DFD-BACE-4392-AFB0-FF2BFC9C7AB7}
// *********************************************************************//
  _InfoDisp = dispinterface
    ['{B9103DFD-BACE-4392-AFB0-FF2BFC9C7AB7}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
  end;

// *********************************************************************//
// Interface: _ResourceDescriptor
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {605FE27E-BF82-4214-96C7-A1DE7A49348C}
// *********************************************************************//
  _ResourceDescriptor = interface(IDispatch)
    ['{605FE27E-BF82-4214-96C7-A1DE7A49348C}']
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
    function Get_host: WideString; safecall;
    procedure Set_host(const pRetVal: WideString); safecall;
    function Get_IsNull: WordBool; safecall;
    function Get_password: WideString; safecall;
    procedure Set_password(const pRetVal: WideString); safecall;
    function Get_Path: WideString; safecall;
    procedure Set_Path(const pRetVal: WideString); safecall;
    function Get_port: Integer; safecall;
    procedure Set_port(pRetVal: Integer); safecall;
    function Get_prefix: WideString; safecall;
    procedure Set_prefix(const pRetVal: WideString); safecall;
    function Get_Query: WideString; safecall;
    procedure Set_Query(const pRetVal: WideString); safecall;
    function Get_Scheme: WideString; safecall;
    procedure Set_Scheme(const pRetVal: WideString); safecall;
    function Get_UserName: WideString; safecall;
    procedure Set_UserName(const pRetVal: WideString); safecall;
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
    property host: WideString read Get_host write Set_host;
    property IsNull: WordBool read Get_IsNull;
    property password: WideString read Get_password write Set_password;
    property Path: WideString read Get_Path write Set_Path;
    property port: Integer read Get_port write Set_port;
    property prefix: WideString read Get_prefix write Set_prefix;
    property Query: WideString read Get_Query write Set_Query;
    property Scheme: WideString read Get_Scheme write Set_Scheme;
    property UserName: WideString read Get_UserName write Set_UserName;
  end;

// *********************************************************************//
// DispIntf:  _ResourceDescriptorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {605FE27E-BF82-4214-96C7-A1DE7A49348C}
// *********************************************************************//
  _ResourceDescriptorDisp = dispinterface
    ['{605FE27E-BF82-4214-96C7-A1DE7A49348C}']
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
    property host: WideString dispid 1610743831;
    property IsNull: WordBool readonly dispid 1610743833;
    property password: WideString dispid 1610743834;
    property Path: WideString dispid 1610743836;
    property port: Integer dispid 1610743838;
    property prefix: WideString dispid 1610743840;
    property Query: WideString dispid 1610743842;
    property Scheme: WideString dispid 1610743844;
    property UserName: WideString dispid 1610743846;
  end;

// *********************************************************************//
// Interface: _Aliasable
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {98494757-8E03-4D19-87F3-ABEE93F7BD45}
// *********************************************************************//
  _Aliasable = interface(IDispatch)
    ['{98494757-8E03-4D19-87F3-ABEE93F7BD45}']
    function Get_AliasName: WideString; safecall;
    procedure Set_AliasName(const pRetVal: WideString); safecall;
    function Get_IsAliased: WordBool; safecall;
    property AliasName: WideString read Get_AliasName write Set_AliasName;
    property IsAliased: WordBool read Get_IsAliased;
  end;

// *********************************************************************//
// DispIntf:  _AliasableDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {98494757-8E03-4D19-87F3-ABEE93F7BD45}
// *********************************************************************//
  _AliasableDisp = dispinterface
    ['{98494757-8E03-4D19-87F3-ABEE93F7BD45}']
    property AliasName: WideString dispid 1610743808;
    property IsAliased: WordBool readonly dispid 1610743810;
  end;

// *********************************************************************//
// Interface: _GenericError
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {20842DED-34A1-47E9-95AC-AF81445FD242}
// *********************************************************************//
  _GenericError = interface(IDispatch)
    ['{20842DED-34A1-47E9-95AC-AF81445FD242}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Code: _Enum; safecall;
    function Get_CodeType: _Type; safecall;
    function Get_InnerException: _Exception; safecall;
    function Get_Message: WideString; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Code: _Enum read Get_Code;
    property CodeType: _Type read Get_CodeType;
    property InnerException: _Exception read Get_InnerException;
    property Message: WideString read Get_Message;
  end;

// *********************************************************************//
// DispIntf:  _GenericErrorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {20842DED-34A1-47E9-95AC-AF81445FD242}
// *********************************************************************//
  _GenericErrorDisp = dispinterface
    ['{20842DED-34A1-47E9-95AC-AF81445FD242}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Code: _Enum readonly dispid 1610743813;
    property CodeType: _Type readonly dispid 1610743814;
    property InnerException: _Exception readonly dispid 1610743815;
    property Message: WideString readonly dispid 1610743816;
  end;

// *********************************************************************//
// Interface: _StringListParsingError
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F80CE0F3-87C7-40A6-A77C-A94B8B97F0A6}
// *********************************************************************//
  _StringListParsingError = interface(IDispatch)
    ['{F80CE0F3-87C7-40A6-A77C-A94B8B97F0A6}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Code: _Enum; safecall;
    function Get_CodeType: _Type; safecall;
    function Get_InnerException: _Exception; safecall;
    function Get_Message: WideString; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Code: _Enum read Get_Code;
    property CodeType: _Type read Get_CodeType;
    property InnerException: _Exception read Get_InnerException;
    property Message: WideString read Get_Message;
  end;

// *********************************************************************//
// DispIntf:  _StringListParsingErrorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F80CE0F3-87C7-40A6-A77C-A94B8B97F0A6}
// *********************************************************************//
  _StringListParsingErrorDisp = dispinterface
    ['{F80CE0F3-87C7-40A6-A77C-A94B8B97F0A6}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Code: _Enum readonly dispid 1610743813;
    property CodeType: _Type readonly dispid 1610743814;
    property InnerException: _Exception readonly dispid 1610743815;
    property Message: WideString readonly dispid 1610743816;
  end;

// *********************************************************************//
// Interface: _TextParsingError
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9FDFF667-7C96-4839-9C50-B1F8C19D3198}
// *********************************************************************//
  _TextParsingError = interface(IDispatch)
    ['{9FDFF667-7C96-4839-9C50-B1F8C19D3198}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Code: _Enum; safecall;
    function Get_CodeType: _Type; safecall;
    function Get_InnerException: _Exception; safecall;
    function Get_Message: WideString; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Code: _Enum read Get_Code;
    property CodeType: _Type read Get_CodeType;
    property InnerException: _Exception read Get_InnerException;
    property Message: WideString read Get_Message;
  end;

// *********************************************************************//
// DispIntf:  _TextParsingErrorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9FDFF667-7C96-4839-9C50-B1F8C19D3198}
// *********************************************************************//
  _TextParsingErrorDisp = dispinterface
    ['{9FDFF667-7C96-4839-9C50-B1F8C19D3198}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Code: _Enum readonly dispid 1610743813;
    property CodeType: _Type readonly dispid 1610743814;
    property InnerException: _Exception readonly dispid 1610743815;
    property Message: WideString readonly dispid 1610743816;
  end;

// *********************************************************************//
// Interface: _DataEventArgs
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0A1C63EB-39F4-4060-A1DB-AA4AB197C6DC}
// *********************************************************************//
  _DataEventArgs = interface(IDispatch)
    ['{0A1C63EB-39F4-4060-A1DB-AA4AB197C6DC}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Data: OleVariant; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Data: OleVariant read Get_Data;
  end;

// *********************************************************************//
// DispIntf:  _DataEventArgsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0A1C63EB-39F4-4060-A1DB-AA4AB197C6DC}
// *********************************************************************//
  _DataEventArgsDisp = dispinterface
    ['{0A1C63EB-39F4-4060-A1DB-AA4AB197C6DC}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Data: OleVariant readonly dispid 1610743813;
  end;

// *********************************************************************//
// Interface: _ExceptionEventArgs
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {11D2784C-114A-44DD-BD1B-40BE064F7C45}
// *********************************************************************//
  _ExceptionEventArgs = interface(IDispatch)
    ['{11D2784C-114A-44DD-BD1B-40BE064F7C45}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Exception: _Exception; safecall;
    function Clone: OleVariant; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Exception: _Exception read Get_Exception;
  end;

// *********************************************************************//
// DispIntf:  _ExceptionEventArgsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {11D2784C-114A-44DD-BD1B-40BE064F7C45}
// *********************************************************************//
  _ExceptionEventArgsDisp = dispinterface
    ['{11D2784C-114A-44DD-BD1B-40BE064F7C45}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Exception: _Exception readonly dispid 1610743813;
    function Clone: OleVariant; dispid 1610743814;
  end;

// *********************************************************************//
// Interface: _FailureEventArgs
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2EC5B913-FB3B-4ADF-A41E-E7B13D6B234B}
// *********************************************************************//
  _FailureEventArgs = interface(IDispatch)
    ['{2EC5B913-FB3B-4ADF-A41E-E7B13D6B234B}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_Exception: _Exception; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Exception: _Exception read Get_Exception;
  end;

// *********************************************************************//
// DispIntf:  _FailureEventArgsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2EC5B913-FB3B-4ADF-A41E-E7B13D6B234B}
// *********************************************************************//
  _FailureEventArgsDisp = dispinterface
    ['{2EC5B913-FB3B-4ADF-A41E-E7B13D6B234B}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property Exception: _Exception readonly dispid 1610743814;
  end;

// *********************************************************************//
// Interface: _Exception2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {45305271-B85F-42B7-8F35-F22EC9FEF8F2}
// *********************************************************************//
  _Exception2 = interface(IDispatch)
    ['{45305271-B85F-42B7-8F35-F22EC9FEF8F2}']
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
    procedure GetObjectData(const Info: _SerializationInfo; context: StreamingContext); safecall;
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
// DispIntf:  _Exception2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {45305271-B85F-42B7-8F35-F22EC9FEF8F2}
// *********************************************************************//
  _Exception2Disp = dispinterface
    ['{45305271-B85F-42B7-8F35-F22EC9FEF8F2}']
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
    procedure GetObjectData(const Info: _SerializationInfo; 
                            context: {NOT_OLEAUTO(StreamingContext)}OleVariant); dispid 1610743822;
    property Data: _Dictionary readonly dispid 1610743823;
    property HResult: Integer readonly dispid 1610743824;
  end;

// *********************************************************************//
// Interface: _FormatException2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DCDB33DC-9C30-496B-A680-2E447908D864}
// *********************************************************************//
  _FormatException2 = interface(IDispatch)
    ['{DCDB33DC-9C30-496B-A680-2E447908D864}']
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
    procedure GetObjectData(const Info: _SerializationInfo; context: StreamingContext); safecall;
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
// DispIntf:  _FormatException2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DCDB33DC-9C30-496B-A680-2E447908D864}
// *********************************************************************//
  _FormatException2Disp = dispinterface
    ['{DCDB33DC-9C30-496B-A680-2E447908D864}']
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
    procedure GetObjectData(const Info: _SerializationInfo; 
                            context: {NOT_OLEAUTO(StreamingContext)}OleVariant); dispid 1610743822;
    property Data: _Dictionary readonly dispid 1610743823;
    property HResult: Integer readonly dispid 1610743824;
  end;

// *********************************************************************//
// Interface: _MemberNotFoundException
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F373D74C-F9BD-4349-AEED-970EBFA23D5F}
// *********************************************************************//
  _MemberNotFoundException = interface(IDispatch)
    ['{F373D74C-F9BD-4349-AEED-970EBFA23D5F}']
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
    procedure GetObjectData(const Info: _SerializationInfo; context: StreamingContext); safecall;
    function Get_Data: _Dictionary; safecall;
    function Get_HResult: Integer; safecall;
    function Get_memberName: WideString; safecall;
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
    property memberName: WideString read Get_memberName;
  end;

// *********************************************************************//
// DispIntf:  _MemberNotFoundExceptionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F373D74C-F9BD-4349-AEED-970EBFA23D5F}
// *********************************************************************//
  _MemberNotFoundExceptionDisp = dispinterface
    ['{F373D74C-F9BD-4349-AEED-970EBFA23D5F}']
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
    procedure GetObjectData(const Info: _SerializationInfo; 
                            context: {NOT_OLEAUTO(StreamingContext)}OleVariant); dispid 1610743822;
    property Data: _Dictionary readonly dispid 1610743823;
    property HResult: Integer readonly dispid 1610743824;
    property memberName: WideString readonly dispid 1610743825;
  end;

// *********************************************************************//
// Interface: _NormalizedException
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {55E17BB5-C01B-4B85-B9F7-EFE5DAF1B7FA}
// *********************************************************************//
  _NormalizedException = interface(IDispatch)
    ['{55E17BB5-C01B-4B85-B9F7-EFE5DAF1B7FA}']
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
    procedure GetObjectData(const Info: _SerializationInfo; context: StreamingContext); safecall;
    function Get_Data: _Dictionary; safecall;
    function Get_HResult: Integer; safecall;
    function Get_NormalizedData: _StringStringDictionary; safecall;
    function Get_NormalizedInnerException: _NormalizedException; safecall;
    function Get_OriginalType: _Type; safecall;
    function Get_OriginalTypeName: WideString; safecall;
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
    property NormalizedData: _StringStringDictionary read Get_NormalizedData;
    property NormalizedInnerException: _NormalizedException read Get_NormalizedInnerException;
    property OriginalType: _Type read Get_OriginalType;
    property OriginalTypeName: WideString read Get_OriginalTypeName;
  end;

// *********************************************************************//
// DispIntf:  _NormalizedExceptionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {55E17BB5-C01B-4B85-B9F7-EFE5DAF1B7FA}
// *********************************************************************//
  _NormalizedExceptionDisp = dispinterface
    ['{55E17BB5-C01B-4B85-B9F7-EFE5DAF1B7FA}']
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
    procedure GetObjectData(const Info: _SerializationInfo; 
                            context: {NOT_OLEAUTO(StreamingContext)}OleVariant); dispid 1610743822;
    property Data: _Dictionary readonly dispid 1610743823;
    property HResult: Integer readonly dispid 1610743824;
    property NormalizedData: _StringStringDictionary readonly dispid 1610743825;
    property NormalizedInnerException: _NormalizedException readonly dispid 1610743826;
    property OriginalType: _Type readonly dispid 1610743827;
    property OriginalTypeName: WideString readonly dispid 1610743828;
  end;

// *********************************************************************//
// Interface: _OutOfSlotsException
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {63F62210-6E46-4A45-955B-CD685BDDC840}
// *********************************************************************//
  _OutOfSlotsException = interface(IDispatch)
    ['{63F62210-6E46-4A45-955B-CD685BDDC840}']
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
    procedure GetObjectData(const Info: _SerializationInfo; context: StreamingContext); safecall;
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
// DispIntf:  _OutOfSlotsExceptionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {63F62210-6E46-4A45-955B-CD685BDDC840}
// *********************************************************************//
  _OutOfSlotsExceptionDisp = dispinterface
    ['{63F62210-6E46-4A45-955B-CD685BDDC840}']
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
    procedure GetObjectData(const Info: _SerializationInfo; 
                            context: {NOT_OLEAUTO(StreamingContext)}OleVariant); dispid 1610743822;
    property Data: _Dictionary readonly dispid 1610743823;
    property HResult: Integer readonly dispid 1610743824;
  end;

// *********************************************************************//
// Interface: _ProcedureCallException
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7F6F65F1-BE25-4DC9-B2D2-B7F5F649299A}
// *********************************************************************//
  _ProcedureCallException = interface(IDispatch)
    ['{7F6F65F1-BE25-4DC9-B2D2-B7F5F649299A}']
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
    procedure GetObjectData(const Info: _SerializationInfo; context: StreamingContext); safecall;
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
// DispIntf:  _ProcedureCallExceptionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7F6F65F1-BE25-4DC9-B2D2-B7F5F649299A}
// *********************************************************************//
  _ProcedureCallExceptionDisp = dispinterface
    ['{7F6F65F1-BE25-4DC9-B2D2-B7F5F649299A}']
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
    procedure GetObjectData(const Info: _SerializationInfo; 
                            context: {NOT_OLEAUTO(StreamingContext)}OleVariant); dispid 1610743822;
    property Data: _Dictionary readonly dispid 1610743823;
    property HResult: Integer readonly dispid 1610743824;
  end;

// *********************************************************************//
// Interface: _QueueOverflowException
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {28E02B54-6074-49BE-BB66-AD20387F2058}
// *********************************************************************//
  _QueueOverflowException = interface(IDispatch)
    ['{28E02B54-6074-49BE-BB66-AD20387F2058}']
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
    procedure GetObjectData(const Info: _SerializationInfo; context: StreamingContext); safecall;
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
// DispIntf:  _QueueOverflowExceptionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {28E02B54-6074-49BE-BB66-AD20387F2058}
// *********************************************************************//
  _QueueOverflowExceptionDisp = dispinterface
    ['{28E02B54-6074-49BE-BB66-AD20387F2058}']
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
    procedure GetObjectData(const Info: _SerializationInfo; 
                            context: {NOT_OLEAUTO(StreamingContext)}OleVariant); dispid 1610743822;
    property Data: _Dictionary readonly dispid 1610743823;
    property HResult: Integer readonly dispid 1610743824;
  end;

// *********************************************************************//
// Interface: _ResultException
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {66DECCFC-A325-406D-936D-768FCA6031C2}
// *********************************************************************//
  _ResultException = interface(IDispatch)
    ['{66DECCFC-A325-406D-936D-768FCA6031C2}']
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
    procedure GetObjectData(const Info: _SerializationInfo; context: StreamingContext); safecall;
    function Get_Data: _Dictionary; safecall;
    function Get_HResult: Integer; safecall;
    function Get_Method: _MethodBase; safecall;
    function Get_ParamName: WideString; safecall;
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
    property Method: _MethodBase read Get_Method;
    property ParamName: WideString read Get_ParamName;
  end;

// *********************************************************************//
// DispIntf:  _ResultExceptionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {66DECCFC-A325-406D-936D-768FCA6031C2}
// *********************************************************************//
  _ResultExceptionDisp = dispinterface
    ['{66DECCFC-A325-406D-936D-768FCA6031C2}']
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
    procedure GetObjectData(const Info: _SerializationInfo; 
                            context: {NOT_OLEAUTO(StreamingContext)}OleVariant); dispid 1610743822;
    property Data: _Dictionary readonly dispid 1610743823;
    property HResult: Integer readonly dispid 1610743824;
    property Method: _MethodBase readonly dispid 1610743825;
    property ParamName: WideString readonly dispid 1610743826;
  end;

// *********************************************************************//
// Interface: _Parameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6D244BF5-D5DF-409A-85A2-7BC8C14EF351}
// *********************************************************************//
  _Parameters = interface(IDispatch)
    ['{6D244BF5-D5DF-409A-85A2-7BC8C14EF351}']
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
// DispIntf:  _ParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6D244BF5-D5DF-409A-85A2-7BC8C14EF351}
// *********************************************************************//
  _ParametersDisp = dispinterface
    ['{6D244BF5-D5DF-409A-85A2-7BC8C14EF351}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
  end;

// *********************************************************************//
// Interface: _XmlQualifiedName2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DA85E762-EDC8-4259-91E3-9B2B8D95897C}
// *********************************************************************//
  _XmlQualifiedName2 = interface(IDispatch)
    ['{DA85E762-EDC8-4259-91E3-9B2B8D95897C}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_IsEmpty: WordBool; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pRetVal: WideString); safecall;
    function Get_Namespace: WideString; safecall;
    procedure Set_Namespace(const pRetVal: WideString); safecall;
    function Clone: OleVariant; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property IsEmpty: WordBool read Get_IsEmpty;
    property Name: WideString read Get_Name write Set_Name;
    property Namespace: WideString read Get_Namespace write Set_Namespace;
  end;

// *********************************************************************//
// DispIntf:  _XmlQualifiedName2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DA85E762-EDC8-4259-91E3-9B2B8D95897C}
// *********************************************************************//
  _XmlQualifiedName2Disp = dispinterface
    ['{DA85E762-EDC8-4259-91E3-9B2B8D95897C}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property IsEmpty: WordBool readonly dispid 1610743813;
    property Name: WideString dispid 1610743814;
    property Namespace: WideString dispid 1610743816;
    function Clone: OleVariant; dispid 1610743818;
  end;

// *********************************************************************//
// Interface: _XmlQualifiedName2Dictionary
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5F097501-C089-4A4A-8C3A-5BFC491D00A7}
// *********************************************************************//
  _XmlQualifiedName2Dictionary = interface(IDispatch)
    ['{5F097501-C089-4A4A-8C3A-5BFC491D00A7}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(key: OleVariant): _XmlQualifiedName2; safecall;
    procedure _Set_Item(key: OleVariant; const pRetVal: _XmlQualifiedName2); safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(key: OleVariant; Item: OleVariant); safecall;
    procedure Clear; safecall;
    function ContainsKey(key: OleVariant): WordBool; safecall;
    function Remove(key: OleVariant): WordBool; safecall;
    function TryGetValue(key: OleVariant; out value: OleVariant): WordBool; safecall;
    function ContainsValue(value: OleVariant): WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property Item[key: OleVariant]: _XmlQualifiedName2 read Get_Item write _Set_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _XmlQualifiedName2DictionaryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5F097501-C089-4A4A-8C3A-5BFC491D00A7}
// *********************************************************************//
  _XmlQualifiedName2DictionaryDisp = dispinterface
    ['{5F097501-C089-4A4A-8C3A-5BFC491D00A7}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[key: OleVariant]: _XmlQualifiedName2 dispid 0; default;
    property Count: Integer readonly dispid 1610743814;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(key: OleVariant; Item: OleVariant); dispid 1610743816;
    procedure Clear; dispid 1610743817;
    function ContainsKey(key: OleVariant): WordBool; dispid 1610743818;
    function Remove(key: OleVariant): WordBool; dispid 1610743819;
    function TryGetValue(key: OleVariant; out value: OleVariant): WordBool; dispid 1610743820;
    function ContainsValue(value: OleVariant): WordBool; dispid 1610743821;
  end;

// *********************************************************************//
// Interface: _Widget
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9120435F-3DDE-4BFA-A307-A6CAD683834A}
// *********************************************************************//
  _Widget = interface(IDispatch)
    ['{9120435F-3DDE-4BFA-A307-A6CAD683834A}']
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
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property CustomReference: WideString read Get_CustomReference write Set_CustomReference;
  end;

// *********************************************************************//
// DispIntf:  _WidgetDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9120435F-3DDE-4BFA-A307-A6CAD683834A}
// *********************************************************************//
  _WidgetDisp = dispinterface
    ['{9120435F-3DDE-4BFA-A307-A6CAD683834A}']
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
  end;

// *********************************************************************//
// Interface: _NotifyingWidget
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F343CD94-7011-4ABD-B40D-7EA4AEDC6F49}
// *********************************************************************//
  _NotifyingWidget = interface(IDispatch)
    ['{F343CD94-7011-4ABD-B40D-7EA4AEDC6F49}']
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
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property CustomReference: WideString read Get_CustomReference write Set_CustomReference;
    property NotificationQueueCapacity: Integer read Get_NotificationQueueCapacity write Set_NotificationQueueCapacity;
    property NotificationQueueIdleTimeToSleep: Integer read Get_NotificationQueueIdleTimeToSleep write Set_NotificationQueueIdleTimeToSleep;
    property QueueNotifications: WordBool read Get_QueueNotifications write Set_QueueNotifications;
  end;

// *********************************************************************//
// DispIntf:  _NotifyingWidgetDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F343CD94-7011-4ABD-B40D-7EA4AEDC6F49}
// *********************************************************************//
  _NotifyingWidgetDisp = dispinterface
    ['{F343CD94-7011-4ABD-B40D-7EA4AEDC6F49}']
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
  end;

// *********************************************************************//
// Interface: _CertificateAcceptancePolicy
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {128F27FA-3239-49B8-BE85-11AC5D77A2CE}
// *********************************************************************//
  _CertificateAcceptancePolicy = interface(IDispatch)
    ['{128F27FA-3239-49B8-BE85-11AC5D77A2CE}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_AcceptAnyCertificate: WordBool; safecall;
    procedure Set_AcceptAnyCertificate(pRetVal: WordBool); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property AcceptAnyCertificate: WordBool read Get_AcceptAnyCertificate write Set_AcceptAnyCertificate;
  end;

// *********************************************************************//
// DispIntf:  _CertificateAcceptancePolicyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {128F27FA-3239-49B8-BE85-11AC5D77A2CE}
// *********************************************************************//
  _CertificateAcceptancePolicyDisp = dispinterface
    ['{128F27FA-3239-49B8-BE85-11AC5D77A2CE}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property AcceptAnyCertificate: WordBool dispid 1610743816;
  end;

// *********************************************************************//
// Interface: _CertificateGenerationParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A85FE918-9011-4A34-8A83-3D2CFA5C394C}
// *********************************************************************//
  _CertificateGenerationParameters = interface(IDispatch)
    ['{A85FE918-9011-4A34-8A83-3D2CFA5C394C}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_AllowUserInteraction: WordBool; safecall;
    procedure Set_AllowUserInteraction(pRetVal: WordBool); safecall;
    function Get_MaximumExpirationDate: TDateTime; safecall;
    procedure Set_MaximumExpirationDate(pRetVal: TDateTime); safecall;
    function Get_MinimumKeySize: Integer; safecall;
    procedure Set_MinimumKeySize(pRetVal: Integer); safecall;
    function Get_ValidityPeriodInMonths: Integer; safecall;
    procedure Set_ValidityPeriodInMonths(pRetVal: Integer); safecall;
    function GetLifetimeInMonthsFrom(fromDateTime: TDateTime): Integer; safecall;
    function GetMonthsToMaximumExpirationDate(fromDateTime: TDateTime): Integer; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property AllowUserInteraction: WordBool read Get_AllowUserInteraction write Set_AllowUserInteraction;
    property MaximumExpirationDate: TDateTime read Get_MaximumExpirationDate write Set_MaximumExpirationDate;
    property MinimumKeySize: Integer read Get_MinimumKeySize write Set_MinimumKeySize;
    property ValidityPeriodInMonths: Integer read Get_ValidityPeriodInMonths write Set_ValidityPeriodInMonths;
  end;

// *********************************************************************//
// DispIntf:  _CertificateGenerationParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A85FE918-9011-4A34-8A83-3D2CFA5C394C}
// *********************************************************************//
  _CertificateGenerationParametersDisp = dispinterface
    ['{A85FE918-9011-4A34-8A83-3D2CFA5C394C}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property AllowUserInteraction: WordBool dispid 1610743816;
    property MaximumExpirationDate: TDateTime dispid 1610743818;
    property MinimumKeySize: Integer dispid 1610743820;
    property ValidityPeriodInMonths: Integer dispid 1610743822;
    function GetLifetimeInMonthsFrom(fromDateTime: TDateTime): Integer; dispid 1610743824;
    function GetMonthsToMaximumExpirationDate(fromDateTime: TDateTime): Integer; dispid 1610743825;
  end;

// *********************************************************************//
// Interface: _CertificateQuery
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D942E036-D51B-4BF8-AE66-B3108921A800}
// *********************************************************************//
  _CertificateQuery = interface(IDispatch)
    ['{D942E036-D51B-4BF8-AE66-B3108921A800}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_FileName: WideString; safecall;
    procedure Set_FileName(const pRetVal: WideString); safecall;
    function Get_FindValue: WideString; safecall;
    procedure Set_FindValue(const pRetVal: WideString); safecall;
    function Get_keyStorageFlags: X509KeyStorageFlags; safecall;
    procedure Set_keyStorageFlags(pRetVal: X509KeyStorageFlags); safecall;
    function Get_password: WideString; safecall;
    procedure Set_password(const pRetVal: WideString); safecall;
    function Get_SourceTypes: CertificateSourceTypes; safecall;
    procedure Set_SourceTypes(pRetVal: CertificateSourceTypes); safecall;
    function Get_StoreLocation: PkiStoreLocation; safecall;
    procedure Set_StoreLocation(pRetVal: PkiStoreLocation); safecall;
    function Get_StoreName: PkiStoreName; safecall;
    procedure Set_StoreName(pRetVal: PkiStoreName); safecall;
    function Get_PkiFindType: PkiFindType; safecall;
    procedure Set_PkiFindType(pRetVal: PkiFindType); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property FileName: WideString read Get_FileName write Set_FileName;
    property FindValue: WideString read Get_FindValue write Set_FindValue;
    property keyStorageFlags: X509KeyStorageFlags read Get_keyStorageFlags write Set_keyStorageFlags;
    property password: WideString read Get_password write Set_password;
    property SourceTypes: CertificateSourceTypes read Get_SourceTypes write Set_SourceTypes;
    property StoreLocation: PkiStoreLocation read Get_StoreLocation write Set_StoreLocation;
    property StoreName: PkiStoreName read Get_StoreName write Set_StoreName;
    property PkiFindType: PkiFindType read Get_PkiFindType write Set_PkiFindType;
  end;

// *********************************************************************//
// DispIntf:  _CertificateQueryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D942E036-D51B-4BF8-AE66-B3108921A800}
// *********************************************************************//
  _CertificateQueryDisp = dispinterface
    ['{D942E036-D51B-4BF8-AE66-B3108921A800}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property FileName: WideString dispid 1610743816;
    property FindValue: WideString dispid 1610743818;
    property keyStorageFlags: X509KeyStorageFlags dispid 1610743820;
    property password: WideString dispid 1610743822;
    property SourceTypes: CertificateSourceTypes dispid 1610743824;
    property StoreLocation: PkiStoreLocation dispid 1610743826;
    property StoreName: PkiStoreName dispid 1610743828;
    property PkiFindType: PkiFindType dispid 1610743830;
  end;

// *********************************************************************//
// Interface: _CertificateQueryCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F9E18096-F237-4436-AE1D-E3F66F206539}
// *********************************************************************//
  _CertificateQueryCollection = interface(IDispatch)
    ['{F9E18096-F237-4436-AE1D-E3F66F206539}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(index: Integer): _CertificateQuery; safecall;
    procedure _Set_Item(index: Integer; const pRetVal: _CertificateQuery); safecall;
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
    property Item[index: Integer]: _CertificateQuery read Get_Item write _Set_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _CertificateQueryCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F9E18096-F237-4436-AE1D-E3F66F206539}
// *********************************************************************//
  _CertificateQueryCollectionDisp = dispinterface
    ['{F9E18096-F237-4436-AE1D-E3F66F206539}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[index: Integer]: _CertificateQuery dispid 0; default;
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
// Interface: _NetworkSecurity
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D970048B-393C-41B5-A5D0-A187F5B03D25}
// *********************************************************************//
  _NetworkSecurity = interface(IDispatch)
    ['{D970048B-393C-41B5-A5D0-A187F5B03D25}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_CustomNetworkCredential: WordBool; safecall;
    procedure Set_CustomNetworkCredential(pRetVal: WordBool); safecall;
    function Get_IsConfigured: WordBool; safecall;
    function Get_IsNull: WordBool; safecall;
    function Get_NetworkCredential: _NetworkCredential2; safecall;
    procedure _Set_NetworkCredential(const pRetVal: _NetworkCredential2); safecall;
    procedure Deconfigure; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property CustomNetworkCredential: WordBool read Get_CustomNetworkCredential write Set_CustomNetworkCredential;
    property IsConfigured: WordBool read Get_IsConfigured;
    property IsNull: WordBool read Get_IsNull;
    property NetworkCredential: _NetworkCredential2 read Get_NetworkCredential write _Set_NetworkCredential;
  end;

// *********************************************************************//
// DispIntf:  _NetworkSecurityDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D970048B-393C-41B5-A5D0-A187F5B03D25}
// *********************************************************************//
  _NetworkSecurityDisp = dispinterface
    ['{D970048B-393C-41B5-A5D0-A187F5B03D25}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property CustomNetworkCredential: WordBool dispid 1610743814;
    property IsConfigured: WordBool readonly dispid 1610743816;
    property IsNull: WordBool readonly dispid 1610743817;
    property NetworkCredential: _NetworkCredential2 dispid 1610743818;
    procedure Deconfigure; dispid 1610743820;
  end;

// *********************************************************************//
// Interface: _GetCertificatesEventArgs
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {70730F6C-CA55-4ABD-99FB-4CEBE1D883D7}
// *********************************************************************//
  _GetCertificatesEventArgs = interface(IDispatch)
    ['{70730F6C-CA55-4ABD-99FB-4CEBE1D883D7}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_CertificatesResult: _ValueResult; safecall;
    procedure _Set_CertificatesResult(const pRetVal: _ValueResult); safecall;
    function Get_Sender: OleVariant; safecall;
    procedure _Set_Sender(pRetVal: OleVariant); safecall;
    function Get_Target: OleVariant; safecall;
    procedure _Set_Target(pRetVal: OleVariant); safecall;
    procedure SetSender(Sender: OleVariant); safecall;
    procedure SetTarget(Target: OleVariant); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property CertificatesResult: _ValueResult read Get_CertificatesResult write _Set_CertificatesResult;
    property Sender: OleVariant read Get_Sender write _Set_Sender;
    property Target: OleVariant read Get_Target write _Set_Target;
  end;

// *********************************************************************//
// DispIntf:  _GetCertificatesEventArgsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {70730F6C-CA55-4ABD-99FB-4CEBE1D883D7}
// *********************************************************************//
  _GetCertificatesEventArgsDisp = dispinterface
    ['{70730F6C-CA55-4ABD-99FB-4CEBE1D883D7}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property CertificatesResult: _ValueResult dispid 1610743813;
    property Sender: OleVariant dispid 1610743815;
    property Target: OleVariant dispid 1610743817;
    procedure SetSender(Sender: OleVariant); dispid 1610743819;
    procedure SetTarget(Target: OleVariant); dispid 1610743820;
  end;

// *********************************************************************//
// Interface: _ValidateCertificateEventArgs
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AA3D3A3A-7FD1-4ADD-A540-8CA9636F2D34}
// *********************************************************************//
  _ValidateCertificateEventArgs = interface(IDispatch)
    ['{AA3D3A3A-7FD1-4ADD-A540-8CA9636F2D34}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Certificate: _PkiCertificate; safecall;
    procedure _Set_Certificate(const pRetVal: _PkiCertificate); safecall;
    function Get_Chain: _PkiChain; safecall;
    procedure _Set_Chain(const pRetVal: _PkiChain); safecall;
    function Get_ValidationResult: WordBool; safecall;
    procedure Set_ValidationResult(pRetVal: WordBool); safecall;
    function Get_Sender: OleVariant; safecall;
    procedure _Set_Sender(pRetVal: OleVariant); safecall;
    function Get_TransportPolicyErrors: TransportPolicyErrors; safecall;
    procedure Set_TransportPolicyErrors(pRetVal: TransportPolicyErrors); safecall;
    function Get_Target: OleVariant; safecall;
    procedure _Set_Target(pRetVal: OleVariant); safecall;
    procedure SetSender(Sender: OleVariant); safecall;
    procedure SetTarget(Target: OleVariant); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Certificate: _PkiCertificate read Get_Certificate write _Set_Certificate;
    property Chain: _PkiChain read Get_Chain write _Set_Chain;
    property ValidationResult: WordBool read Get_ValidationResult write Set_ValidationResult;
    property Sender: OleVariant read Get_Sender write _Set_Sender;
    property TransportPolicyErrors: TransportPolicyErrors read Get_TransportPolicyErrors write Set_TransportPolicyErrors;
    property Target: OleVariant read Get_Target write _Set_Target;
  end;

// *********************************************************************//
// DispIntf:  _ValidateCertificateEventArgsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AA3D3A3A-7FD1-4ADD-A540-8CA9636F2D34}
// *********************************************************************//
  _ValidateCertificateEventArgsDisp = dispinterface
    ['{AA3D3A3A-7FD1-4ADD-A540-8CA9636F2D34}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Certificate: _PkiCertificate dispid 1610743813;
    property Chain: _PkiChain dispid 1610743815;
    property ValidationResult: WordBool dispid 1610743817;
    property Sender: OleVariant dispid 1610743819;
    property TransportPolicyErrors: TransportPolicyErrors dispid 1610743821;
    property Target: OleVariant dispid 1610743823;
    procedure SetSender(Sender: OleVariant); dispid 1610743825;
    procedure SetTarget(Target: OleVariant); dispid 1610743826;
  end;

// *********************************************************************//
// Interface: _CertificateSecurityParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1D8A04B8-CE67-40EA-AE04-DCA56F2821DF}
// *********************************************************************//
  _CertificateSecurityParameters = interface(IDispatch)
    ['{1D8A04B8-CE67-40EA-AE04-DCA56F2821DF}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_AllowHandler: WordBool; safecall;
    procedure Set_AllowHandler(pRetVal: WordBool); safecall;
    function Get_AllowInteraction: WordBool; safecall;
    procedure Set_AllowInteraction(pRetVal: WordBool); safecall;
    function Get_AllowStatic: WordBool; safecall;
    procedure Set_AllowStatic(pRetVal: WordBool); safecall;
    function Get_StaticCertificateSecurityParameters: _StaticCertificateSecurityParameters; safecall;
    procedure _Set_StaticCertificateSecurityParameters(const pRetVal: _StaticCertificateSecurityParameters); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property AllowHandler: WordBool read Get_AllowHandler write Set_AllowHandler;
    property AllowInteraction: WordBool read Get_AllowInteraction write Set_AllowInteraction;
    property AllowStatic: WordBool read Get_AllowStatic write Set_AllowStatic;
    property StaticCertificateSecurityParameters: _StaticCertificateSecurityParameters read Get_StaticCertificateSecurityParameters write _Set_StaticCertificateSecurityParameters;
  end;

// *********************************************************************//
// DispIntf:  _CertificateSecurityParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1D8A04B8-CE67-40EA-AE04-DCA56F2821DF}
// *********************************************************************//
  _CertificateSecurityParametersDisp = dispinterface
    ['{1D8A04B8-CE67-40EA-AE04-DCA56F2821DF}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property AllowHandler: WordBool dispid 1610743816;
    property AllowInteraction: WordBool dispid 1610743818;
    property AllowStatic: WordBool dispid 1610743820;
    property StaticCertificateSecurityParameters: _StaticCertificateSecurityParameters dispid 1610743822;
  end;

// *********************************************************************//
// Interface: _StaticCertificateSecurityParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CA858C71-E5D3-467B-89D5-0D2D01C808BF}
// *********************************************************************//
  _StaticCertificateSecurityParameters = interface(IDispatch)
    ['{CA858C71-E5D3-467B-89D5-0D2D01C808BF}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_LocalCertificateQueries: _CertificateQueryCollection; safecall;
    procedure _Set_LocalCertificateQueries(const pRetVal: _CertificateQueryCollection); safecall;
    function Get_RemoteCertificateAcceptancePolicy: _CertificateAcceptancePolicy; safecall;
    procedure _Set_RemoteCertificateAcceptancePolicy(const pRetVal: _CertificateAcceptancePolicy); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property LocalCertificateQueries: _CertificateQueryCollection read Get_LocalCertificateQueries write _Set_LocalCertificateQueries;
    property RemoteCertificateAcceptancePolicy: _CertificateAcceptancePolicy read Get_RemoteCertificateAcceptancePolicy write _Set_RemoteCertificateAcceptancePolicy;
  end;

// *********************************************************************//
// DispIntf:  _StaticCertificateSecurityParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CA858C71-E5D3-467B-89D5-0D2D01C808BF}
// *********************************************************************//
  _StaticCertificateSecurityParametersDisp = dispinterface
    ['{CA858C71-E5D3-467B-89D5-0D2D01C808BF}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property LocalCertificateQueries: _CertificateQueryCollection dispid 1610743816;
    property RemoteCertificateAcceptancePolicy: _CertificateAcceptancePolicy dispid 1610743818;
  end;

// *********************************************************************//
// Interface: _SecurityKeysInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EAED7EE6-7CB6-43D5-BF8B-D5EB2DF50CA5}
// *********************************************************************//
  _SecurityKeysInfo = interface(IDispatch)
    ['{EAED7EE6-7CB6-43D5-BF8B-D5EB2DF50CA5}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_FirstTokenId: Int64; safecall;
    procedure Set_FirstTokenId(pRetVal: Int64); safecall;
    function Get_FirstTokenIdDecimal: TDecimal; safecall;
    procedure Set_FirstTokenIdDecimal(pRetVal: TDecimal); safecall;
    function Get_FirstTokenIdDouble: Double; safecall;
    procedure Set_FirstTokenIdDouble(pRetVal: Double); safecall;
    function Get_KeyLifetime: Double; safecall;
    procedure Set_KeyLifetime(pRetVal: Double); safecall;
    function Get_Keys: PSafeArray; safecall;
    procedure Set_Keys(pRetVal: PSafeArray); safecall;
    function Get_SecurityPolicyUriString: WideString; safecall;
    procedure Set_SecurityPolicyUriString(const pRetVal: WideString); safecall;
    function Get_TimeToNextKey: Double; safecall;
    procedure Set_TimeToNextKey(pRetVal: Double); safecall;
    procedure SetKeys(var Keys: PSafeArray); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property FirstTokenId: Int64 read Get_FirstTokenId write Set_FirstTokenId;
    property FirstTokenIdDecimal: TDecimal read Get_FirstTokenIdDecimal write Set_FirstTokenIdDecimal;
    property FirstTokenIdDouble: Double read Get_FirstTokenIdDouble write Set_FirstTokenIdDouble;
    property KeyLifetime: Double read Get_KeyLifetime write Set_KeyLifetime;
    property Keys: PSafeArray read Get_Keys write Set_Keys;
    property SecurityPolicyUriString: WideString read Get_SecurityPolicyUriString write Set_SecurityPolicyUriString;
    property TimeToNextKey: Double read Get_TimeToNextKey write Set_TimeToNextKey;
  end;

// *********************************************************************//
// DispIntf:  _SecurityKeysInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EAED7EE6-7CB6-43D5-BF8B-D5EB2DF50CA5}
// *********************************************************************//
  _SecurityKeysInfoDisp = dispinterface
    ['{EAED7EE6-7CB6-43D5-BF8B-D5EB2DF50CA5}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property FirstTokenId: Int64 dispid 1610743814;
    property FirstTokenIdDecimal: {NOT_OLEAUTO(TDecimal)}OleVariant dispid 1610743816;
    property FirstTokenIdDouble: Double dispid 1610743818;
    property KeyLifetime: Double dispid 1610743820;
    property Keys: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743822;
    property SecurityPolicyUriString: WideString dispid 1610743824;
    property TimeToNextKey: Double dispid 1610743826;
    procedure SetKeys(var Keys: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743828;
  end;

// *********************************************************************//
// Interface: _SecurityGroupElement
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2B0310F1-2E75-40AA-A921-C77C40E8A990}
// *********************************************************************//
  _SecurityGroupElement = interface(IDispatch)
    ['{2B0310F1-2E75-40AA-A921-C77C40E8A990}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_KeyLifetime: Double; safecall;
    procedure Set_KeyLifetime(pRetVal: Double); safecall;
    function Get_MaximumFutureKeyCount: Int64; safecall;
    procedure Set_MaximumFutureKeyCount(pRetVal: Int64); safecall;
    function Get_MaximumFutureKeyCountDecimal: TDecimal; safecall;
    procedure Set_MaximumFutureKeyCountDecimal(pRetVal: TDecimal); safecall;
    function Get_MaximumFutureKeyCountDouble: Double; safecall;
    procedure Set_MaximumFutureKeyCountDouble(pRetVal: Double); safecall;
    function Get_MaximumPastKeyCount: Int64; safecall;
    procedure Set_MaximumPastKeyCount(pRetVal: Int64); safecall;
    function Get_MaximumPastKeyCountDecimal: TDecimal; safecall;
    procedure Set_MaximumPastKeyCountDecimal(pRetVal: TDecimal); safecall;
    function Get_MaximumPastKeyCountDouble: Double; safecall;
    procedure Set_MaximumPastKeyCountDouble(pRetVal: Double); safecall;
    function Get_SecurityGroupId: WideString; safecall;
    procedure Set_SecurityGroupId(const pRetVal: WideString); safecall;
    function Get_SecurityPolicyUriString: WideString; safecall;
    procedure Set_SecurityPolicyUriString(const pRetVal: WideString); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property KeyLifetime: Double read Get_KeyLifetime write Set_KeyLifetime;
    property MaximumFutureKeyCount: Int64 read Get_MaximumFutureKeyCount write Set_MaximumFutureKeyCount;
    property MaximumFutureKeyCountDecimal: TDecimal read Get_MaximumFutureKeyCountDecimal write Set_MaximumFutureKeyCountDecimal;
    property MaximumFutureKeyCountDouble: Double read Get_MaximumFutureKeyCountDouble write Set_MaximumFutureKeyCountDouble;
    property MaximumPastKeyCount: Int64 read Get_MaximumPastKeyCount write Set_MaximumPastKeyCount;
    property MaximumPastKeyCountDecimal: TDecimal read Get_MaximumPastKeyCountDecimal write Set_MaximumPastKeyCountDecimal;
    property MaximumPastKeyCountDouble: Double read Get_MaximumPastKeyCountDouble write Set_MaximumPastKeyCountDouble;
    property SecurityGroupId: WideString read Get_SecurityGroupId write Set_SecurityGroupId;
    property SecurityPolicyUriString: WideString read Get_SecurityPolicyUriString write Set_SecurityPolicyUriString;
  end;

// *********************************************************************//
// DispIntf:  _SecurityGroupElementDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2B0310F1-2E75-40AA-A921-C77C40E8A990}
// *********************************************************************//
  _SecurityGroupElementDisp = dispinterface
    ['{2B0310F1-2E75-40AA-A921-C77C40E8A990}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property KeyLifetime: Double dispid 1610743814;
    property MaximumFutureKeyCount: Int64 dispid 1610743816;
    property MaximumFutureKeyCountDecimal: {NOT_OLEAUTO(TDecimal)}OleVariant dispid 1610743818;
    property MaximumFutureKeyCountDouble: Double dispid 1610743820;
    property MaximumPastKeyCount: Int64 dispid 1610743822;
    property MaximumPastKeyCountDecimal: {NOT_OLEAUTO(TDecimal)}OleVariant dispid 1610743824;
    property MaximumPastKeyCountDouble: Double dispid 1610743826;
    property SecurityGroupId: WideString dispid 1610743828;
    property SecurityPolicyUriString: WideString dispid 1610743830;
  end;

// *********************************************************************//
// Interface: _ManagedSecurityGroupParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AEEB83E3-6DBC-492C-BAEC-63F24F3B423C}
// *********************************************************************//
  _ManagedSecurityGroupParameters = interface(IDispatch)
    ['{AEEB83E3-6DBC-492C-BAEC-63F24F3B423C}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_EstimatedGetSecurityKeysTime: Double; safecall;
    procedure Set_EstimatedGetSecurityKeysTime(pRetVal: Double); safecall;
    function Get_FailureRetrialDelay: Double; safecall;
    procedure Set_FailureRetrialDelay(pRetVal: Double); safecall;
    function Get_InitialRequestedKeyCount: Int64; safecall;
    procedure Set_InitialRequestedKeyCount(pRetVal: Int64); safecall;
    function Get_InitialRequestedKeyCountDecimal: TDecimal; safecall;
    procedure Set_InitialRequestedKeyCountDecimal(pRetVal: TDecimal); safecall;
    function Get_InitialRequestedKeyCountDouble: Double; safecall;
    procedure Set_InitialRequestedKeyCountDouble(pRetVal: Double); safecall;
    function Get_IsEmpty: WordBool; safecall;
    function Get_MaximumRequestedKeyCount: Int64; safecall;
    procedure Set_MaximumRequestedKeyCount(pRetVal: Int64); safecall;
    function Get_MaximumRequestedKeyCountDecimal: TDecimal; safecall;
    procedure Set_MaximumRequestedKeyCountDecimal(pRetVal: TDecimal); safecall;
    function Get_MaximumRequestedKeyCountDouble: Double; safecall;
    procedure Set_MaximumRequestedKeyCountDouble(pRetVal: Double); safecall;
    function Get_MinimumDelayBetweenGetSecurityKeys: Double; safecall;
    procedure Set_MinimumDelayBetweenGetSecurityKeys(pRetVal: Double); safecall;
    function Get_MinimumFutureKeyReserveTime: Double; safecall;
    procedure Set_MinimumFutureKeyReserveTime(pRetVal: Double); safecall;
    function Get_MinimumPastKeyReserveTime: Double; safecall;
    procedure Set_MinimumPastKeyReserveTime(pRetVal: Double); safecall;
    function Get_RefetchCurrentKeysFactorOfKeyLifetime: Single; safecall;
    procedure Set_RefetchCurrentKeysFactorOfKeyLifetime(pRetVal: Single); safecall;
    function Get_RequestedFutureKeyReserveTime: Double; safecall;
    procedure Set_RequestedFutureKeyReserveTime(pRetVal: Double); safecall;
    function Get_RequestedPastKeyReserveTime: Double; safecall;
    procedure Set_RequestedPastKeyReserveTime(pRetVal: Double); safecall;
    procedure UnionWith(other: OleVariant); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property EstimatedGetSecurityKeysTime: Double read Get_EstimatedGetSecurityKeysTime write Set_EstimatedGetSecurityKeysTime;
    property FailureRetrialDelay: Double read Get_FailureRetrialDelay write Set_FailureRetrialDelay;
    property InitialRequestedKeyCount: Int64 read Get_InitialRequestedKeyCount write Set_InitialRequestedKeyCount;
    property InitialRequestedKeyCountDecimal: TDecimal read Get_InitialRequestedKeyCountDecimal write Set_InitialRequestedKeyCountDecimal;
    property InitialRequestedKeyCountDouble: Double read Get_InitialRequestedKeyCountDouble write Set_InitialRequestedKeyCountDouble;
    property IsEmpty: WordBool read Get_IsEmpty;
    property MaximumRequestedKeyCount: Int64 read Get_MaximumRequestedKeyCount write Set_MaximumRequestedKeyCount;
    property MaximumRequestedKeyCountDecimal: TDecimal read Get_MaximumRequestedKeyCountDecimal write Set_MaximumRequestedKeyCountDecimal;
    property MaximumRequestedKeyCountDouble: Double read Get_MaximumRequestedKeyCountDouble write Set_MaximumRequestedKeyCountDouble;
    property MinimumDelayBetweenGetSecurityKeys: Double read Get_MinimumDelayBetweenGetSecurityKeys write Set_MinimumDelayBetweenGetSecurityKeys;
    property MinimumFutureKeyReserveTime: Double read Get_MinimumFutureKeyReserveTime write Set_MinimumFutureKeyReserveTime;
    property MinimumPastKeyReserveTime: Double read Get_MinimumPastKeyReserveTime write Set_MinimumPastKeyReserveTime;
    property RefetchCurrentKeysFactorOfKeyLifetime: Single read Get_RefetchCurrentKeysFactorOfKeyLifetime write Set_RefetchCurrentKeysFactorOfKeyLifetime;
    property RequestedFutureKeyReserveTime: Double read Get_RequestedFutureKeyReserveTime write Set_RequestedFutureKeyReserveTime;
    property RequestedPastKeyReserveTime: Double read Get_RequestedPastKeyReserveTime write Set_RequestedPastKeyReserveTime;
  end;

// *********************************************************************//
// DispIntf:  _ManagedSecurityGroupParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AEEB83E3-6DBC-492C-BAEC-63F24F3B423C}
// *********************************************************************//
  _ManagedSecurityGroupParametersDisp = dispinterface
    ['{AEEB83E3-6DBC-492C-BAEC-63F24F3B423C}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property EstimatedGetSecurityKeysTime: Double dispid 1610743816;
    property FailureRetrialDelay: Double dispid 1610743818;
    property InitialRequestedKeyCount: Int64 dispid 1610743820;
    property InitialRequestedKeyCountDecimal: {NOT_OLEAUTO(TDecimal)}OleVariant dispid 1610743822;
    property InitialRequestedKeyCountDouble: Double dispid 1610743824;
    property IsEmpty: WordBool readonly dispid 1610743826;
    property MaximumRequestedKeyCount: Int64 dispid 1610743827;
    property MaximumRequestedKeyCountDecimal: {NOT_OLEAUTO(TDecimal)}OleVariant dispid 1610743829;
    property MaximumRequestedKeyCountDouble: Double dispid 1610743831;
    property MinimumDelayBetweenGetSecurityKeys: Double dispid 1610743833;
    property MinimumFutureKeyReserveTime: Double dispid 1610743835;
    property MinimumPastKeyReserveTime: Double dispid 1610743837;
    property RefetchCurrentKeysFactorOfKeyLifetime: Single dispid 1610743839;
    property RequestedFutureKeyReserveTime: Double dispid 1610743841;
    property RequestedPastKeyReserveTime: Double dispid 1610743843;
    procedure UnionWith(other: OleVariant); dispid 1610743845;
  end;

// *********************************************************************//
// Interface: _CertificateSecurityHandler
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EC04FA58-853A-4BD4-834E-BCF5EF1B67B4}
// *********************************************************************//
  _CertificateSecurityHandler = interface(IDispatch)
    ['{EC04FA58-853A-4BD4-834E-BCF5EF1B67B4}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
  end;

// *********************************************************************//
// DispIntf:  _CertificateSecurityHandlerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EC04FA58-853A-4BD4-834E-BCF5EF1B67B4}
// *********************************************************************//
  _CertificateSecurityHandlerDisp = dispinterface
    ['{EC04FA58-853A-4BD4-834E-BCF5EF1B67B4}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
  end;

// *********************************************************************//
// Interface: _PkiCertificate
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8FAC7537-4531-465B-A382-BAD55E3F728E}
// *********************************************************************//
  _PkiCertificate = interface(IDispatch)
    ['{8FAC7537-4531-465B-A382-BAD55E3F728E}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Archived: WordBool; safecall;
    procedure Set_Archived(pRetVal: WordBool); safecall;
    function Get_FriendlyName: WideString; safecall;
    procedure Set_FriendlyName(const pRetVal: WideString); safecall;
    function Get_HasPrivateKey: WordBool; safecall;
    function Get_Issuer: WideString; safecall;
    function Get_NotAfter: TDateTime; safecall;
    function Get_NotBefore: TDateTime; safecall;
    function Get_PrivateKey: _AsymmetricAlgorithm; safecall;
    procedure _Set_PrivateKey(const pRetVal: _AsymmetricAlgorithm); safecall;
    function Get_RawData: PSafeArray; safecall;
    function Get_SerialNumber: WideString; safecall;
    function Get_Subject: WideString; safecall;
    function Get_Thumbprint: WideString; safecall;
    function Get_Version: Integer; safecall;
    function Export(contentType: X509ContentType; const password: WideString): PSafeArray; safecall;
    function GetCertHash: PSafeArray; safecall;
    function GetCertHashString: WideString; safecall;
    function GetEffectiveDateString: WideString; safecall;
    function GetExpirationDateString: WideString; safecall;
    function GetFormat: WideString; safecall;
    function GetIssuerName: WideString; safecall;
    function GetKeyAlgorithm: WideString; safecall;
    function GetKeyAlgorithmParameters: PSafeArray; safecall;
    function GetKeyAlgorithmParametersString: WideString; safecall;
    function GetName: WideString; safecall;
    function GetPublicKey: PSafeArray; safecall;
    function GetPublicKeyString: WideString; safecall;
    function GetRawCertData: PSafeArray; safecall;
    function GetRawCertDataString: WideString; safecall;
    function GetSerialNumberByteArray: PSafeArray; safecall;
    function GetSerialNumberString: WideString; safecall;
    procedure Import(var RawData: OleVariant; const password: WideString; 
                     keyStorageFlags: X509KeyStorageFlags); safecall;
    procedure Reset; safecall;
    function Verify: WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Archived: WordBool read Get_Archived write Set_Archived;
    property FriendlyName: WideString read Get_FriendlyName write Set_FriendlyName;
    property HasPrivateKey: WordBool read Get_HasPrivateKey;
    property Issuer: WideString read Get_Issuer;
    property NotAfter: TDateTime read Get_NotAfter;
    property NotBefore: TDateTime read Get_NotBefore;
    property PrivateKey: _AsymmetricAlgorithm read Get_PrivateKey write _Set_PrivateKey;
    property RawData: PSafeArray read Get_RawData;
    property SerialNumber: WideString read Get_SerialNumber;
    property Subject: WideString read Get_Subject;
    property Thumbprint: WideString read Get_Thumbprint;
    property Version: Integer read Get_Version;
  end;

// *********************************************************************//
// DispIntf:  _PkiCertificateDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8FAC7537-4531-465B-A382-BAD55E3F728E}
// *********************************************************************//
  _PkiCertificateDisp = dispinterface
    ['{8FAC7537-4531-465B-A382-BAD55E3F728E}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Archived: WordBool dispid 1610743813;
    property FriendlyName: WideString dispid 1610743815;
    property HasPrivateKey: WordBool readonly dispid 1610743817;
    property Issuer: WideString readonly dispid 1610743818;
    property NotAfter: TDateTime readonly dispid 1610743819;
    property NotBefore: TDateTime readonly dispid 1610743820;
    property PrivateKey: _AsymmetricAlgorithm dispid 1610743821;
    property RawData: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743823;
    property SerialNumber: WideString readonly dispid 1610743824;
    property Subject: WideString readonly dispid 1610743825;
    property Thumbprint: WideString readonly dispid 1610743826;
    property Version: Integer readonly dispid 1610743827;
    function Export(contentType: X509ContentType; const password: WideString): {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743828;
    function GetCertHash: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743829;
    function GetCertHashString: WideString; dispid 1610743830;
    function GetEffectiveDateString: WideString; dispid 1610743831;
    function GetExpirationDateString: WideString; dispid 1610743832;
    function GetFormat: WideString; dispid 1610743833;
    function GetIssuerName: WideString; dispid 1610743834;
    function GetKeyAlgorithm: WideString; dispid 1610743835;
    function GetKeyAlgorithmParameters: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743836;
    function GetKeyAlgorithmParametersString: WideString; dispid 1610743837;
    function GetName: WideString; dispid 1610743838;
    function GetPublicKey: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743839;
    function GetPublicKeyString: WideString; dispid 1610743840;
    function GetRawCertData: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743841;
    function GetRawCertDataString: WideString; dispid 1610743842;
    function GetSerialNumberByteArray: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743843;
    function GetSerialNumberString: WideString; dispid 1610743844;
    procedure Import(var RawData: OleVariant; const password: WideString; 
                     keyStorageFlags: X509KeyStorageFlags); dispid 1610743845;
    procedure Reset; dispid 1610743846;
    function Verify: WordBool; dispid 1610743847;
  end;

// *********************************************************************//
// Interface: _PkiCertificateCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {802684EB-849B-463E-AA2A-586139AF2B20}
// *********************************************************************//
  _PkiCertificateCollection = interface(IDispatch)
    ['{802684EB-849B-463E-AA2A-586139AF2B20}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(index: Integer): IUnknown; safecall;
    procedure _Set_Item(index: Integer; const pRetVal: IUnknown); safecall;
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
    property Item[index: Integer]: IUnknown read Get_Item write _Set_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _PkiCertificateCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {802684EB-849B-463E-AA2A-586139AF2B20}
// *********************************************************************//
  _PkiCertificateCollectionDisp = dispinterface
    ['{802684EB-849B-463E-AA2A-586139AF2B20}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[index: Integer]: IUnknown dispid 0; default;
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
// Interface: _PkiChain
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D6A0D353-D34C-44EC-8C8C-3F61ABB1125D}
// *********************************************************************//
  _PkiChain = interface(IDispatch)
    ['{D6A0D353-D34C-44EC-8C8C-3F61ABB1125D}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
  end;

// *********************************************************************//
// DispIntf:  _PkiChainDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D6A0D353-D34C-44EC-8C8C-3F61ABB1125D}
// *********************************************************************//
  _PkiChainDisp = dispinterface
    ['{D6A0D353-D34C-44EC-8C8C-3F61ABB1125D}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
  end;

// *********************************************************************//
// Interface: _PkiCrlCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A1F74C36-DDF7-41B8-B7B0-E76EED953F49}
// *********************************************************************//
  _PkiCrlCollection = interface(IDispatch)
    ['{A1F74C36-DDF7-41B8-B7B0-E76EED953F49}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(index: Integer): IUnknown; safecall;
    procedure _Set_Item(index: Integer; const pRetVal: IUnknown); safecall;
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
    property Item[index: Integer]: IUnknown read Get_Item write _Set_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _PkiCrlCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A1F74C36-DDF7-41B8-B7B0-E76EED953F49}
// *********************************************************************//
  _PkiCrlCollectionDisp = dispinterface
    ['{A1F74C36-DDF7-41B8-B7B0-E76EED953F49}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[index: Integer]: IUnknown dispid 0; default;
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
// Interface: _PkiCrlEntryCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5B6157DC-AEDF-43F4-9CB1-4F3F74344091}
// *********************************************************************//
  _PkiCrlEntryCollection = interface(IDispatch)
    ['{5B6157DC-AEDF-43F4-9CB1-4F3F74344091}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(index: Integer): IUnknown; safecall;
    procedure _Set_Item(index: Integer; const pRetVal: IUnknown); safecall;
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
    property Item[index: Integer]: IUnknown read Get_Item write _Set_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _PkiCrlEntryCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5B6157DC-AEDF-43F4-9CB1-4F3F74344091}
// *********************************************************************//
  _PkiCrlEntryCollectionDisp = dispinterface
    ['{5B6157DC-AEDF-43F4-9CB1-4F3F74344091}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[index: Integer]: IUnknown dispid 0; default;
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
// Interface: _PkiCrlEntry
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {080CAAFC-5482-4EFC-BBF6-D414859BBEEC}
// *********************************************************************//
  _PkiCrlEntry = interface(IDispatch)
    ['{080CAAFC-5482-4EFC-BBF6-D414859BBEEC}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_CertificateIssuer: WideString; safecall;
    function Get_RevocationDate: TDateTime; safecall;
    function Get_SerialNumber: WideString; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property CertificateIssuer: WideString read Get_CertificateIssuer;
    property RevocationDate: TDateTime read Get_RevocationDate;
    property SerialNumber: WideString read Get_SerialNumber;
  end;

// *********************************************************************//
// DispIntf:  _PkiCrlEntryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {080CAAFC-5482-4EFC-BBF6-D414859BBEEC}
// *********************************************************************//
  _PkiCrlEntryDisp = dispinterface
    ['{080CAAFC-5482-4EFC-BBF6-D414859BBEEC}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property CertificateIssuer: WideString readonly dispid 1610743813;
    property RevocationDate: TDateTime readonly dispid 1610743814;
    property SerialNumber: WideString readonly dispid 1610743815;
  end;

// *********************************************************************//
// DispIntf:  DCertificateSecurityHandlerEvents
// Flags:     (4096) Dispatchable
// GUID:      {F3970F18-8AA2-48F0-A38E-3D39F51FFF75}
// *********************************************************************//
  DCertificateSecurityHandlerEvents = dispinterface
    ['{F3970F18-8AA2-48F0-A38E-3D39F51FFF75}']
    procedure GetLocalCertificates(sender0: OleVariant; const eventArgs: _GetCertificatesEventArgs); dispid 1001;
    procedure ValidateRemoteCertificate(sender0: OleVariant; 
                                        const eventArgs: _ValidateCertificateEventArgs); dispid 1003;
  end;

// *********************************************************************//
// Interface: _CommunicationSecurityRanking
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4221B798-BA7B-419F-BDA3-47B8DEFDC9C7}
// *********************************************************************//
  _CommunicationSecurityRanking = interface(IDispatch)
    ['{4221B798-BA7B-419F-BDA3-47B8DEFDC9C7}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_Authentication: Sign; safecall;
    procedure Set_Authentication(pRetVal: Sign); safecall;
    function Get_Confidentiality: Sign; safecall;
    procedure Set_Confidentiality(pRetVal: Sign); safecall;
    function Get_Integrity: Sign; safecall;
    procedure Set_Integrity(pRetVal: Sign); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Authentication: Sign read Get_Authentication write Set_Authentication;
    property Confidentiality: Sign read Get_Confidentiality write Set_Confidentiality;
    property Integrity: Sign read Get_Integrity write Set_Integrity;
  end;

// *********************************************************************//
// DispIntf:  _CommunicationSecurityRankingDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4221B798-BA7B-419F-BDA3-47B8DEFDC9C7}
// *********************************************************************//
  _CommunicationSecurityRankingDisp = dispinterface
    ['{4221B798-BA7B-419F-BDA3-47B8DEFDC9C7}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property Authentication: Sign dispid 1610743814;
    property Confidentiality: Sign dispid 1610743816;
    property Integrity: Sign dispid 1610743818;
  end;

// *********************************************************************//
// Interface: _ComConfiguration
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A259E8FA-56F4-4A70-8B5C-4513F96DA26A}
// *********************************************************************//
  _ComConfiguration = interface(IDispatch)
    ['{A259E8FA-56F4-4A70-8B5C-4513F96DA26A}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_InstantiationParameters: _ComInstantiationParameters; safecall;
    procedure _Set_InstantiationParameters(const pRetVal: _ComInstantiationParameters); safecall;
    function Get_SecurityParameters: _ComSecurityParameters; safecall;
    procedure _Set_SecurityParameters(const pRetVal: _ComSecurityParameters); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property InstantiationParameters: _ComInstantiationParameters read Get_InstantiationParameters write _Set_InstantiationParameters;
    property SecurityParameters: _ComSecurityParameters read Get_SecurityParameters write _Set_SecurityParameters;
  end;

// *********************************************************************//
// DispIntf:  _ComConfigurationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A259E8FA-56F4-4A70-8B5C-4513F96DA26A}
// *********************************************************************//
  _ComConfigurationDisp = dispinterface
    ['{A259E8FA-56F4-4A70-8B5C-4513F96DA26A}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property InstantiationParameters: _ComInstantiationParameters dispid 1610743816;
    property SecurityParameters: _ComSecurityParameters dispid 1610743818;
  end;

// *********************************************************************//
// Interface: _ComInstantiationParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D45D093E-9E6C-4D07-8695-46C96A5D1914}
// *********************************************************************//
  _ComInstantiationParameters = interface(IDispatch)
    ['{D45D093E-9E6C-4D07-8695-46C96A5D1914}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_ExecutionContext: Integer; safecall;
    procedure Set_ExecutionContext(pRetVal: Integer); safecall;
    function Get_OverrideDefaultSecurity: WordBool; safecall;
    procedure Set_OverrideDefaultSecurity(pRetVal: WordBool); safecall;
    function Get_TurnOffActivationSecurity: WordBool; safecall;
    procedure Set_TurnOffActivationSecurity(pRetVal: WordBool); safecall;
    function OverrideBy(other: OleVariant): _ComInstantiationParameters; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property ExecutionContext: Integer read Get_ExecutionContext write Set_ExecutionContext;
    property OverrideDefaultSecurity: WordBool read Get_OverrideDefaultSecurity write Set_OverrideDefaultSecurity;
    property TurnOffActivationSecurity: WordBool read Get_TurnOffActivationSecurity write Set_TurnOffActivationSecurity;
  end;

// *********************************************************************//
// DispIntf:  _ComInstantiationParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D45D093E-9E6C-4D07-8695-46C96A5D1914}
// *********************************************************************//
  _ComInstantiationParametersDisp = dispinterface
    ['{D45D093E-9E6C-4D07-8695-46C96A5D1914}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property ExecutionContext: Integer dispid 1610743816;
    property OverrideDefaultSecurity: WordBool dispid 1610743818;
    property TurnOffActivationSecurity: WordBool dispid 1610743820;
    function OverrideBy(other: OleVariant): _ComInstantiationParameters; dispid 1610743822;
  end;

// *********************************************************************//
// Interface: _ComManagement
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {800FE3F9-8430-446D-BA8B-849E35824CA2}
// *********************************************************************//
  _ComManagement = interface(IDispatch)
    ['{800FE3F9-8430-446D-BA8B-849E35824CA2}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_AppId: TGUID; safecall;
    procedure Set_AppId(pRetVal: TGUID); safecall;
    function Get_AppIdString: WideString; safecall;
    procedure Set_AppIdString(const pRetVal: WideString); safecall;
    function Get_Configuration: _ComConfiguration; safecall;
    procedure _Set_Configuration(const pRetVal: _ComConfiguration); safecall;
    function Get_LogToSystem: WordBool; safecall;
    procedure Set_LogToSystem(pRetVal: WordBool); safecall;
    function Get_SecurityInitializationException: _Exception; safecall;
    function Get_SecurityInitializationObject: OleVariant; safecall;
    function Get_SecurityInitializationStatusInfo: StatusInfo; safecall;
    function AssureSecurityInitialization: _ValueResult; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property AppId: TGUID read Get_AppId write Set_AppId;
    property AppIdString: WideString read Get_AppIdString write Set_AppIdString;
    property Configuration: _ComConfiguration read Get_Configuration write _Set_Configuration;
    property LogToSystem: WordBool read Get_LogToSystem write Set_LogToSystem;
    property SecurityInitializationException: _Exception read Get_SecurityInitializationException;
    property SecurityInitializationObject: OleVariant read Get_SecurityInitializationObject;
    property SecurityInitializationStatusInfo: StatusInfo read Get_SecurityInitializationStatusInfo;
  end;

// *********************************************************************//
// DispIntf:  _ComManagementDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {800FE3F9-8430-446D-BA8B-849E35824CA2}
// *********************************************************************//
  _ComManagementDisp = dispinterface
    ['{800FE3F9-8430-446D-BA8B-849E35824CA2}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property AppId: {NOT_OLEAUTO(TGUID)}OleVariant dispid 1610743814;
    property AppIdString: WideString dispid 1610743816;
    property Configuration: _ComConfiguration dispid 1610743818;
    property LogToSystem: WordBool dispid 1610743820;
    property SecurityInitializationException: _Exception readonly dispid 1610743822;
    property SecurityInitializationObject: OleVariant readonly dispid 1610743823;
    property SecurityInitializationStatusInfo: StatusInfo readonly dispid 1610743824;
    function AssureSecurityInitialization: _ValueResult; dispid 1610743825;
  end;

// *********************************************************************//
// Interface: _ComSecurityParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C2FAB0E6-A41E-4EA5-B693-513991E679F2}
// *********************************************************************//
  _ComSecurityParameters = interface(IDispatch)
    ['{C2FAB0E6-A41E-4EA5-B693-513991E679F2}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_AccessFromThreadToken: WordBool; safecall;
    procedure Set_AccessFromThreadToken(pRetVal: WordBool); safecall;
    function Get_AllowImpersonateClient: WordBool; safecall;
    procedure Set_AllowImpersonateClient(pRetVal: WordBool); safecall;
    function Get_EnsureDataIntegrity: WordBool; safecall;
    procedure Set_EnsureDataIntegrity(pRetVal: WordBool); safecall;
    function Get_TurnOffCallSecurity: WordBool; safecall;
    procedure Set_TurnOffCallSecurity(pRetVal: WordBool); safecall;
    function Get_UseCustomSecurity: WordBool; safecall;
    procedure Set_UseCustomSecurity(pRetVal: WordBool); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property AccessFromThreadToken: WordBool read Get_AccessFromThreadToken write Set_AccessFromThreadToken;
    property AllowImpersonateClient: WordBool read Get_AllowImpersonateClient write Set_AllowImpersonateClient;
    property EnsureDataIntegrity: WordBool read Get_EnsureDataIntegrity write Set_EnsureDataIntegrity;
    property TurnOffCallSecurity: WordBool read Get_TurnOffCallSecurity write Set_TurnOffCallSecurity;
    property UseCustomSecurity: WordBool read Get_UseCustomSecurity write Set_UseCustomSecurity;
  end;

// *********************************************************************//
// DispIntf:  _ComSecurityParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C2FAB0E6-A41E-4EA5-B693-513991E679F2}
// *********************************************************************//
  _ComSecurityParametersDisp = dispinterface
    ['{C2FAB0E6-A41E-4EA5-B693-513991E679F2}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property AccessFromThreadToken: WordBool dispid 1610743816;
    property AllowImpersonateClient: WordBool dispid 1610743818;
    property EnsureDataIntegrity: WordBool dispid 1610743820;
    property TurnOffCallSecurity: WordBool dispid 1610743822;
    property UseCustomSecurity: WordBool dispid 1610743824;
  end;

// *********************************************************************//
// Interface: _ExtendedCOMException
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A8DB7EC9-9C40-4955-9ABF-7740A4FB23E4}
// *********************************************************************//
  _ExtendedCOMException = interface(IDispatch)
    ['{A8DB7EC9-9C40-4955-9ABF-7740A4FB23E4}']
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
    procedure GetObjectData(const Info: _SerializationInfo; context: StreamingContext); safecall;
    function Get_ErrorId: WideString; safecall;
    function Get_Data: _Dictionary; safecall;
    function Get_ErrorCode: Integer; safecall;
    function Get_HResult: Integer; safecall;
    function Get_QualifiedName: _XmlQualifiedName2; safecall;
    procedure _Set_QualifiedName(const pRetVal: _XmlQualifiedName2); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Message: WideString read Get_Message;
    property StackTrace: WideString read Get_StackTrace;
    property HelpLink: WideString read Get_HelpLink write Set_HelpLink;
    property Source: WideString read Get_Source write Set_Source;
    property InnerException: _Exception read Get_InnerException;
    property TargetSite: _MethodBase read Get_TargetSite;
    property ErrorId: WideString read Get_ErrorId;
    property Data: _Dictionary read Get_Data;
    property ErrorCode: Integer read Get_ErrorCode;
    property HResult: Integer read Get_HResult;
    property QualifiedName: _XmlQualifiedName2 read Get_QualifiedName write _Set_QualifiedName;
  end;

// *********************************************************************//
// DispIntf:  _ExtendedCOMExceptionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A8DB7EC9-9C40-4955-9ABF-7740A4FB23E4}
// *********************************************************************//
  _ExtendedCOMExceptionDisp = dispinterface
    ['{A8DB7EC9-9C40-4955-9ABF-7740A4FB23E4}']
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
    procedure GetObjectData(const Info: _SerializationInfo; 
                            context: {NOT_OLEAUTO(StreamingContext)}OleVariant); dispid 1610743822;
    property ErrorId: WideString readonly dispid 1610743823;
    property Data: _Dictionary readonly dispid 1610743824;
    property ErrorCode: Integer readonly dispid 1610743825;
    property HResult: Integer readonly dispid 1610743826;
    property QualifiedName: _XmlQualifiedName2 dispid 1610743827;
  end;

// *********************************************************************//
// Interface: _SimulatedCOMException
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6AAA5689-66D6-49F3-BF1B-3E24AFDBFF65}
// *********************************************************************//
  _SimulatedCOMException = interface(IDispatch)
    ['{6AAA5689-66D6-49F3-BF1B-3E24AFDBFF65}']
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
    procedure GetObjectData(const Info: _SerializationInfo; context: StreamingContext); safecall;
    function Get_Data: _Dictionary; safecall;
    function Get_ErrorCode: Integer; safecall;
    function Get_HResult: Integer; safecall;
    function Get_ErrorId: WideString; safecall;
    function Get_QualifiedName: _XmlQualifiedName2; safecall;
    procedure _Set_QualifiedName(const pRetVal: _XmlQualifiedName2); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Message: WideString read Get_Message;
    property StackTrace: WideString read Get_StackTrace;
    property HelpLink: WideString read Get_HelpLink write Set_HelpLink;
    property Source: WideString read Get_Source write Set_Source;
    property InnerException: _Exception read Get_InnerException;
    property TargetSite: _MethodBase read Get_TargetSite;
    property Data: _Dictionary read Get_Data;
    property ErrorCode: Integer read Get_ErrorCode;
    property HResult: Integer read Get_HResult;
    property ErrorId: WideString read Get_ErrorId;
    property QualifiedName: _XmlQualifiedName2 read Get_QualifiedName write _Set_QualifiedName;
  end;

// *********************************************************************//
// DispIntf:  _SimulatedCOMExceptionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6AAA5689-66D6-49F3-BF1B-3E24AFDBFF65}
// *********************************************************************//
  _SimulatedCOMExceptionDisp = dispinterface
    ['{6AAA5689-66D6-49F3-BF1B-3E24AFDBFF65}']
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
    procedure GetObjectData(const Info: _SerializationInfo; 
                            context: {NOT_OLEAUTO(StreamingContext)}OleVariant); dispid 1610743822;
    property Data: _Dictionary readonly dispid 1610743823;
    property ErrorCode: Integer readonly dispid 1610743824;
    property HResult: Integer readonly dispid 1610743825;
    property ErrorId: WideString readonly dispid 1610743826;
    property QualifiedName: _XmlQualifiedName2 dispid 1610743827;
  end;

// *********************************************************************//
// Interface: _OperationArguments
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EEE67FFB-A7B3-43C3-8BD9-47F2805C529A}
// *********************************************************************//
  _OperationArguments = interface(IDispatch)
    ['{EEE67FFB-A7B3-43C3-8BD9-47F2805C529A}']
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
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property State: OleVariant read Get_State write _Set_State;
  end;

// *********************************************************************//
// DispIntf:  _OperationArgumentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EEE67FFB-A7B3-43C3-8BD9-47F2805C529A}
// *********************************************************************//
  _OperationArgumentsDisp = dispinterface
    ['{EEE67FFB-A7B3-43C3-8BD9-47F2805C529A}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property State: OleVariant dispid 1610743814;
    function MemberwiseClone: _OperationArguments; dispid 1610743816;
    procedure SetState(State: OleVariant); dispid 1610743817;
  end;

// *********************************************************************//
// Interface: _ValueArguments
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {50E19226-5E5B-4AB8-B9BB-CB5FB3A1C58D}
// *********************************************************************//
  _ValueArguments = interface(IDispatch)
    ['{50E19226-5E5B-4AB8-B9BB-CB5FB3A1C58D}']
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
    function Get_value: OleVariant; safecall;
    procedure _Set_value(pRetVal: OleVariant); safecall;
    function Get_ValueType: _Type; safecall;
    procedure SetValue(value: OleVariant); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property State: OleVariant read Get_State write _Set_State;
    property value: OleVariant read Get_value write _Set_value;
    property ValueType: _Type read Get_ValueType;
  end;

// *********************************************************************//
// DispIntf:  _ValueArgumentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {50E19226-5E5B-4AB8-B9BB-CB5FB3A1C58D}
// *********************************************************************//
  _ValueArgumentsDisp = dispinterface
    ['{50E19226-5E5B-4AB8-B9BB-CB5FB3A1C58D}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property State: OleVariant dispid 1610743814;
    function MemberwiseClone: _OperationArguments; dispid 1610743816;
    procedure SetState(State: OleVariant); dispid 1610743817;
    property value: OleVariant dispid 1610743818;
    property ValueType: _Type readonly dispid 1610743820;
    procedure SetValue(value: OleVariant); dispid 1610743821;
  end;

// *********************************************************************//
// Interface: _OperationEventArgs
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0D1744A4-D97B-44F8-8C0F-C0526D0F4A89}
// *********************************************************************//
  _OperationEventArgs = interface(IDispatch)
    ['{0D1744A4-D97B-44F8-8C0F-C0526D0F4A89}']
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
  end;

// *********************************************************************//
// DispIntf:  _OperationEventArgsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0D1744A4-D97B-44F8-8C0F-C0526D0F4A89}
// *********************************************************************//
  _OperationEventArgsDisp = dispinterface
    ['{0D1744A4-D97B-44F8-8C0F-C0526D0F4A89}']
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
  end;

// *********************************************************************//
// Interface: _OperationException
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {33B3C6E9-784C-41DA-BDCF-A05A45CA274E}
// *********************************************************************//
  _OperationException = interface(IDispatch)
    ['{33B3C6E9-784C-41DA-BDCF-A05A45CA274E}']
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
    procedure GetObjectData(const Info: _SerializationInfo; context: StreamingContext); safecall;
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
// DispIntf:  _OperationExceptionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {33B3C6E9-784C-41DA-BDCF-A05A45CA274E}
// *********************************************************************//
  _OperationExceptionDisp = dispinterface
    ['{33B3C6E9-784C-41DA-BDCF-A05A45CA274E}']
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
    procedure GetObjectData(const Info: _SerializationInfo; 
                            context: {NOT_OLEAUTO(StreamingContext)}OleVariant); dispid 1610743822;
    property Data: _Dictionary readonly dispid 1610743823;
    property HResult: Integer readonly dispid 1610743824;
  end;

// *********************************************************************//
// Interface: _OperationResult
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A15E78B9-8D21-46F5-9194-CC1284911C7B}
// *********************************************************************//
  _OperationResult = interface(IDispatch)
    ['{A15E78B9-8D21-46F5-9194-CC1284911C7B}']
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
  end;

// *********************************************************************//
// DispIntf:  _OperationResultDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A15E78B9-8D21-46F5-9194-CC1284911C7B}
// *********************************************************************//
  _OperationResultDisp = dispinterface
    ['{A15E78B9-8D21-46F5-9194-CC1284911C7B}']
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
  end;

// *********************************************************************//
// Interface: _ValueArrayResult
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5F388852-88D6-4C4E-AA5F-D7C692D4FE09}
// *********************************************************************//
  _ValueArrayResult = interface(IDispatch)
    ['{5F388852-88D6-4C4E-AA5F-D7C692D4FE09}']
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
    function Get_ValueArray: OleVariant; safecall;
    procedure _Set_ValueArray(pRetVal: OleVariant); safecall;
    procedure SetValueArray(ValueArray: OleVariant); safecall;
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
    property ValueArray: OleVariant read Get_ValueArray write _Set_ValueArray;
  end;

// *********************************************************************//
// DispIntf:  _ValueArrayResultDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5F388852-88D6-4C4E-AA5F-D7C692D4FE09}
// *********************************************************************//
  _ValueArrayResultDisp = dispinterface
    ['{5F388852-88D6-4C4E-AA5F-D7C692D4FE09}']
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
    property ValueArray: OleVariant dispid 1610743835;
    procedure SetValueArray(ValueArray: OleVariant); dispid 1610743837;
  end;

// *********************************************************************//
// Interface: _ValueResult
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AD960B5D-7726-4CD5-9099-D66E300F9BC0}
// *********************************************************************//
  _ValueResult = interface(IDispatch)
    ['{AD960B5D-7726-4CD5-9099-D66E300F9BC0}']
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
    function Get_value: OleVariant; safecall;
    procedure _Set_value(pRetVal: OleVariant); safecall;
    function Get_ValueType: _Type; safecall;
    procedure SetValue(value: OleVariant); safecall;
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
    property value: OleVariant read Get_value write _Set_value;
    property ValueType: _Type read Get_ValueType;
  end;

// *********************************************************************//
// DispIntf:  _ValueResultDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AD960B5D-7726-4CD5-9099-D66E300F9BC0}
// *********************************************************************//
  _ValueResultDisp = dispinterface
    ['{AD960B5D-7726-4CD5-9099-D66E300F9BC0}']
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
    property value: OleVariant dispid 1610743836;
    property ValueType: _Type readonly dispid 1610743838;
    procedure SetValue(value: OleVariant); dispid 1610743839;
  end;

// *********************************************************************//
// Interface: _HandleArguments
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AB3E2956-96E8-402F-9042-1612269C93C4}
// *********************************************************************//
  _HandleArguments = interface(IDispatch)
    ['{AB3E2956-96E8-402F-9042-1612269C93C4}']
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
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property State: OleVariant read Get_State write _Set_State;
    property Handle: Integer read Get_Handle write Set_Handle;
  end;

// *********************************************************************//
// DispIntf:  _HandleArgumentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AB3E2956-96E8-402F-9042-1612269C93C4}
// *********************************************************************//
  _HandleArgumentsDisp = dispinterface
    ['{AB3E2956-96E8-402F-9042-1612269C93C4}']
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
  end;

// *********************************************************************//
// Interface: _NetworkCredential2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3960DBAD-819D-428E-8918-76D0939CE09E}
// *********************************************************************//
  _NetworkCredential2 = interface(IDispatch)
    ['{3960DBAD-819D-428E-8918-76D0939CE09E}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_UserName: WideString; safecall;
    procedure Set_UserName(const pRetVal: WideString); safecall;
    function Get_password: WideString; safecall;
    procedure Set_password(const pRetVal: WideString); safecall;
    function Get_Domain: WideString; safecall;
    procedure Set_Domain(const pRetVal: WideString); safecall;
    function GetCredential(const uriString: WideString; const authType: WideString): _NetworkCredential2; safecall;
    function GetCredentialByHost(const host: WideString; port: Integer; 
                                 const authenticationType: WideString): _NetworkCredential2; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property UserName: WideString read Get_UserName write Set_UserName;
    property password: WideString read Get_password write Set_password;
    property Domain: WideString read Get_Domain write Set_Domain;
  end;

// *********************************************************************//
// DispIntf:  _NetworkCredential2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3960DBAD-819D-428E-8918-76D0939CE09E}
// *********************************************************************//
  _NetworkCredential2Disp = dispinterface
    ['{3960DBAD-819D-428E-8918-76D0939CE09E}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property UserName: WideString dispid 1610743813;
    property password: WideString dispid 1610743815;
    property Domain: WideString dispid 1610743817;
    function GetCredential(const uriString: WideString; const authType: WideString): _NetworkCredential2; dispid 1610743819;
    function GetCredentialByHost(const host: WideString; port: Integer; 
                                 const authenticationType: WideString): _NetworkCredential2; dispid 1610743820;
  end;

// *********************************************************************//
// Interface: _ComputerElement
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {53D65B90-D8C7-46D6-9988-766A54843133}
// *********************************************************************//
  _ComputerElement = interface(IDispatch)
    ['{53D65B90-D8C7-46D6-9988-766A54843133}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_MachineName: WideString; safecall;
    procedure Set_MachineName(const pRetVal: WideString); safecall;
    function Get_IsLocal: WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property MachineName: WideString read Get_MachineName write Set_MachineName;
    property IsLocal: WordBool read Get_IsLocal;
  end;

// *********************************************************************//
// DispIntf:  _ComputerElementDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {53D65B90-D8C7-46D6-9988-766A54843133}
// *********************************************************************//
  _ComputerElementDisp = dispinterface
    ['{53D65B90-D8C7-46D6-9988-766A54843133}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property MachineName: WideString dispid 1610743814;
    property IsLocal: WordBool readonly dispid 1610743816;
  end;

// *********************************************************************//
// Interface: _HostElement
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AA9578B4-91AA-4486-8DF2-66A87FFF31AD}
// *********************************************************************//
  _HostElement = interface(IDispatch)
    ['{AA9578B4-91AA-4486-8DF2-66A87FFF31AD}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_HostName: WideString; safecall;
    procedure Set_HostName(const pRetVal: WideString); safecall;
    function Get_IsLocal: WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property HostName: WideString read Get_HostName write Set_HostName;
    property IsLocal: WordBool read Get_IsLocal;
  end;

// *********************************************************************//
// DispIntf:  _HostElementDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AA9578B4-91AA-4486-8DF2-66A87FFF31AD}
// *********************************************************************//
  _HostElementDisp = dispinterface
    ['{AA9578B4-91AA-4486-8DF2-66A87FFF31AD}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property HostName: WideString dispid 1610743814;
    property IsLocal: WordBool readonly dispid 1610743816;
  end;

// *********************************************************************//
// Interface: _NetworkAddress
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {579BA61E-2634-4EC6-A568-E666382D243F}
// *********************************************************************//
  _NetworkAddress = interface(IDispatch)
    ['{579BA61E-2634-4EC6-A568-E666382D243F}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_InterfaceName: WideString; safecall;
    procedure Set_InterfaceName(const pRetVal: WideString); safecall;
    function Get_IsNull: WordBool; safecall;
    function AsResourceAddress: _ResourceAddress; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property InterfaceName: WideString read Get_InterfaceName write Set_InterfaceName;
    property IsNull: WordBool read Get_IsNull;
  end;

// *********************************************************************//
// DispIntf:  _NetworkAddressDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {579BA61E-2634-4EC6-A568-E666382D243F}
// *********************************************************************//
  _NetworkAddressDisp = dispinterface
    ['{579BA61E-2634-4EC6-A568-E666382D243F}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property InterfaceName: WideString dispid 1610743814;
    property IsNull: WordBool readonly dispid 1610743816;
    function AsResourceAddress: _ResourceAddress; dispid 1610743817;
  end;

// *********************************************************************//
// Interface: _ResourceAddress
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0AD6BDF4-58E4-4C74-AFE3-86DE3A48467B}
// *********************************************************************//
  _ResourceAddress = interface(IDispatch)
    ['{0AD6BDF4-58E4-4C74-AFE3-86DE3A48467B}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_InterfaceName: WideString; safecall;
    procedure Set_InterfaceName(const pRetVal: WideString); safecall;
    function Get_IsNull: WordBool; safecall;
    function AsResourceAddress: _ResourceAddress; safecall;
    function Get_ResourceDescriptor: _ResourceDescriptor; safecall;
    procedure _Set_ResourceDescriptor(const pRetVal: _ResourceDescriptor); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property InterfaceName: WideString read Get_InterfaceName write Set_InterfaceName;
    property IsNull: WordBool read Get_IsNull;
    property ResourceDescriptor: _ResourceDescriptor read Get_ResourceDescriptor write _Set_ResourceDescriptor;
  end;

// *********************************************************************//
// DispIntf:  _ResourceAddressDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0AD6BDF4-58E4-4C74-AFE3-86DE3A48467B}
// *********************************************************************//
  _ResourceAddressDisp = dispinterface
    ['{0AD6BDF4-58E4-4C74-AFE3-86DE3A48467B}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property InterfaceName: WideString dispid 1610743814;
    property IsNull: WordBool readonly dispid 1610743816;
    function AsResourceAddress: _ResourceAddress; dispid 1610743817;
    property ResourceDescriptor: _ResourceDescriptor dispid 1610743818;
  end;

// *********************************************************************//
// Interface: _BrowsePath
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {50FF10A3-BD27-403A-B511-982BDDB919A5}
// *********************************************************************//
  _BrowsePath = interface(IDispatch)
    ['{50FF10A3-BD27-403A-B511-982BDDB919A5}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_BrowseNames: _StringCollection; safecall;
    function Get_IsEmpty: WordBool; safecall;
    function Get_Length: Integer; safecall;
    function Get_PathString: WideString; safecall;
    procedure Set_PathString(const pRetVal: WideString); safecall;
    procedure AppendBrowseName(const browseName: WideString); safecall;
    procedure AppendRelative(const more: WideString; MaximumParentDepth: Integer); safecall;
    procedure Combine(const more: WideString); safecall;
    function CommonPrefix(path2: OleVariant): _StringCollection; safecall;
    function CommonPrefixLength(path2: OleVariant): Integer; safecall;
    function IsPrefix(prefix: OleVariant): WordBool; safecall;
    function RelativeTo(toPath: OleVariant; MaximumParentDepth: Integer): WideString; safecall;
    function TryAppendRelative(const more: WideString; MaximumParentDepth: Integer): _StringParsingError; safecall;
    function TryAssign(const absolute: WideString): _StringParsingError; safecall;
    function TryCombine(const more: WideString): _StringParsingError; safecall;
    function TryRelativeTo(toPath: OleVariant; MaximumParentDepth: Integer; 
                           out relativeResult: WideString): WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property BrowseNames: _StringCollection read Get_BrowseNames;
    property IsEmpty: WordBool read Get_IsEmpty;
    property Length: Integer read Get_Length;
    property PathString: WideString read Get_PathString write Set_PathString;
  end;

// *********************************************************************//
// DispIntf:  _BrowsePathDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {50FF10A3-BD27-403A-B511-982BDDB919A5}
// *********************************************************************//
  _BrowsePathDisp = dispinterface
    ['{50FF10A3-BD27-403A-B511-982BDDB919A5}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property BrowseNames: _StringCollection readonly dispid 1610743814;
    property IsEmpty: WordBool readonly dispid 1610743815;
    property Length: Integer readonly dispid 1610743816;
    property PathString: WideString dispid 1610743817;
    procedure AppendBrowseName(const browseName: WideString); dispid 1610743819;
    procedure AppendRelative(const more: WideString; MaximumParentDepth: Integer); dispid 1610743820;
    procedure Combine(const more: WideString); dispid 1610743821;
    function CommonPrefix(path2: OleVariant): _StringCollection; dispid 1610743822;
    function CommonPrefixLength(path2: OleVariant): Integer; dispid 1610743823;
    function IsPrefix(prefix: OleVariant): WordBool; dispid 1610743824;
    function RelativeTo(toPath: OleVariant; MaximumParentDepth: Integer): WideString; dispid 1610743825;
    function TryAppendRelative(const more: WideString; MaximumParentDepth: Integer): _StringParsingError; dispid 1610743826;
    function TryAssign(const absolute: WideString): _StringParsingError; dispid 1610743827;
    function TryCombine(const more: WideString): _StringParsingError; dispid 1610743828;
    function TryRelativeTo(toPath: OleVariant; MaximumParentDepth: Integer; 
                           out relativeResult: WideString): WordBool; dispid 1610743829;
  end;

// *********************************************************************//
// Interface: _BrowsePathFormatException
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2695161C-8F68-4378-AD8A-E73D7828708C}
// *********************************************************************//
  _BrowsePathFormatException = interface(IDispatch)
    ['{2695161C-8F68-4378-AD8A-E73D7828708C}']
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
    procedure GetObjectData(const Info: _SerializationInfo; context: StreamingContext); safecall;
    function Get_Data: _Dictionary; safecall;
    function Get_HResult: Integer; safecall;
    function Get_FormatError: _StringParsingError; safecall;
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
    property FormatError: _StringParsingError read Get_FormatError;
  end;

// *********************************************************************//
// DispIntf:  _BrowsePathFormatExceptionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2695161C-8F68-4378-AD8A-E73D7828708C}
// *********************************************************************//
  _BrowsePathFormatExceptionDisp = dispinterface
    ['{2695161C-8F68-4378-AD8A-E73D7828708C}']
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
    procedure GetObjectData(const Info: _SerializationInfo; 
                            context: {NOT_OLEAUTO(StreamingContext)}OleVariant); dispid 1610743822;
    property Data: _Dictionary readonly dispid 1610743823;
    property HResult: Integer readonly dispid 1610743824;
    property FormatError: _StringParsingError readonly dispid 1610743825;
  end;

// *********************************************************************//
// Interface: _BrowsePathParser
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5887D9FC-816A-4DB5-BD30-807651217EBE}
// *********************************************************************//
  _BrowsePathParser = interface(IDispatch)
    ['{5887D9FC-816A-4DB5-BD30-807651217EBE}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_BasePath: _BrowsePath; safecall;
    procedure _Set_BasePath(const pRetVal: _BrowsePath); safecall;
    function Get_MaximumParentDepth: Integer; safecall;
    procedure Set_MaximumParentDepth(pRetVal: Integer); safecall;
    function IsAbsolute(const value: WideString): WordBool; safecall;
    function Parse(const value: WideString): _BrowsePath; safecall;
    function ParseRelative(const value: WideString): _StringCollection; safecall;
    function TryParse(const value: WideString; out BrowsePath: OleVariant): _StringParsingError; safecall;
    function TryParseRelative(const value: WideString; StringCollection: OleVariant): _StringParsingError; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property BasePath: _BrowsePath read Get_BasePath write _Set_BasePath;
    property MaximumParentDepth: Integer read Get_MaximumParentDepth write Set_MaximumParentDepth;
  end;

// *********************************************************************//
// DispIntf:  _BrowsePathParserDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5887D9FC-816A-4DB5-BD30-807651217EBE}
// *********************************************************************//
  _BrowsePathParserDisp = dispinterface
    ['{5887D9FC-816A-4DB5-BD30-807651217EBE}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property BasePath: _BrowsePath dispid 1610743813;
    property MaximumParentDepth: Integer dispid 1610743815;
    function IsAbsolute(const value: WideString): WordBool; dispid 1610743817;
    function Parse(const value: WideString): _BrowsePath; dispid 1610743818;
    function ParseRelative(const value: WideString): _StringCollection; dispid 1610743819;
    function TryParse(const value: WideString; out BrowsePath: OleVariant): _StringParsingError; dispid 1610743820;
    function TryParseRelative(const value: WideString; StringCollection: OleVariant): _StringParsingError; dispid 1610743821;
  end;

// *********************************************************************//
// Interface: _StreamLoader
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3121FC74-340B-49D6-99C1-5F04FE22C79C}
// *********************************************************************//
  _StreamLoader = interface(IDispatch)
    ['{3121FC74-340B-49D6-99C1-5F04FE22C79C}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function FromBytes(bytes: OleVariant): _ValueResult; safecall;
    function FromFile(const filePathAndName: WideString): _ValueResult; safecall;
    function FromResource(ResourceDescriptor: OleVariant): _ValueResult; safecall;
    function FromStream(stream: OleVariant): _ValueResult; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
  end;

// *********************************************************************//
// DispIntf:  _StreamLoaderDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3121FC74-340B-49D6-99C1-5F04FE22C79C}
// *********************************************************************//
  _StreamLoaderDisp = dispinterface
    ['{3121FC74-340B-49D6-99C1-5F04FE22C79C}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function FromBytes(bytes: OleVariant): _ValueResult; dispid 1610743813;
    function FromFile(const filePathAndName: WideString): _ValueResult; dispid 1610743814;
    function FromResource(ResourceDescriptor: OleVariant): _ValueResult; dispid 1610743815;
    function FromStream(stream: OleVariant): _ValueResult; dispid 1610743816;
  end;

// *********************************************************************//
// Interface: _LogEntryEventArgs
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {41B99F03-76BE-4F86-98C1-3C9CD5350E78}
// *********************************************************************//
  _LogEntryEventArgs = interface(IDispatch)
    ['{41B99F03-76BE-4F86-98C1-3C9CD5350E78}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Category: Smallint; safecall;
    procedure Set_Category(pRetVal: Smallint); safecall;
    function Get_EntryType: Integer; safecall;
    procedure Set_EntryType(pRetVal: Integer); safecall;
    function Get_EventId: Integer; safecall;
    procedure Set_EventId(pRetVal: Integer); safecall;
    function Get_Message: WideString; safecall;
    procedure Set_Message(const pRetVal: WideString); safecall;
    function Get_RawData: OleVariant; safecall;
    procedure _Set_RawData(pRetVal: OleVariant); safecall;
    function Get_Source: WideString; safecall;
    procedure Set_Source(const pRetVal: WideString); safecall;
    function Get_Timestamp: TDateTime; safecall;
    procedure Set_Timestamp(pRetVal: TDateTime); safecall;
    function Get_TimestampDouble: Double; safecall;
    procedure Set_TimestampDouble(pRetVal: Double); safecall;
    function Get_TimestampLocal: TDateTime; safecall;
    procedure Set_TimestampLocal(pRetVal: TDateTime); safecall;
    function Get_TimestampLocalDouble: Double; safecall;
    procedure Set_TimestampLocalDouble(pRetVal: Double); safecall;
    function Clone: OleVariant; safecall;
    procedure SetRawData(RawData: OleVariant); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Category: Smallint read Get_Category write Set_Category;
    property EntryType: Integer read Get_EntryType write Set_EntryType;
    property EventId: Integer read Get_EventId write Set_EventId;
    property Message: WideString read Get_Message write Set_Message;
    property RawData: OleVariant read Get_RawData write _Set_RawData;
    property Source: WideString read Get_Source write Set_Source;
    property Timestamp: TDateTime read Get_Timestamp write Set_Timestamp;
    property TimestampDouble: Double read Get_TimestampDouble write Set_TimestampDouble;
    property TimestampLocal: TDateTime read Get_TimestampLocal write Set_TimestampLocal;
    property TimestampLocalDouble: Double read Get_TimestampLocalDouble write Set_TimestampLocalDouble;
  end;

// *********************************************************************//
// DispIntf:  _LogEntryEventArgsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {41B99F03-76BE-4F86-98C1-3C9CD5350E78}
// *********************************************************************//
  _LogEntryEventArgsDisp = dispinterface
    ['{41B99F03-76BE-4F86-98C1-3C9CD5350E78}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Category: Smallint dispid 1610743813;
    property EntryType: Integer dispid 1610743815;
    property EventId: Integer dispid 1610743817;
    property Message: WideString dispid 1610743819;
    property RawData: OleVariant dispid 1610743821;
    property Source: WideString dispid 1610743823;
    property Timestamp: TDateTime dispid 1610743825;
    property TimestampDouble: Double dispid 1610743827;
    property TimestampLocal: TDateTime dispid 1610743829;
    property TimestampLocalDouble: Double dispid 1610743831;
    function Clone: OleVariant; dispid 1610743833;
    procedure SetRawData(RawData: OleVariant); dispid 1610743834;
  end;

// *********************************************************************//
// Interface: _TokenInfoCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {878CF36E-DB33-4AB4-BF3C-F414E4E6B9DF}
// *********************************************************************//
  _TokenInfoCollection = interface(IDispatch)
    ['{878CF36E-DB33-4AB4-BF3C-F414E4E6B9DF}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(const key: WideString): _TokenInfo; safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(Item: OleVariant); safecall;
    procedure Clear; safecall;
    function Contains(Item: OleVariant): WordBool; safecall;
    function IndexOf(Item: OleVariant): Integer; safecall;
    function Remove(const key: WideString): WordBool; safecall;
    procedure RemoveAt(index: Integer); safecall;
    function ToList: _ElasticVector; safecall;
    function TryGetValue(const key: WideString; out Item: OleVariant): WordBool; safecall;
    function Clone: OleVariant; safecall;
    property ToString: WideString read Get_ToString;
    property Item[const key: WideString]: _TokenInfo read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _TokenInfoCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {878CF36E-DB33-4AB4-BF3C-F414E4E6B9DF}
// *********************************************************************//
  _TokenInfoCollectionDisp = dispinterface
    ['{878CF36E-DB33-4AB4-BF3C-F414E4E6B9DF}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[const key: WideString]: _TokenInfo readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743813;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(Item: OleVariant); dispid 1610743815;
    procedure Clear; dispid 1610743816;
    function Contains(Item: OleVariant): WordBool; dispid 1610743817;
    function IndexOf(Item: OleVariant): Integer; dispid 1610743818;
    function Remove(const key: WideString): WordBool; dispid 1610743819;
    procedure RemoveAt(index: Integer); dispid 1610743820;
    function ToList: _ElasticVector; dispid 1610743821;
    function TryGetValue(const key: WideString; out Item: OleVariant): WordBool; dispid 1610743822;
    function Clone: OleVariant; dispid 1610743823;
  end;

// *********************************************************************//
// Interface: _TokenInfoPolicy
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3CCB0358-3F81-4A3F-9EA5-0BE74B41F28E}
// *********************************************************************//
  _TokenInfoPolicy = interface(IDispatch)
    ['{3CCB0358-3F81-4A3F-9EA5-0BE74B41F28E}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_SecurityPolicyUriString: WideString; safecall;
    procedure Set_SecurityPolicyUriString(const pRetVal: WideString); safecall;
    function Get_ServicePrincipalName: WideString; safecall;
    procedure Set_ServicePrincipalName(const pRetVal: WideString); safecall;
    function Get_TokenProfileUriString: WideString; safecall;
    procedure Set_TokenProfileUriString(const pRetVal: WideString); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property SecurityPolicyUriString: WideString read Get_SecurityPolicyUriString write Set_SecurityPolicyUriString;
    property ServicePrincipalName: WideString read Get_ServicePrincipalName write Set_ServicePrincipalName;
    property TokenProfileUriString: WideString read Get_TokenProfileUriString write Set_TokenProfileUriString;
  end;

// *********************************************************************//
// DispIntf:  _TokenInfoPolicyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3CCB0358-3F81-4A3F-9EA5-0BE74B41F28E}
// *********************************************************************//
  _TokenInfoPolicyDisp = dispinterface
    ['{3CCB0358-3F81-4A3F-9EA5-0BE74B41F28E}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property SecurityPolicyUriString: WideString dispid 1610743814;
    property ServicePrincipalName: WideString dispid 1610743816;
    property TokenProfileUriString: WideString dispid 1610743818;
  end;

// *********************************************************************//
// Interface: _TokenSelectionPolicy
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BDE1B622-5CB3-4FC9-8BB2-E08D7D69DA1A}
// *********************************************************************//
  _TokenSelectionPolicy = interface(IDispatch)
    ['{BDE1B622-5CB3-4FC9-8BB2-E08D7D69DA1A}']
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
// DispIntf:  _TokenSelectionPolicyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BDE1B622-5CB3-4FC9-8BB2-E08D7D69DA1A}
// *********************************************************************//
  _TokenSelectionPolicyDisp = dispinterface
    ['{BDE1B622-5CB3-4FC9-8BB2-E08D7D69DA1A}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
  end;

// *********************************************************************//
// Interface: _UserIdentity
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {540EFA45-46A8-4731-BB08-77012A0BE794}
// *********************************************************************//
  _UserIdentity = interface(IDispatch)
    ['{540EFA45-46A8-4731-BB08-77012A0BE794}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_AliasName: WideString; safecall;
    procedure Set_AliasName(const pRetVal: WideString); safecall;
    function Get_IsAliased: WordBool; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_AnonymousTokenInfo: _AnonymousTokenInfo; safecall;
    procedure _Set_AnonymousTokenInfo(const pRetVal: _AnonymousTokenInfo); safecall;
    function Get_ConfiguredTokenInfoCount: Integer; safecall;
    function Get_KerberosTokenInfo: _KerberosTokenInfo; safecall;
    procedure _Set_KerberosTokenInfo(const pRetVal: _KerberosTokenInfo); safecall;
    function Get_TokenInfos: _TokenInfoCollection; safecall;
    function Get_UserNameTokenInfo: _UserNameTokenInfo; safecall;
    procedure _Set_UserNameTokenInfo(const pRetVal: _UserNameTokenInfo); safecall;
    function Get_X509CertificateTokenInfo: _X509CertificateTokenInfo; safecall;
    procedure _Set_X509CertificateTokenInfo(const pRetVal: _X509CertificateTokenInfo); safecall;
    function DefaultTo(other: OleVariant): _UserIdentity; safecall;
    function OverrideBy(other: OleVariant): _UserIdentity; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property AliasName: WideString read Get_AliasName write Set_AliasName;
    property IsAliased: WordBool read Get_IsAliased;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property AnonymousTokenInfo: _AnonymousTokenInfo read Get_AnonymousTokenInfo write _Set_AnonymousTokenInfo;
    property ConfiguredTokenInfoCount: Integer read Get_ConfiguredTokenInfoCount;
    property KerberosTokenInfo: _KerberosTokenInfo read Get_KerberosTokenInfo write _Set_KerberosTokenInfo;
    property TokenInfos: _TokenInfoCollection read Get_TokenInfos;
    property UserNameTokenInfo: _UserNameTokenInfo read Get_UserNameTokenInfo write _Set_UserNameTokenInfo;
    property X509CertificateTokenInfo: _X509CertificateTokenInfo read Get_X509CertificateTokenInfo write _Set_X509CertificateTokenInfo;
  end;

// *********************************************************************//
// DispIntf:  _UserIdentityDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {540EFA45-46A8-4731-BB08-77012A0BE794}
// *********************************************************************//
  _UserIdentityDisp = dispinterface
    ['{540EFA45-46A8-4731-BB08-77012A0BE794}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property AliasName: WideString dispid 1610743814;
    property IsAliased: WordBool readonly dispid 1610743816;
    property StandardName: WideString dispid 1610743817;
    property AnonymousTokenInfo: _AnonymousTokenInfo dispid 1610743819;
    property ConfiguredTokenInfoCount: Integer readonly dispid 1610743821;
    property KerberosTokenInfo: _KerberosTokenInfo dispid 1610743822;
    property TokenInfos: _TokenInfoCollection readonly dispid 1610743824;
    property UserNameTokenInfo: _UserNameTokenInfo dispid 1610743825;
    property X509CertificateTokenInfo: _X509CertificateTokenInfo dispid 1610743827;
    function DefaultTo(other: OleVariant): _UserIdentity; dispid 1610743829;
    function OverrideBy(other: OleVariant): _UserIdentity; dispid 1610743830;
  end;

// *********************************************************************//
// Interface: _TokenInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5AEEBF6C-D83B-45F2-8FBC-AA0C722D0D04}
// *********************************************************************//
  _TokenInfo = interface(IDispatch)
    ['{5AEEBF6C-D83B-45F2-8FBC-AA0C722D0D04}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_IsAnonymous: WordBool; safecall;
    function Get_IsConfigured: WordBool; safecall;
    function Get_TokenProfileUriString: WideString; safecall;
    procedure Deconfigure; safecall;
    function IsApplicable(TokenInfoPolicy: OleVariant): WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property IsAnonymous: WordBool read Get_IsAnonymous;
    property IsConfigured: WordBool read Get_IsConfigured;
    property TokenProfileUriString: WideString read Get_TokenProfileUriString;
  end;

// *********************************************************************//
// DispIntf:  _TokenInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5AEEBF6C-D83B-45F2-8FBC-AA0C722D0D04}
// *********************************************************************//
  _TokenInfoDisp = dispinterface
    ['{5AEEBF6C-D83B-45F2-8FBC-AA0C722D0D04}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property IsAnonymous: WordBool readonly dispid 1610743816;
    property IsConfigured: WordBool readonly dispid 1610743817;
    property TokenProfileUriString: WideString readonly dispid 1610743818;
    procedure Deconfigure; dispid 1610743819;
    function IsApplicable(TokenInfoPolicy: OleVariant): WordBool; dispid 1610743820;
  end;

// *********************************************************************//
// Interface: _KerberosTokenInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {640E8379-8450-464B-9A92-4FA29CBDEB9A}
// *********************************************************************//
  _KerberosTokenInfo = interface(IDispatch)
    ['{640E8379-8450-464B-9A92-4FA29CBDEB9A}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_IsAnonymous: WordBool; safecall;
    function Get_IsConfigured: WordBool; safecall;
    function Get_TokenProfileUriString: WideString; safecall;
    procedure Deconfigure; safecall;
    function IsApplicable(TokenInfoPolicy: OleVariant): WordBool; safecall;
    function Get_IsNull: WordBool; safecall;
    function Get_NetworkSecurity: _NetworkSecurity; safecall;
    procedure _Set_NetworkSecurity(const pRetVal: _NetworkSecurity); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property IsAnonymous: WordBool read Get_IsAnonymous;
    property IsConfigured: WordBool read Get_IsConfigured;
    property TokenProfileUriString: WideString read Get_TokenProfileUriString;
    property IsNull: WordBool read Get_IsNull;
    property NetworkSecurity: _NetworkSecurity read Get_NetworkSecurity write _Set_NetworkSecurity;
  end;

// *********************************************************************//
// DispIntf:  _KerberosTokenInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {640E8379-8450-464B-9A92-4FA29CBDEB9A}
// *********************************************************************//
  _KerberosTokenInfoDisp = dispinterface
    ['{640E8379-8450-464B-9A92-4FA29CBDEB9A}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property IsAnonymous: WordBool readonly dispid 1610743816;
    property IsConfigured: WordBool readonly dispid 1610743817;
    property TokenProfileUriString: WideString readonly dispid 1610743818;
    procedure Deconfigure; dispid 1610743819;
    function IsApplicable(TokenInfoPolicy: OleVariant): WordBool; dispid 1610743820;
    property IsNull: WordBool readonly dispid 1610743821;
    property NetworkSecurity: _NetworkSecurity dispid 1610743822;
  end;

// *********************************************************************//
// Interface: _UserNameTokenInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1EF84C5C-9F88-4A8D-A1C4-8FEED34A6A78}
// *********************************************************************//
  _UserNameTokenInfo = interface(IDispatch)
    ['{1EF84C5C-9F88-4A8D-A1C4-8FEED34A6A78}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_IsAnonymous: WordBool; safecall;
    function Get_IsConfigured: WordBool; safecall;
    function Get_TokenProfileUriString: WideString; safecall;
    procedure Deconfigure; safecall;
    function IsApplicable(TokenInfoPolicy: OleVariant): WordBool; safecall;
    function Get_IsNull: WordBool; safecall;
    function Get_password: WideString; safecall;
    procedure Set_password(const pRetVal: WideString); safecall;
    function Get_UserInfo: WideString; safecall;
    procedure Set_UserInfo(const pRetVal: WideString); safecall;
    function Get_UserName: WideString; safecall;
    procedure Set_UserName(const pRetVal: WideString); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property IsAnonymous: WordBool read Get_IsAnonymous;
    property IsConfigured: WordBool read Get_IsConfigured;
    property TokenProfileUriString: WideString read Get_TokenProfileUriString;
    property IsNull: WordBool read Get_IsNull;
    property password: WideString read Get_password write Set_password;
    property UserInfo: WideString read Get_UserInfo write Set_UserInfo;
    property UserName: WideString read Get_UserName write Set_UserName;
  end;

// *********************************************************************//
// DispIntf:  _UserNameTokenInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1EF84C5C-9F88-4A8D-A1C4-8FEED34A6A78}
// *********************************************************************//
  _UserNameTokenInfoDisp = dispinterface
    ['{1EF84C5C-9F88-4A8D-A1C4-8FEED34A6A78}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property IsAnonymous: WordBool readonly dispid 1610743816;
    property IsConfigured: WordBool readonly dispid 1610743817;
    property TokenProfileUriString: WideString readonly dispid 1610743818;
    procedure Deconfigure; dispid 1610743819;
    function IsApplicable(TokenInfoPolicy: OleVariant): WordBool; dispid 1610743820;
    property IsNull: WordBool readonly dispid 1610743821;
    property password: WideString dispid 1610743822;
    property UserInfo: WideString dispid 1610743824;
    property UserName: WideString dispid 1610743826;
  end;

// *********************************************************************//
// Interface: _X509CertificateTokenInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ECC7A2FB-7AF9-4736-ABB1-84D6E7DAD05A}
// *********************************************************************//
  _X509CertificateTokenInfo = interface(IDispatch)
    ['{ECC7A2FB-7AF9-4736-ABB1-84D6E7DAD05A}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_IsAnonymous: WordBool; safecall;
    function Get_IsConfigured: WordBool; safecall;
    function Get_TokenProfileUriString: WideString; safecall;
    procedure Deconfigure; safecall;
    function IsApplicable(TokenInfoPolicy: OleVariant): WordBool; safecall;
    function Get_CertificateQuery: _CertificateQuery; safecall;
    procedure _Set_CertificateQuery(const pRetVal: _CertificateQuery); safecall;
    function Get_IsNull: WordBool; safecall;
    function LoadCertificate: _ValueResult; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property IsAnonymous: WordBool read Get_IsAnonymous;
    property IsConfigured: WordBool read Get_IsConfigured;
    property TokenProfileUriString: WideString read Get_TokenProfileUriString;
    property CertificateQuery: _CertificateQuery read Get_CertificateQuery write _Set_CertificateQuery;
    property IsNull: WordBool read Get_IsNull;
  end;

// *********************************************************************//
// DispIntf:  _X509CertificateTokenInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ECC7A2FB-7AF9-4736-ABB1-84D6E7DAD05A}
// *********************************************************************//
  _X509CertificateTokenInfoDisp = dispinterface
    ['{ECC7A2FB-7AF9-4736-ABB1-84D6E7DAD05A}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property IsAnonymous: WordBool readonly dispid 1610743816;
    property IsConfigured: WordBool readonly dispid 1610743817;
    property TokenProfileUriString: WideString readonly dispid 1610743818;
    procedure Deconfigure; dispid 1610743819;
    function IsApplicable(TokenInfoPolicy: OleVariant): WordBool; dispid 1610743820;
    property CertificateQuery: _CertificateQuery dispid 1610743821;
    property IsNull: WordBool readonly dispid 1610743823;
    function LoadCertificate: _ValueResult; dispid 1610743824;
  end;

// *********************************************************************//
// Interface: _AnonymousTokenInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {46F3C283-8B4C-408E-8CC9-F2AFA1F20C5C}
// *********************************************************************//
  _AnonymousTokenInfo = interface(IDispatch)
    ['{46F3C283-8B4C-408E-8CC9-F2AFA1F20C5C}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_IsAnonymous: WordBool; safecall;
    function Get_IsConfigured: WordBool; safecall;
    function Get_TokenProfileUriString: WideString; safecall;
    procedure Deconfigure; safecall;
    function IsApplicable(TokenInfoPolicy: OleVariant): WordBool; safecall;
    function Get_IsEnabled: WordBool; safecall;
    procedure Set_IsEnabled(pRetVal: WordBool); safecall;
    function Get_IsNull: WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property IsAnonymous: WordBool read Get_IsAnonymous;
    property IsConfigured: WordBool read Get_IsConfigured;
    property TokenProfileUriString: WideString read Get_TokenProfileUriString;
    property IsEnabled: WordBool read Get_IsEnabled write Set_IsEnabled;
    property IsNull: WordBool read Get_IsNull;
  end;

// *********************************************************************//
// DispIntf:  _AnonymousTokenInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {46F3C283-8B4C-408E-8CC9-F2AFA1F20C5C}
// *********************************************************************//
  _AnonymousTokenInfoDisp = dispinterface
    ['{46F3C283-8B4C-408E-8CC9-F2AFA1F20C5C}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property IsAnonymous: WordBool readonly dispid 1610743816;
    property IsConfigured: WordBool readonly dispid 1610743817;
    property TokenProfileUriString: WideString readonly dispid 1610743818;
    procedure Deconfigure; dispid 1610743819;
    function IsApplicable(TokenInfoPolicy: OleVariant): WordBool; dispid 1610743820;
    property IsEnabled: WordBool dispid 1610743821;
    property IsNull: WordBool readonly dispid 1610743823;
  end;

// *********************************************************************//
// Interface: _WindowsFormsInteractionParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DA40643C-8064-4A5C-86FD-3C71850B2C56}
// *********************************************************************//
  _WindowsFormsInteractionParameters = interface(IDispatch)
    ['{DA40643C-8064-4A5C-86FD-3C71850B2C56}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_ParallelInteraction: WordBool; safecall;
    procedure Set_ParallelInteraction(pRetVal: WordBool); safecall;
    procedure Reset; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property ParallelInteraction: WordBool read Get_ParallelInteraction write Set_ParallelInteraction;
  end;

// *********************************************************************//
// DispIntf:  _WindowsFormsInteractionParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DA40643C-8064-4A5C-86FD-3C71850B2C56}
// *********************************************************************//
  _WindowsFormsInteractionParametersDisp = dispinterface
    ['{DA40643C-8064-4A5C-86FD-3C71850B2C56}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property ParallelInteraction: WordBool dispid 1610743816;
    procedure Reset; dispid 1610743818;
  end;

// *********************************************************************//
// Interface: _PluginSetup
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CB3B0F1E-F050-41A5-8478-E3B2D2B5CC9F}
// *********************************************************************//
  _PluginSetup = interface(IDispatch)
    ['{CB3B0F1E-F050-41A5-8478-E3B2D2B5CC9F}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_Enabled: WordBool; safecall;
    procedure Set_Enabled(pRetVal: WordBool); safecall;
    function Get_Name: WideString; safecall;
    function Get_uriString: WideString; safecall;
    procedure Set_uriString(const pRetVal: WideString); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property Name: WideString read Get_Name;
    property uriString: WideString read Get_uriString write Set_uriString;
  end;

// *********************************************************************//
// DispIntf:  _PluginSetupDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CB3B0F1E-F050-41A5-8478-E3B2D2B5CC9F}
// *********************************************************************//
  _PluginSetupDisp = dispinterface
    ['{CB3B0F1E-F050-41A5-8478-E3B2D2B5CC9F}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property Enabled: WordBool dispid 1610743816;
    property Name: WideString readonly dispid 1610743818;
    property uriString: WideString dispid 1610743819;
  end;

// *********************************************************************//
// Interface: _PluginSetupCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B6CB347D-16FA-4DED-BC53-804999231473}
// *********************************************************************//
  _PluginSetupCollection = interface(IDispatch)
    ['{B6CB347D-16FA-4DED-BC53-804999231473}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(const key: WideString): _PluginSetup; safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(Item: OleVariant); safecall;
    procedure Clear; safecall;
    function Contains(Item: OleVariant): WordBool; safecall;
    function IndexOf(Item: OleVariant): Integer; safecall;
    function Remove(const key: WideString): WordBool; safecall;
    procedure RemoveAt(index: Integer); safecall;
    function ToList: _ElasticVector; safecall;
    function TryGetValue(const key: WideString; out Item: OleVariant): WordBool; safecall;
    function Clone: OleVariant; safecall;
    function FindName(const Name: WideString): _PluginSetup; safecall;
    property ToString: WideString read Get_ToString;
    property Item[const key: WideString]: _PluginSetup read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _PluginSetupCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B6CB347D-16FA-4DED-BC53-804999231473}
// *********************************************************************//
  _PluginSetupCollectionDisp = dispinterface
    ['{B6CB347D-16FA-4DED-BC53-804999231473}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[const key: WideString]: _PluginSetup readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743813;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(Item: OleVariant); dispid 1610743815;
    procedure Clear; dispid 1610743816;
    function Contains(Item: OleVariant): WordBool; dispid 1610743817;
    function IndexOf(Item: OleVariant): Integer; dispid 1610743818;
    function Remove(const key: WideString): WordBool; dispid 1610743819;
    procedure RemoveAt(index: Integer); dispid 1610743820;
    function ToList: _ElasticVector; dispid 1610743821;
    function TryGetValue(const key: WideString; out Item: OleVariant): WordBool; dispid 1610743822;
    function Clone: OleVariant; dispid 1610743823;
    function FindName(const Name: WideString): _PluginSetup; dispid 1610743824;
  end;

// *********************************************************************//
// Interface: _DataFieldCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1C208821-40A2-4B5A-838B-C5B9BACC47A0}
// *********************************************************************//
  _DataFieldCollection = interface(IDispatch)
    ['{1C208821-40A2-4B5A-838B-C5B9BACC47A0}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Get_Item(const key: WideString): _DataField; safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(Item: OleVariant); safecall;
    procedure Clear; safecall;
    function Contains(Item: OleVariant): WordBool; safecall;
    function IndexOf(Item: OleVariant): Integer; safecall;
    function Remove(const key: WideString): WordBool; safecall;
    procedure RemoveAt(index: Integer); safecall;
    function ToList: _ElasticVector; safecall;
    function TryGetValue(const key: WideString; out Item: OleVariant): WordBool; safecall;
    function Clone: OleVariant; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property Item[const key: WideString]: _DataField read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _DataFieldCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1C208821-40A2-4B5A-838B-C5B9BACC47A0}
// *********************************************************************//
  _DataFieldCollectionDisp = dispinterface
    ['{1C208821-40A2-4B5A-838B-C5B9BACC47A0}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 1610743812;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    property Item[const key: WideString]: _DataField readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743816;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(Item: OleVariant); dispid 1610743818;
    procedure Clear; dispid 1610743819;
    function Contains(Item: OleVariant): WordBool; dispid 1610743820;
    function IndexOf(Item: OleVariant): Integer; dispid 1610743821;
    function Remove(const key: WideString): WordBool; dispid 1610743822;
    procedure RemoveAt(index: Integer); dispid 1610743823;
    function ToList: _ElasticVector; dispid 1610743824;
    function TryGetValue(const key: WideString; out Item: OleVariant): WordBool; dispid 1610743825;
    function Clone: OleVariant; dispid 1610743826;
  end;

// *********************************************************************//
// Interface: _EnumerationMemberCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B46BDEAB-CFA2-40E1-9CA8-190748F50027}
// *********************************************************************//
  _EnumerationMemberCollection = interface(IDispatch)
    ['{B46BDEAB-CFA2-40E1-9CA8-190748F50027}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Get_Item(const key: WideString): _EnumerationMember; safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(Item: OleVariant); safecall;
    procedure Clear; safecall;
    function Contains(Item: OleVariant): WordBool; safecall;
    function IndexOf(Item: OleVariant): Integer; safecall;
    function Remove(const key: WideString): WordBool; safecall;
    procedure RemoveAt(index: Integer); safecall;
    function ToList: _ElasticVector; safecall;
    function TryGetValue(const key: WideString; out Item: OleVariant): WordBool; safecall;
    function Clone: OleVariant; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property Item[const key: WideString]: _EnumerationMember read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _EnumerationMemberCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B46BDEAB-CFA2-40E1-9CA8-190748F50027}
// *********************************************************************//
  _EnumerationMemberCollectionDisp = dispinterface
    ['{B46BDEAB-CFA2-40E1-9CA8-190748F50027}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 1610743812;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    property Item[const key: WideString]: _EnumerationMember readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743816;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(Item: OleVariant); dispid 1610743818;
    procedure Clear; dispid 1610743819;
    function Contains(Item: OleVariant): WordBool; dispid 1610743820;
    function IndexOf(Item: OleVariant): Integer; dispid 1610743821;
    function Remove(const key: WideString): WordBool; dispid 1610743822;
    procedure RemoveAt(index: Integer); dispid 1610743823;
    function ToList: _ElasticVector; dispid 1610743824;
    function TryGetValue(const key: WideString; out Item: OleVariant): WordBool; dispid 1610743825;
    function Clone: OleVariant; dispid 1610743826;
  end;

// *********************************************************************//
// Interface: _TypeMemberInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D62AD75B-EB06-4C9B-996A-B59DD73303EE}
// *********************************************************************//
  _TypeMemberInfo = interface(IDispatch)
    ['{D62AD75B-EB06-4C9B-996A-B59DD73303EE}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pRetVal: WideString); safecall;
    function Get_DisplayName: WideString; safecall;
    procedure Set_DisplayName(const pRetVal: WideString); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pRetVal: WideString); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property Description: WideString read Get_Description write Set_Description;
    property DisplayName: WideString read Get_DisplayName write Set_DisplayName;
    property Name: WideString read Get_Name write Set_Name;
  end;

// *********************************************************************//
// DispIntf:  _TypeMemberInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D62AD75B-EB06-4C9B-996A-B59DD73303EE}
// *********************************************************************//
  _TypeMemberInfoDisp = dispinterface
    ['{D62AD75B-EB06-4C9B-996A-B59DD73303EE}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    function Clone: OleVariant; dispid 1610743815;
    property Description: WideString dispid 1610743816;
    property DisplayName: WideString dispid 1610743818;
    property Name: WideString dispid 1610743820;
  end;

// *********************************************************************//
// Interface: _DataType
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BA6F3FA3-F1CC-42CA-B592-08DDB1AD3AF6}
// *********************************************************************//
  _DataType = interface(IDispatch)
    ['{BA6F3FA3-F1CC-42CA-B592-08DDB1AD3AF6}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pRetVal: WideString); safecall;
    function Get_DisplayName: WideString; safecall;
    procedure Set_DisplayName(const pRetVal: WideString); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pRetVal: WideString); safecall;
    function Get_FullName: WideString; safecall;
    procedure Set_FullName(const pRetVal: WideString); safecall;
    function Get_IsComplete: WordBool; safecall;
    function Get_IsRecursive: WordBool; safecall;
    function Get_IsTerminable: WordBool; safecall;
    function Get_Kind: DataTypeKind; safecall;
    function AsEnumerationDataType: _EnumerationDataType; safecall;
    function AsOpaqueDataType: _OpaqueDataType; safecall;
    function AsPrimitiveDataType: _PrimitiveDataType; safecall;
    function AsSequenceDataType: _SequenceDataType; safecall;
    function AsStructuredDataType: _StructuredDataType; safecall;
    function AsUnionDataType: _UnionDataType; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property Description: WideString read Get_Description write Set_Description;
    property DisplayName: WideString read Get_DisplayName write Set_DisplayName;
    property Name: WideString read Get_Name write Set_Name;
    property FullName: WideString read Get_FullName write Set_FullName;
    property IsComplete: WordBool read Get_IsComplete;
    property IsRecursive: WordBool read Get_IsRecursive;
    property IsTerminable: WordBool read Get_IsTerminable;
    property Kind: DataTypeKind read Get_Kind;
  end;

// *********************************************************************//
// DispIntf:  _DataTypeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BA6F3FA3-F1CC-42CA-B592-08DDB1AD3AF6}
// *********************************************************************//
  _DataTypeDisp = dispinterface
    ['{BA6F3FA3-F1CC-42CA-B592-08DDB1AD3AF6}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    function Clone: OleVariant; dispid 1610743815;
    property Description: WideString dispid 1610743816;
    property DisplayName: WideString dispid 1610743818;
    property Name: WideString dispid 1610743820;
    property FullName: WideString dispid 1610743822;
    property IsComplete: WordBool readonly dispid 1610743824;
    property IsRecursive: WordBool readonly dispid 1610743825;
    property IsTerminable: WordBool readonly dispid 1610743826;
    property Kind: DataTypeKind readonly dispid 1610743827;
    function AsEnumerationDataType: _EnumerationDataType; dispid 1610743828;
    function AsOpaqueDataType: _OpaqueDataType; dispid 1610743829;
    function AsPrimitiveDataType: _PrimitiveDataType; dispid 1610743830;
    function AsSequenceDataType: _SequenceDataType; dispid 1610743831;
    function AsStructuredDataType: _StructuredDataType; dispid 1610743832;
    function AsUnionDataType: _UnionDataType; dispid 1610743833;
  end;

// *********************************************************************//
// Interface: _EnumerationDataType
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6746081D-6F7A-49C2-90A0-737D43C070A6}
// *********************************************************************//
  _EnumerationDataType = interface(IDispatch)
    ['{6746081D-6F7A-49C2-90A0-737D43C070A6}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pRetVal: WideString); safecall;
    function Get_DisplayName: WideString; safecall;
    procedure Set_DisplayName(const pRetVal: WideString); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pRetVal: WideString); safecall;
    function Get_FullName: WideString; safecall;
    procedure Set_FullName(const pRetVal: WideString); safecall;
    function Get_IsComplete: WordBool; safecall;
    function Get_IsRecursive: WordBool; safecall;
    function Get_IsTerminable: WordBool; safecall;
    function Get_Kind: DataTypeKind; safecall;
    function AsEnumerationDataType: _EnumerationDataType; safecall;
    function AsOpaqueDataType: _OpaqueDataType; safecall;
    function AsPrimitiveDataType: _PrimitiveDataType; safecall;
    function AsSequenceDataType: _SequenceDataType; safecall;
    function AsStructuredDataType: _StructuredDataType; safecall;
    function AsUnionDataType: _UnionDataType; safecall;
    function Get_EnumerationMembers: _EnumerationMemberCollection; safecall;
    function Get_SizeInBits: Integer; safecall;
    procedure Set_SizeInBits(pRetVal: Integer); safecall;
    procedure Add(EnumerationMember: OleVariant); safecall;
    function FindByDecimalValue(value: TDecimal): _EnumerationMember; safecall;
    function FindByInt32Value(value: Integer): _EnumerationMember; safecall;
    function FindByValue(value: Int64): _EnumerationMember; safecall;
    procedure Remove(const memberName: WideString); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property Description: WideString read Get_Description write Set_Description;
    property DisplayName: WideString read Get_DisplayName write Set_DisplayName;
    property Name: WideString read Get_Name write Set_Name;
    property FullName: WideString read Get_FullName write Set_FullName;
    property IsComplete: WordBool read Get_IsComplete;
    property IsRecursive: WordBool read Get_IsRecursive;
    property IsTerminable: WordBool read Get_IsTerminable;
    property Kind: DataTypeKind read Get_Kind;
    property EnumerationMembers: _EnumerationMemberCollection read Get_EnumerationMembers;
    property SizeInBits: Integer read Get_SizeInBits write Set_SizeInBits;
  end;

// *********************************************************************//
// DispIntf:  _EnumerationDataTypeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6746081D-6F7A-49C2-90A0-737D43C070A6}
// *********************************************************************//
  _EnumerationDataTypeDisp = dispinterface
    ['{6746081D-6F7A-49C2-90A0-737D43C070A6}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    function Clone: OleVariant; dispid 1610743815;
    property Description: WideString dispid 1610743816;
    property DisplayName: WideString dispid 1610743818;
    property Name: WideString dispid 1610743820;
    property FullName: WideString dispid 1610743822;
    property IsComplete: WordBool readonly dispid 1610743824;
    property IsRecursive: WordBool readonly dispid 1610743825;
    property IsTerminable: WordBool readonly dispid 1610743826;
    property Kind: DataTypeKind readonly dispid 1610743827;
    function AsEnumerationDataType: _EnumerationDataType; dispid 1610743828;
    function AsOpaqueDataType: _OpaqueDataType; dispid 1610743829;
    function AsPrimitiveDataType: _PrimitiveDataType; dispid 1610743830;
    function AsSequenceDataType: _SequenceDataType; dispid 1610743831;
    function AsStructuredDataType: _StructuredDataType; dispid 1610743832;
    function AsUnionDataType: _UnionDataType; dispid 1610743833;
    property EnumerationMembers: _EnumerationMemberCollection readonly dispid 1610743834;
    property SizeInBits: Integer dispid 1610743835;
    procedure Add(EnumerationMember: OleVariant); dispid 1610743837;
    function FindByDecimalValue(value: {NOT_OLEAUTO(TDecimal)}OleVariant): _EnumerationMember; dispid 1610743838;
    function FindByInt32Value(value: Integer): _EnumerationMember; dispid 1610743839;
    function FindByValue(value: Int64): _EnumerationMember; dispid 1610743840;
    procedure Remove(const memberName: WideString); dispid 1610743841;
  end;

// *********************************************************************//
// Interface: _EnumerationMember
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7442855C-7824-4FDC-8315-FFE2EF08404E}
// *********************************************************************//
  _EnumerationMember = interface(IDispatch)
    ['{7442855C-7824-4FDC-8315-FFE2EF08404E}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pRetVal: WideString); safecall;
    function Get_DisplayName: WideString; safecall;
    procedure Set_DisplayName(const pRetVal: WideString); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pRetVal: WideString); safecall;
    function Get_DecimalValue: TDecimal; safecall;
    procedure Set_DecimalValue(pRetVal: TDecimal); safecall;
    function Get_Int32Value: Integer; safecall;
    procedure Set_Int32Value(pRetVal: Integer); safecall;
    function Get_value: Int64; safecall;
    procedure Set_value(pRetVal: Int64); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property Description: WideString read Get_Description write Set_Description;
    property DisplayName: WideString read Get_DisplayName write Set_DisplayName;
    property Name: WideString read Get_Name write Set_Name;
    property DecimalValue: TDecimal read Get_DecimalValue write Set_DecimalValue;
    property Int32Value: Integer read Get_Int32Value write Set_Int32Value;
    property value: Int64 read Get_value write Set_value;
  end;

// *********************************************************************//
// DispIntf:  _EnumerationMemberDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7442855C-7824-4FDC-8315-FFE2EF08404E}
// *********************************************************************//
  _EnumerationMemberDisp = dispinterface
    ['{7442855C-7824-4FDC-8315-FFE2EF08404E}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    function Clone: OleVariant; dispid 1610743815;
    property Description: WideString dispid 1610743816;
    property DisplayName: WideString dispid 1610743818;
    property Name: WideString dispid 1610743820;
    property DecimalValue: {NOT_OLEAUTO(TDecimal)}OleVariant dispid 1610743822;
    property Int32Value: Integer dispid 1610743824;
    property value: Int64 dispid 1610743826;
  end;

// *********************************************************************//
// Interface: _OpaqueDataType
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {375B5E24-6479-4B15-B32F-C01F95AEBC88}
// *********************************************************************//
  _OpaqueDataType = interface(IDispatch)
    ['{375B5E24-6479-4B15-B32F-C01F95AEBC88}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pRetVal: WideString); safecall;
    function Get_DisplayName: WideString; safecall;
    procedure Set_DisplayName(const pRetVal: WideString); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pRetVal: WideString); safecall;
    function Get_FullName: WideString; safecall;
    procedure Set_FullName(const pRetVal: WideString); safecall;
    function Get_IsComplete: WordBool; safecall;
    function Get_IsRecursive: WordBool; safecall;
    function Get_IsTerminable: WordBool; safecall;
    function Get_Kind: DataTypeKind; safecall;
    function AsEnumerationDataType: _EnumerationDataType; safecall;
    function AsOpaqueDataType: _OpaqueDataType; safecall;
    function AsPrimitiveDataType: _PrimitiveDataType; safecall;
    function AsSequenceDataType: _SequenceDataType; safecall;
    function AsStructuredDataType: _StructuredDataType; safecall;
    function AsUnionDataType: _UnionDataType; safecall;
    function Get_SizeInBits: Integer; safecall;
    procedure Set_SizeInBits(pRetVal: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property Description: WideString read Get_Description write Set_Description;
    property DisplayName: WideString read Get_DisplayName write Set_DisplayName;
    property Name: WideString read Get_Name write Set_Name;
    property FullName: WideString read Get_FullName write Set_FullName;
    property IsComplete: WordBool read Get_IsComplete;
    property IsRecursive: WordBool read Get_IsRecursive;
    property IsTerminable: WordBool read Get_IsTerminable;
    property Kind: DataTypeKind read Get_Kind;
    property SizeInBits: Integer read Get_SizeInBits write Set_SizeInBits;
  end;

// *********************************************************************//
// DispIntf:  _OpaqueDataTypeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {375B5E24-6479-4B15-B32F-C01F95AEBC88}
// *********************************************************************//
  _OpaqueDataTypeDisp = dispinterface
    ['{375B5E24-6479-4B15-B32F-C01F95AEBC88}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    function Clone: OleVariant; dispid 1610743815;
    property Description: WideString dispid 1610743816;
    property DisplayName: WideString dispid 1610743818;
    property Name: WideString dispid 1610743820;
    property FullName: WideString dispid 1610743822;
    property IsComplete: WordBool readonly dispid 1610743824;
    property IsRecursive: WordBool readonly dispid 1610743825;
    property IsTerminable: WordBool readonly dispid 1610743826;
    property Kind: DataTypeKind readonly dispid 1610743827;
    function AsEnumerationDataType: _EnumerationDataType; dispid 1610743828;
    function AsOpaqueDataType: _OpaqueDataType; dispid 1610743829;
    function AsPrimitiveDataType: _PrimitiveDataType; dispid 1610743830;
    function AsSequenceDataType: _SequenceDataType; dispid 1610743831;
    function AsStructuredDataType: _StructuredDataType; dispid 1610743832;
    function AsUnionDataType: _UnionDataType; dispid 1610743833;
    property SizeInBits: Integer dispid 1610743834;
  end;

// *********************************************************************//
// Interface: _PrimitiveDataType
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EA15C7F8-E4C2-4690-9BF7-95DC6E845E66}
// *********************************************************************//
  _PrimitiveDataType = interface(IDispatch)
    ['{EA15C7F8-E4C2-4690-9BF7-95DC6E845E66}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pRetVal: WideString); safecall;
    function Get_DisplayName: WideString; safecall;
    procedure Set_DisplayName(const pRetVal: WideString); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pRetVal: WideString); safecall;
    function Get_FullName: WideString; safecall;
    procedure Set_FullName(const pRetVal: WideString); safecall;
    function Get_IsComplete: WordBool; safecall;
    function Get_IsRecursive: WordBool; safecall;
    function Get_IsTerminable: WordBool; safecall;
    function Get_Kind: DataTypeKind; safecall;
    function AsEnumerationDataType: _EnumerationDataType; safecall;
    function AsOpaqueDataType: _OpaqueDataType; safecall;
    function AsPrimitiveDataType: _PrimitiveDataType; safecall;
    function AsSequenceDataType: _SequenceDataType; safecall;
    function AsStructuredDataType: _StructuredDataType; safecall;
    function AsUnionDataType: _UnionDataType; safecall;
    function Get_ValueType: _Type; safecall;
    procedure _Set_ValueType(const pRetVal: _Type); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property Description: WideString read Get_Description write Set_Description;
    property DisplayName: WideString read Get_DisplayName write Set_DisplayName;
    property Name: WideString read Get_Name write Set_Name;
    property FullName: WideString read Get_FullName write Set_FullName;
    property IsComplete: WordBool read Get_IsComplete;
    property IsRecursive: WordBool read Get_IsRecursive;
    property IsTerminable: WordBool read Get_IsTerminable;
    property Kind: DataTypeKind read Get_Kind;
    property ValueType: _Type read Get_ValueType write _Set_ValueType;
  end;

// *********************************************************************//
// DispIntf:  _PrimitiveDataTypeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EA15C7F8-E4C2-4690-9BF7-95DC6E845E66}
// *********************************************************************//
  _PrimitiveDataTypeDisp = dispinterface
    ['{EA15C7F8-E4C2-4690-9BF7-95DC6E845E66}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    function Clone: OleVariant; dispid 1610743815;
    property Description: WideString dispid 1610743816;
    property DisplayName: WideString dispid 1610743818;
    property Name: WideString dispid 1610743820;
    property FullName: WideString dispid 1610743822;
    property IsComplete: WordBool readonly dispid 1610743824;
    property IsRecursive: WordBool readonly dispid 1610743825;
    property IsTerminable: WordBool readonly dispid 1610743826;
    property Kind: DataTypeKind readonly dispid 1610743827;
    function AsEnumerationDataType: _EnumerationDataType; dispid 1610743828;
    function AsOpaqueDataType: _OpaqueDataType; dispid 1610743829;
    function AsPrimitiveDataType: _PrimitiveDataType; dispid 1610743830;
    function AsSequenceDataType: _SequenceDataType; dispid 1610743831;
    function AsStructuredDataType: _StructuredDataType; dispid 1610743832;
    function AsUnionDataType: _UnionDataType; dispid 1610743833;
    property ValueType: _Type dispid 1610743834;
  end;

// *********************************************************************//
// Interface: _SequenceDataType
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {33EDCFCB-4063-44E7-A9FC-40267F72818B}
// *********************************************************************//
  _SequenceDataType = interface(IDispatch)
    ['{33EDCFCB-4063-44E7-A9FC-40267F72818B}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pRetVal: WideString); safecall;
    function Get_DisplayName: WideString; safecall;
    procedure Set_DisplayName(const pRetVal: WideString); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pRetVal: WideString); safecall;
    function Get_FullName: WideString; safecall;
    procedure Set_FullName(const pRetVal: WideString); safecall;
    function Get_IsComplete: WordBool; safecall;
    function Get_IsRecursive: WordBool; safecall;
    function Get_IsTerminable: WordBool; safecall;
    function Get_Kind: DataTypeKind; safecall;
    function AsEnumerationDataType: _EnumerationDataType; safecall;
    function AsOpaqueDataType: _OpaqueDataType; safecall;
    function AsPrimitiveDataType: _PrimitiveDataType; safecall;
    function AsSequenceDataType: _SequenceDataType; safecall;
    function AsStructuredDataType: _StructuredDataType; safecall;
    function AsUnionDataType: _UnionDataType; safecall;
    function Get_ElementDataType: _DataType; safecall;
    procedure _Set_ElementDataType(const pRetVal: _DataType); safecall;
    function Get_Int32Length: Integer; safecall;
    procedure Set_Int32Length(pRetVal: Integer); safecall;
    function Get_IsFirstArrayDimension: WordBool; safecall;
    procedure Set_IsFirstArrayDimension(pRetVal: WordBool); safecall;
    function Get_Length: Int64; safecall;
    procedure Set_Length(pRetVal: Int64); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property Description: WideString read Get_Description write Set_Description;
    property DisplayName: WideString read Get_DisplayName write Set_DisplayName;
    property Name: WideString read Get_Name write Set_Name;
    property FullName: WideString read Get_FullName write Set_FullName;
    property IsComplete: WordBool read Get_IsComplete;
    property IsRecursive: WordBool read Get_IsRecursive;
    property IsTerminable: WordBool read Get_IsTerminable;
    property Kind: DataTypeKind read Get_Kind;
    property ElementDataType: _DataType read Get_ElementDataType write _Set_ElementDataType;
    property Int32Length: Integer read Get_Int32Length write Set_Int32Length;
    property IsFirstArrayDimension: WordBool read Get_IsFirstArrayDimension write Set_IsFirstArrayDimension;
    property Length: Int64 read Get_Length write Set_Length;
  end;

// *********************************************************************//
// DispIntf:  _SequenceDataTypeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {33EDCFCB-4063-44E7-A9FC-40267F72818B}
// *********************************************************************//
  _SequenceDataTypeDisp = dispinterface
    ['{33EDCFCB-4063-44E7-A9FC-40267F72818B}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    function Clone: OleVariant; dispid 1610743815;
    property Description: WideString dispid 1610743816;
    property DisplayName: WideString dispid 1610743818;
    property Name: WideString dispid 1610743820;
    property FullName: WideString dispid 1610743822;
    property IsComplete: WordBool readonly dispid 1610743824;
    property IsRecursive: WordBool readonly dispid 1610743825;
    property IsTerminable: WordBool readonly dispid 1610743826;
    property Kind: DataTypeKind readonly dispid 1610743827;
    function AsEnumerationDataType: _EnumerationDataType; dispid 1610743828;
    function AsOpaqueDataType: _OpaqueDataType; dispid 1610743829;
    function AsPrimitiveDataType: _PrimitiveDataType; dispid 1610743830;
    function AsSequenceDataType: _SequenceDataType; dispid 1610743831;
    function AsStructuredDataType: _StructuredDataType; dispid 1610743832;
    function AsUnionDataType: _UnionDataType; dispid 1610743833;
    property ElementDataType: _DataType dispid 1610743834;
    property Int32Length: Integer dispid 1610743836;
    property IsFirstArrayDimension: WordBool dispid 1610743838;
    property Length: Int64 dispid 1610743840;
  end;

// *********************************************************************//
// Interface: _CompositeDataType
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D35AF189-16DD-4EE7-8531-C396A415BE45}
// *********************************************************************//
  _CompositeDataType = interface(IDispatch)
    ['{D35AF189-16DD-4EE7-8531-C396A415BE45}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pRetVal: WideString); safecall;
    function Get_DisplayName: WideString; safecall;
    procedure Set_DisplayName(const pRetVal: WideString); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pRetVal: WideString); safecall;
    function Get_FullName: WideString; safecall;
    procedure Set_FullName(const pRetVal: WideString); safecall;
    function Get_IsComplete: WordBool; safecall;
    function Get_IsRecursive: WordBool; safecall;
    function Get_IsTerminable: WordBool; safecall;
    function Get_Kind: DataTypeKind; safecall;
    function AsEnumerationDataType: _EnumerationDataType; safecall;
    function AsOpaqueDataType: _OpaqueDataType; safecall;
    function AsPrimitiveDataType: _PrimitiveDataType; safecall;
    function AsSequenceDataType: _SequenceDataType; safecall;
    function AsStructuredDataType: _StructuredDataType; safecall;
    function AsUnionDataType: _UnionDataType; safecall;
    function Get_DataFields: _DataFieldCollection; safecall;
    procedure Add(DataField: OleVariant); safecall;
    procedure Remove(const fieldName: WideString); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property Description: WideString read Get_Description write Set_Description;
    property DisplayName: WideString read Get_DisplayName write Set_DisplayName;
    property Name: WideString read Get_Name write Set_Name;
    property FullName: WideString read Get_FullName write Set_FullName;
    property IsComplete: WordBool read Get_IsComplete;
    property IsRecursive: WordBool read Get_IsRecursive;
    property IsTerminable: WordBool read Get_IsTerminable;
    property Kind: DataTypeKind read Get_Kind;
    property DataFields: _DataFieldCollection read Get_DataFields;
  end;

// *********************************************************************//
// DispIntf:  _CompositeDataTypeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D35AF189-16DD-4EE7-8531-C396A415BE45}
// *********************************************************************//
  _CompositeDataTypeDisp = dispinterface
    ['{D35AF189-16DD-4EE7-8531-C396A415BE45}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    function Clone: OleVariant; dispid 1610743815;
    property Description: WideString dispid 1610743816;
    property DisplayName: WideString dispid 1610743818;
    property Name: WideString dispid 1610743820;
    property FullName: WideString dispid 1610743822;
    property IsComplete: WordBool readonly dispid 1610743824;
    property IsRecursive: WordBool readonly dispid 1610743825;
    property IsTerminable: WordBool readonly dispid 1610743826;
    property Kind: DataTypeKind readonly dispid 1610743827;
    function AsEnumerationDataType: _EnumerationDataType; dispid 1610743828;
    function AsOpaqueDataType: _OpaqueDataType; dispid 1610743829;
    function AsPrimitiveDataType: _PrimitiveDataType; dispid 1610743830;
    function AsSequenceDataType: _SequenceDataType; dispid 1610743831;
    function AsStructuredDataType: _StructuredDataType; dispid 1610743832;
    function AsUnionDataType: _UnionDataType; dispid 1610743833;
    property DataFields: _DataFieldCollection readonly dispid 1610743834;
    procedure Add(DataField: OleVariant); dispid 1610743835;
    procedure Remove(const fieldName: WideString); dispid 1610743836;
  end;

// *********************************************************************//
// Interface: _UnionDataType
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {20393A03-67F8-462B-92AB-4554FDA353F9}
// *********************************************************************//
  _UnionDataType = interface(IDispatch)
    ['{20393A03-67F8-462B-92AB-4554FDA353F9}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pRetVal: WideString); safecall;
    function Get_DisplayName: WideString; safecall;
    procedure Set_DisplayName(const pRetVal: WideString); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pRetVal: WideString); safecall;
    function Get_FullName: WideString; safecall;
    procedure Set_FullName(const pRetVal: WideString); safecall;
    function Get_IsComplete: WordBool; safecall;
    function Get_IsRecursive: WordBool; safecall;
    function Get_IsTerminable: WordBool; safecall;
    function Get_Kind: DataTypeKind; safecall;
    function AsEnumerationDataType: _EnumerationDataType; safecall;
    function AsOpaqueDataType: _OpaqueDataType; safecall;
    function AsPrimitiveDataType: _PrimitiveDataType; safecall;
    function AsSequenceDataType: _SequenceDataType; safecall;
    function AsStructuredDataType: _StructuredDataType; safecall;
    function AsUnionDataType: _UnionDataType; safecall;
    function Get_DataFields: _DataFieldCollection; safecall;
    procedure Add(DataField: OleVariant); safecall;
    procedure Remove(const fieldName: WideString); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property Description: WideString read Get_Description write Set_Description;
    property DisplayName: WideString read Get_DisplayName write Set_DisplayName;
    property Name: WideString read Get_Name write Set_Name;
    property FullName: WideString read Get_FullName write Set_FullName;
    property IsComplete: WordBool read Get_IsComplete;
    property IsRecursive: WordBool read Get_IsRecursive;
    property IsTerminable: WordBool read Get_IsTerminable;
    property Kind: DataTypeKind read Get_Kind;
    property DataFields: _DataFieldCollection read Get_DataFields;
  end;

// *********************************************************************//
// DispIntf:  _UnionDataTypeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {20393A03-67F8-462B-92AB-4554FDA353F9}
// *********************************************************************//
  _UnionDataTypeDisp = dispinterface
    ['{20393A03-67F8-462B-92AB-4554FDA353F9}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    function Clone: OleVariant; dispid 1610743815;
    property Description: WideString dispid 1610743816;
    property DisplayName: WideString dispid 1610743818;
    property Name: WideString dispid 1610743820;
    property FullName: WideString dispid 1610743822;
    property IsComplete: WordBool readonly dispid 1610743824;
    property IsRecursive: WordBool readonly dispid 1610743825;
    property IsTerminable: WordBool readonly dispid 1610743826;
    property Kind: DataTypeKind readonly dispid 1610743827;
    function AsEnumerationDataType: _EnumerationDataType; dispid 1610743828;
    function AsOpaqueDataType: _OpaqueDataType; dispid 1610743829;
    function AsPrimitiveDataType: _PrimitiveDataType; dispid 1610743830;
    function AsSequenceDataType: _SequenceDataType; dispid 1610743831;
    function AsStructuredDataType: _StructuredDataType; dispid 1610743832;
    function AsUnionDataType: _UnionDataType; dispid 1610743833;
    property DataFields: _DataFieldCollection readonly dispid 1610743834;
    procedure Add(DataField: OleVariant); dispid 1610743835;
    procedure Remove(const fieldName: WideString); dispid 1610743836;
  end;

// *********************************************************************//
// Interface: _GenericData
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {07983241-E75C-4DB4-A12B-5B439DB4D689}
// *********************************************************************//
  _GenericData = interface(IDispatch)
    ['{07983241-E75C-4DB4-A12B-5B439DB4D689}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_DataType: _DataType; safecall;
    procedure _Set_DataType(const pRetVal: _DataType); safecall;
    function Get_DataTypeKind: DataTypeKind; safecall;
    function Get_IsValid: WordBool; safecall;
    function AsEnumerationData: _EnumerationData; safecall;
    function AsOpaqueData: _OpaqueData; safecall;
    function AsPrimitiveData: _PrimitiveData; safecall;
    function AsSequenceData: _SequenceData; safecall;
    function AsStructuredData: _StructuredData; safecall;
    function AsUnionData: _UnionData; safecall;
    function TryValidate: _Exception; safecall;
    procedure Validate; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property DataType: _DataType read Get_DataType write _Set_DataType;
    property DataTypeKind: DataTypeKind read Get_DataTypeKind;
    property IsValid: WordBool read Get_IsValid;
  end;

// *********************************************************************//
// DispIntf:  _GenericDataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {07983241-E75C-4DB4-A12B-5B439DB4D689}
// *********************************************************************//
  _GenericDataDisp = dispinterface
    ['{07983241-E75C-4DB4-A12B-5B439DB4D689}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    function Clone: OleVariant; dispid 1610743815;
    property DataType: _DataType dispid 1610743816;
    property DataTypeKind: DataTypeKind readonly dispid 1610743818;
    property IsValid: WordBool readonly dispid 1610743819;
    function AsEnumerationData: _EnumerationData; dispid 1610743820;
    function AsOpaqueData: _OpaqueData; dispid 1610743821;
    function AsPrimitiveData: _PrimitiveData; dispid 1610743822;
    function AsSequenceData: _SequenceData; dispid 1610743823;
    function AsStructuredData: _StructuredData; dispid 1610743824;
    function AsUnionData: _UnionData; dispid 1610743825;
    function TryValidate: _Exception; dispid 1610743826;
    procedure Validate; dispid 1610743827;
  end;

// *********************************************************************//
// Interface: _FieldDataDictionary
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {231B964F-84F5-4CD7-92A2-BCD83B7599E2}
// *********************************************************************//
  _FieldDataDictionary = interface(IDispatch)
    ['{231B964F-84F5-4CD7-92A2-BCD83B7599E2}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(key: OleVariant): _GenericData; safecall;
    procedure _Set_Item(key: OleVariant; const pRetVal: _GenericData); safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(key: OleVariant; Item: OleVariant); safecall;
    procedure Clear; safecall;
    function ContainsKey(key: OleVariant): WordBool; safecall;
    function Remove(key: OleVariant): WordBool; safecall;
    function TryGetValue(key: OleVariant; out value: OleVariant): WordBool; safecall;
    function ContainsValue(value: OleVariant): WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property Item[key: OleVariant]: _GenericData read Get_Item write _Set_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _FieldDataDictionaryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {231B964F-84F5-4CD7-92A2-BCD83B7599E2}
// *********************************************************************//
  _FieldDataDictionaryDisp = dispinterface
    ['{231B964F-84F5-4CD7-92A2-BCD83B7599E2}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[key: OleVariant]: _GenericData dispid 0; default;
    property Count: Integer readonly dispid 1610743814;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(key: OleVariant; Item: OleVariant); dispid 1610743816;
    procedure Clear; dispid 1610743817;
    function ContainsKey(key: OleVariant): WordBool; dispid 1610743818;
    function Remove(key: OleVariant): WordBool; dispid 1610743819;
    function TryGetValue(key: OleVariant; out value: OleVariant): WordBool; dispid 1610743820;
    function ContainsValue(value: OleVariant): WordBool; dispid 1610743821;
  end;

// *********************************************************************//
// Interface: _GenericDataCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AF1573C3-B4BD-4ABD-A5DF-F1B32A24B513}
// *********************************************************************//
  _GenericDataCollection = interface(IDispatch)
    ['{AF1573C3-B4BD-4ABD-A5DF-F1B32A24B513}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(index: Integer): _GenericData; safecall;
    procedure _Set_Item(index: Integer; const pRetVal: _GenericData); safecall;
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
    property Item[index: Integer]: _GenericData read Get_Item write _Set_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _GenericDataCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AF1573C3-B4BD-4ABD-A5DF-F1B32A24B513}
// *********************************************************************//
  _GenericDataCollectionDisp = dispinterface
    ['{AF1573C3-B4BD-4ABD-A5DF-F1B32A24B513}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[index: Integer]: _GenericData dispid 0; default;
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
// Interface: _OpaqueData
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F168F0AD-4947-491D-8602-3FF9BF934FFE}
// *********************************************************************//
  _OpaqueData = interface(IDispatch)
    ['{F168F0AD-4947-491D-8602-3FF9BF934FFE}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_DataTypeKind: DataTypeKind; safecall;
    function Get_IsValid: WordBool; safecall;
    function AsEnumerationData: _EnumerationData; safecall;
    function AsOpaqueData: _OpaqueData; safecall;
    function AsPrimitiveData: _PrimitiveData; safecall;
    function AsSequenceData: _SequenceData; safecall;
    function AsStructuredData: _StructuredData; safecall;
    function AsUnionData: _UnionData; safecall;
    function TryValidate: _Exception; safecall;
    procedure Validate; safecall;
    function Get_ByteArray: PSafeArray; safecall;
    function Get_DataType: _OpaqueDataType; safecall;
    procedure _Set_DataType(const pRetVal: _OpaqueDataType); safecall;
    function Get_value: _BitArray; safecall;
    procedure _Set_value(const pRetVal: _BitArray); safecall;
    function Get_SizeInBits: Integer; safecall;
    procedure SetByteArrayValue(ByteArray: OleVariant; SizeInBits: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property DataTypeKind: DataTypeKind read Get_DataTypeKind;
    property IsValid: WordBool read Get_IsValid;
    property ByteArray: PSafeArray read Get_ByteArray;
    property DataType: _OpaqueDataType read Get_DataType write _Set_DataType;
    property value: _BitArray read Get_value write _Set_value;
    property SizeInBits: Integer read Get_SizeInBits;
  end;

// *********************************************************************//
// DispIntf:  _OpaqueDataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F168F0AD-4947-491D-8602-3FF9BF934FFE}
// *********************************************************************//
  _OpaqueDataDisp = dispinterface
    ['{F168F0AD-4947-491D-8602-3FF9BF934FFE}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    function Clone: OleVariant; dispid 1610743815;
    property DataTypeKind: DataTypeKind readonly dispid 1610743816;
    property IsValid: WordBool readonly dispid 1610743817;
    function AsEnumerationData: _EnumerationData; dispid 1610743818;
    function AsOpaqueData: _OpaqueData; dispid 1610743819;
    function AsPrimitiveData: _PrimitiveData; dispid 1610743820;
    function AsSequenceData: _SequenceData; dispid 1610743821;
    function AsStructuredData: _StructuredData; dispid 1610743822;
    function AsUnionData: _UnionData; dispid 1610743823;
    function TryValidate: _Exception; dispid 1610743824;
    procedure Validate; dispid 1610743825;
    property ByteArray: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743826;
    property DataType: _OpaqueDataType dispid 1610743827;
    property value: _BitArray dispid 1610743829;
    property SizeInBits: Integer readonly dispid 1610743831;
    procedure SetByteArrayValue(ByteArray: OleVariant; SizeInBits: Integer); dispid 1610743832;
  end;

// *********************************************************************//
// Interface: _PrimitiveData
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {41A6A86C-CAD0-4B62-B75F-4B66D0DF4F74}
// *********************************************************************//
  _PrimitiveData = interface(IDispatch)
    ['{41A6A86C-CAD0-4B62-B75F-4B66D0DF4F74}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_DataTypeKind: DataTypeKind; safecall;
    function Get_IsValid: WordBool; safecall;
    function AsEnumerationData: _EnumerationData; safecall;
    function AsOpaqueData: _OpaqueData; safecall;
    function AsPrimitiveData: _PrimitiveData; safecall;
    function AsSequenceData: _SequenceData; safecall;
    function AsStructuredData: _StructuredData; safecall;
    function AsUnionData: _UnionData; safecall;
    function TryValidate: _Exception; safecall;
    procedure Validate; safecall;
    function Get_DataType: _PrimitiveDataType; safecall;
    procedure _Set_DataType(const pRetVal: _PrimitiveDataType); safecall;
    function Get_value: OleVariant; safecall;
    procedure _Set_value(pRetVal: OleVariant); safecall;
    procedure SetValue(value: OleVariant); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property DataTypeKind: DataTypeKind read Get_DataTypeKind;
    property IsValid: WordBool read Get_IsValid;
    property DataType: _PrimitiveDataType read Get_DataType write _Set_DataType;
    property value: OleVariant read Get_value write _Set_value;
  end;

// *********************************************************************//
// DispIntf:  _PrimitiveDataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {41A6A86C-CAD0-4B62-B75F-4B66D0DF4F74}
// *********************************************************************//
  _PrimitiveDataDisp = dispinterface
    ['{41A6A86C-CAD0-4B62-B75F-4B66D0DF4F74}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    function Clone: OleVariant; dispid 1610743815;
    property DataTypeKind: DataTypeKind readonly dispid 1610743816;
    property IsValid: WordBool readonly dispid 1610743817;
    function AsEnumerationData: _EnumerationData; dispid 1610743818;
    function AsOpaqueData: _OpaqueData; dispid 1610743819;
    function AsPrimitiveData: _PrimitiveData; dispid 1610743820;
    function AsSequenceData: _SequenceData; dispid 1610743821;
    function AsStructuredData: _StructuredData; dispid 1610743822;
    function AsUnionData: _UnionData; dispid 1610743823;
    function TryValidate: _Exception; dispid 1610743824;
    procedure Validate; dispid 1610743825;
    property DataType: _PrimitiveDataType dispid 1610743826;
    property value: OleVariant dispid 1610743828;
    procedure SetValue(value: OleVariant); dispid 1610743830;
  end;

// *********************************************************************//
// Interface: _SequenceData
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {545A60F1-2D18-4B0F-A133-B77076CC74F3}
// *********************************************************************//
  _SequenceData = interface(IDispatch)
    ['{545A60F1-2D18-4B0F-A133-B77076CC74F3}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_DataTypeKind: DataTypeKind; safecall;
    function Get_IsValid: WordBool; safecall;
    function AsEnumerationData: _EnumerationData; safecall;
    function AsOpaqueData: _OpaqueData; safecall;
    function AsPrimitiveData: _PrimitiveData; safecall;
    function AsSequenceData: _SequenceData; safecall;
    function AsStructuredData: _StructuredData; safecall;
    function AsUnionData: _UnionData; safecall;
    function TryValidate: _Exception; safecall;
    procedure Validate; safecall;
    function Get_DataType: _SequenceDataType; safecall;
    procedure _Set_DataType(const pRetVal: _SequenceDataType); safecall;
    function Get_Elements: _GenericDataCollection; safecall;
    procedure _Set_Elements(const pRetVal: _GenericDataCollection); safecall;
    procedure Add(GenericData: OleVariant); safecall;
    function GetMinimumLengths: PSafeArray; safecall;
    function GetMinimumLongLengths: PSafeArray; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property DataTypeKind: DataTypeKind read Get_DataTypeKind;
    property IsValid: WordBool read Get_IsValid;
    property DataType: _SequenceDataType read Get_DataType write _Set_DataType;
    property Elements: _GenericDataCollection read Get_Elements write _Set_Elements;
  end;

// *********************************************************************//
// DispIntf:  _SequenceDataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {545A60F1-2D18-4B0F-A133-B77076CC74F3}
// *********************************************************************//
  _SequenceDataDisp = dispinterface
    ['{545A60F1-2D18-4B0F-A133-B77076CC74F3}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    function Clone: OleVariant; dispid 1610743815;
    property DataTypeKind: DataTypeKind readonly dispid 1610743816;
    property IsValid: WordBool readonly dispid 1610743817;
    function AsEnumerationData: _EnumerationData; dispid 1610743818;
    function AsOpaqueData: _OpaqueData; dispid 1610743819;
    function AsPrimitiveData: _PrimitiveData; dispid 1610743820;
    function AsSequenceData: _SequenceData; dispid 1610743821;
    function AsStructuredData: _StructuredData; dispid 1610743822;
    function AsUnionData: _UnionData; dispid 1610743823;
    function TryValidate: _Exception; dispid 1610743824;
    procedure Validate; dispid 1610743825;
    property DataType: _SequenceDataType dispid 1610743826;
    property Elements: _GenericDataCollection dispid 1610743828;
    procedure Add(GenericData: OleVariant); dispid 1610743830;
    function GetMinimumLengths: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743831;
    function GetMinimumLongLengths: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743832;
  end;

// *********************************************************************//
// Interface: _StructuredData
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {06FAF3F8-2299-4846-AC16-AC133C3A5871}
// *********************************************************************//
  _StructuredData = interface(IDispatch)
    ['{06FAF3F8-2299-4846-AC16-AC133C3A5871}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_DataTypeKind: DataTypeKind; safecall;
    function Get_IsValid: WordBool; safecall;
    function AsEnumerationData: _EnumerationData; safecall;
    function AsOpaqueData: _OpaqueData; safecall;
    function AsPrimitiveData: _PrimitiveData; safecall;
    function AsSequenceData: _SequenceData; safecall;
    function AsStructuredData: _StructuredData; safecall;
    function AsUnionData: _UnionData; safecall;
    function TryValidate: _Exception; safecall;
    procedure Validate; safecall;
    function Get_DataType: _StructuredDataType; safecall;
    procedure _Set_DataType(const pRetVal: _StructuredDataType); safecall;
    function Get_FieldData: _FieldDataDictionary; safecall;
    procedure _Set_FieldData(const pRetVal: _FieldDataDictionary); safecall;
    procedure Add(const fieldName: WideString; GenericData: OleVariant); safecall;
    procedure Remove(const fieldName: WideString); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property DataTypeKind: DataTypeKind read Get_DataTypeKind;
    property IsValid: WordBool read Get_IsValid;
    property DataType: _StructuredDataType read Get_DataType write _Set_DataType;
    property FieldData: _FieldDataDictionary read Get_FieldData write _Set_FieldData;
  end;

// *********************************************************************//
// DispIntf:  _StructuredDataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {06FAF3F8-2299-4846-AC16-AC133C3A5871}
// *********************************************************************//
  _StructuredDataDisp = dispinterface
    ['{06FAF3F8-2299-4846-AC16-AC133C3A5871}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    function Clone: OleVariant; dispid 1610743815;
    property DataTypeKind: DataTypeKind readonly dispid 1610743816;
    property IsValid: WordBool readonly dispid 1610743817;
    function AsEnumerationData: _EnumerationData; dispid 1610743818;
    function AsOpaqueData: _OpaqueData; dispid 1610743819;
    function AsPrimitiveData: _PrimitiveData; dispid 1610743820;
    function AsSequenceData: _SequenceData; dispid 1610743821;
    function AsStructuredData: _StructuredData; dispid 1610743822;
    function AsUnionData: _UnionData; dispid 1610743823;
    function TryValidate: _Exception; dispid 1610743824;
    procedure Validate; dispid 1610743825;
    property DataType: _StructuredDataType dispid 1610743826;
    property FieldData: _FieldDataDictionary dispid 1610743828;
    procedure Add(const fieldName: WideString; GenericData: OleVariant); dispid 1610743830;
    procedure Remove(const fieldName: WideString); dispid 1610743831;
  end;

// *********************************************************************//
// Interface: _UnionData
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4B9B4274-0081-41B6-9C18-FC60DD453CFF}
// *********************************************************************//
  _UnionData = interface(IDispatch)
    ['{4B9B4274-0081-41B6-9C18-FC60DD453CFF}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_DataTypeKind: DataTypeKind; safecall;
    function Get_IsValid: WordBool; safecall;
    function AsEnumerationData: _EnumerationData; safecall;
    function AsOpaqueData: _OpaqueData; safecall;
    function AsPrimitiveData: _PrimitiveData; safecall;
    function AsSequenceData: _SequenceData; safecall;
    function AsStructuredData: _StructuredData; safecall;
    function AsUnionData: _UnionData; safecall;
    function TryValidate: _Exception; safecall;
    procedure Validate; safecall;
    function Get_CurrentField: _DataField; safecall;
    function Get_DataType: _UnionDataType; safecall;
    procedure _Set_DataType(const pRetVal: _UnionDataType); safecall;
    function Get_fieldName: WideString; safecall;
    procedure Set_fieldName(const pRetVal: WideString); safecall;
    function Get_FieldValue: _GenericData; safecall;
    procedure _Set_FieldValue(const pRetVal: _GenericData); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property DataTypeKind: DataTypeKind read Get_DataTypeKind;
    property IsValid: WordBool read Get_IsValid;
    property CurrentField: _DataField read Get_CurrentField;
    property DataType: _UnionDataType read Get_DataType write _Set_DataType;
    property fieldName: WideString read Get_fieldName write Set_fieldName;
    property FieldValue: _GenericData read Get_FieldValue write _Set_FieldValue;
  end;

// *********************************************************************//
// DispIntf:  _UnionDataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4B9B4274-0081-41B6-9C18-FC60DD453CFF}
// *********************************************************************//
  _UnionDataDisp = dispinterface
    ['{4B9B4274-0081-41B6-9C18-FC60DD453CFF}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    function Clone: OleVariant; dispid 1610743815;
    property DataTypeKind: DataTypeKind readonly dispid 1610743816;
    property IsValid: WordBool readonly dispid 1610743817;
    function AsEnumerationData: _EnumerationData; dispid 1610743818;
    function AsOpaqueData: _OpaqueData; dispid 1610743819;
    function AsPrimitiveData: _PrimitiveData; dispid 1610743820;
    function AsSequenceData: _SequenceData; dispid 1610743821;
    function AsStructuredData: _StructuredData; dispid 1610743822;
    function AsUnionData: _UnionData; dispid 1610743823;
    function TryValidate: _Exception; dispid 1610743824;
    procedure Validate; dispid 1610743825;
    property CurrentField: _DataField readonly dispid 1610743826;
    property DataType: _UnionDataType dispid 1610743827;
    property fieldName: WideString dispid 1610743829;
    property FieldValue: _GenericData dispid 1610743831;
  end;

// *********************************************************************//
// Interface: _StructuredDataType
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DA398E68-F727-4C12-A817-994154AF7C24}
// *********************************************************************//
  _StructuredDataType = interface(IDispatch)
    ['{DA398E68-F727-4C12-A817-994154AF7C24}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pRetVal: WideString); safecall;
    function Get_DisplayName: WideString; safecall;
    procedure Set_DisplayName(const pRetVal: WideString); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pRetVal: WideString); safecall;
    function Get_FullName: WideString; safecall;
    procedure Set_FullName(const pRetVal: WideString); safecall;
    function Get_IsComplete: WordBool; safecall;
    function Get_IsRecursive: WordBool; safecall;
    function Get_IsTerminable: WordBool; safecall;
    function Get_Kind: DataTypeKind; safecall;
    function AsEnumerationDataType: _EnumerationDataType; safecall;
    function AsOpaqueDataType: _OpaqueDataType; safecall;
    function AsPrimitiveDataType: _PrimitiveDataType; safecall;
    function AsSequenceDataType: _SequenceDataType; safecall;
    function AsStructuredDataType: _StructuredDataType; safecall;
    function AsUnionDataType: _UnionDataType; safecall;
    function Get_DataFields: _DataFieldCollection; safecall;
    procedure Add(DataField: OleVariant); safecall;
    procedure Remove(const fieldName: WideString); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property Description: WideString read Get_Description write Set_Description;
    property DisplayName: WideString read Get_DisplayName write Set_DisplayName;
    property Name: WideString read Get_Name write Set_Name;
    property FullName: WideString read Get_FullName write Set_FullName;
    property IsComplete: WordBool read Get_IsComplete;
    property IsRecursive: WordBool read Get_IsRecursive;
    property IsTerminable: WordBool read Get_IsTerminable;
    property Kind: DataTypeKind read Get_Kind;
    property DataFields: _DataFieldCollection read Get_DataFields;
  end;

// *********************************************************************//
// DispIntf:  _StructuredDataTypeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DA398E68-F727-4C12-A817-994154AF7C24}
// *********************************************************************//
  _StructuredDataTypeDisp = dispinterface
    ['{DA398E68-F727-4C12-A817-994154AF7C24}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    function Clone: OleVariant; dispid 1610743815;
    property Description: WideString dispid 1610743816;
    property DisplayName: WideString dispid 1610743818;
    property Name: WideString dispid 1610743820;
    property FullName: WideString dispid 1610743822;
    property IsComplete: WordBool readonly dispid 1610743824;
    property IsRecursive: WordBool readonly dispid 1610743825;
    property IsTerminable: WordBool readonly dispid 1610743826;
    property Kind: DataTypeKind readonly dispid 1610743827;
    function AsEnumerationDataType: _EnumerationDataType; dispid 1610743828;
    function AsOpaqueDataType: _OpaqueDataType; dispid 1610743829;
    function AsPrimitiveDataType: _PrimitiveDataType; dispid 1610743830;
    function AsSequenceDataType: _SequenceDataType; dispid 1610743831;
    function AsStructuredDataType: _StructuredDataType; dispid 1610743832;
    function AsUnionDataType: _UnionDataType; dispid 1610743833;
    property DataFields: _DataFieldCollection readonly dispid 1610743834;
    procedure Add(DataField: OleVariant); dispid 1610743835;
    procedure Remove(const fieldName: WideString); dispid 1610743836;
  end;

// *********************************************************************//
// Interface: _DataField
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F11C7BAA-720C-4C4C-AABC-A8D59D7A9D3B}
// *********************************************************************//
  _DataField = interface(IDispatch)
    ['{F11C7BAA-720C-4C4C-AABC-A8D59D7A9D3B}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pRetVal: WideString); safecall;
    function Get_DisplayName: WideString; safecall;
    procedure Set_DisplayName(const pRetVal: WideString); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pRetVal: WideString); safecall;
    function Get_DataType: _DataType; safecall;
    procedure _Set_DataType(const pRetVal: _DataType); safecall;
    function Get_IsComplete: WordBool; safecall;
    function Get_IsTerminable: WordBool; safecall;
    function Get_IsLength: WordBool; safecall;
    procedure Set_IsLength(pRetVal: WordBool); safecall;
    function Get_IsOptional: WordBool; safecall;
    procedure Set_IsOptional(pRetVal: WordBool); safecall;
    function Get_IsSwitch: WordBool; safecall;
    procedure Set_IsSwitch(pRetVal: WordBool); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property Description: WideString read Get_Description write Set_Description;
    property DisplayName: WideString read Get_DisplayName write Set_DisplayName;
    property Name: WideString read Get_Name write Set_Name;
    property DataType: _DataType read Get_DataType write _Set_DataType;
    property IsComplete: WordBool read Get_IsComplete;
    property IsTerminable: WordBool read Get_IsTerminable;
    property IsLength: WordBool read Get_IsLength write Set_IsLength;
    property IsOptional: WordBool read Get_IsOptional write Set_IsOptional;
    property IsSwitch: WordBool read Get_IsSwitch write Set_IsSwitch;
  end;

// *********************************************************************//
// DispIntf:  _DataFieldDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F11C7BAA-720C-4C4C-AABC-A8D59D7A9D3B}
// *********************************************************************//
  _DataFieldDisp = dispinterface
    ['{F11C7BAA-720C-4C4C-AABC-A8D59D7A9D3B}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    function Clone: OleVariant; dispid 1610743815;
    property Description: WideString dispid 1610743816;
    property DisplayName: WideString dispid 1610743818;
    property Name: WideString dispid 1610743820;
    property DataType: _DataType dispid 1610743822;
    property IsComplete: WordBool readonly dispid 1610743824;
    property IsTerminable: WordBool readonly dispid 1610743825;
    property IsLength: WordBool dispid 1610743826;
    property IsOptional: WordBool dispid 1610743828;
    property IsSwitch: WordBool dispid 1610743830;
  end;

// *********************************************************************//
// Interface: _EnumerationData
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BB94F29A-BD26-4ADA-A7F2-1F41BB39A3CA}
// *********************************************************************//
  _EnumerationData = interface(IDispatch)
    ['{BB94F29A-BD26-4ADA-A7F2-1F41BB39A3CA}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_ToString_2(const format: WideString; const formatProvider: IFormatProvider): WideString; safecall;
    function Get_ToString_3(const format: WideString): WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_DataTypeKind: DataTypeKind; safecall;
    function Get_IsValid: WordBool; safecall;
    function AsEnumerationData: _EnumerationData; safecall;
    function AsOpaqueData: _OpaqueData; safecall;
    function AsPrimitiveData: _PrimitiveData; safecall;
    function AsSequenceData: _SequenceData; safecall;
    function AsStructuredData: _StructuredData; safecall;
    function AsUnionData: _UnionData; safecall;
    function TryValidate: _Exception; safecall;
    procedure Validate; safecall;
    function Get_DataType: _EnumerationDataType; safecall;
    procedure _Set_DataType(const pRetVal: _EnumerationDataType); safecall;
    function Get_DecimalValue: TDecimal; safecall;
    procedure Set_DecimalValue(pRetVal: TDecimal); safecall;
    function Get_Int32Value: Integer; safecall;
    procedure Set_Int32Value(pRetVal: Integer); safecall;
    function Get_value: Int64; safecall;
    procedure Set_value(pRetVal: Int64); safecall;
    function Get_ValueDisplayName: WideString; safecall;
    function Get_ValueName: WideString; safecall;
    function GetBitArray(bitCount: Integer): _BitArray; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString read Get_ToString_2;
    property ToString_3[const format: WideString]: WideString read Get_ToString_3;
    property DataTypeKind: DataTypeKind read Get_DataTypeKind;
    property IsValid: WordBool read Get_IsValid;
    property DataType: _EnumerationDataType read Get_DataType write _Set_DataType;
    property DecimalValue: TDecimal read Get_DecimalValue write Set_DecimalValue;
    property Int32Value: Integer read Get_Int32Value write Set_Int32Value;
    property value: Int64 read Get_value write Set_value;
    property ValueDisplayName: WideString read Get_ValueDisplayName;
    property ValueName: WideString read Get_ValueName;
  end;

// *********************************************************************//
// DispIntf:  _EnumerationDataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BB94F29A-BD26-4ADA-A7F2-1F41BB39A3CA}
// *********************************************************************//
  _EnumerationDataDisp = dispinterface
    ['{BB94F29A-BD26-4ADA-A7F2-1F41BB39A3CA}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property ToString_2[const format: WideString; const formatProvider: IFormatProvider]: WideString readonly dispid 1610743813;
    property ToString_3[const format: WideString]: WideString readonly dispid 1610743814;
    function Clone: OleVariant; dispid 1610743815;
    property DataTypeKind: DataTypeKind readonly dispid 1610743816;
    property IsValid: WordBool readonly dispid 1610743817;
    function AsEnumerationData: _EnumerationData; dispid 1610743818;
    function AsOpaqueData: _OpaqueData; dispid 1610743819;
    function AsPrimitiveData: _PrimitiveData; dispid 1610743820;
    function AsSequenceData: _SequenceData; dispid 1610743821;
    function AsStructuredData: _StructuredData; dispid 1610743822;
    function AsUnionData: _UnionData; dispid 1610743823;
    function TryValidate: _Exception; dispid 1610743824;
    procedure Validate; dispid 1610743825;
    property DataType: _EnumerationDataType dispid 1610743826;
    property DecimalValue: {NOT_OLEAUTO(TDecimal)}OleVariant dispid 1610743828;
    property Int32Value: Integer dispid 1610743830;
    property value: Int64 dispid 1610743832;
    property ValueDisplayName: WideString readonly dispid 1610743834;
    property ValueName: WideString readonly dispid 1610743835;
    function GetBitArray(bitCount: Integer): _BitArray; dispid 1610743836;
  end;

// *********************************************************************//
// Interface: _ConsoleInteractionParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {017F7C43-FE54-45E5-AAFF-FA92BA5BABEC}
// *********************************************************************//
  _ConsoleInteractionParameters = interface(IDispatch)
    ['{017F7C43-FE54-45E5-AAFF-FA92BA5BABEC}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_ColorizeOutput: WordBool; safecall;
    procedure Set_ColorizeOutput(pRetVal: WordBool); safecall;
    procedure Reset; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property ColorizeOutput: WordBool read Get_ColorizeOutput write Set_ColorizeOutput;
  end;

// *********************************************************************//
// DispIntf:  _ConsoleInteractionParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {017F7C43-FE54-45E5-AAFF-FA92BA5BABEC}
// *********************************************************************//
  _ConsoleInteractionParametersDisp = dispinterface
    ['{017F7C43-FE54-45E5-AAFF-FA92BA5BABEC}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property ColorizeOutput: WordBool dispid 1610743816;
    procedure Reset; dispid 1610743818;
  end;

// *********************************************************************//
// Interface: _ConfigurationPartCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {85798EAB-F57B-43B4-8DCA-198DB4F40B74}
// *********************************************************************//
  _ConfigurationPartCollection = interface(IDispatch)
    ['{85798EAB-F57B-43B4-8DCA-198DB4F40B74}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(const key: WideString): OleVariant; safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(Item: OleVariant); safecall;
    procedure Clear; safecall;
    function Contains(Item: OleVariant): WordBool; safecall;
    function IndexOf(Item: OleVariant): Integer; safecall;
    function Remove(const key: WideString): WordBool; safecall;
    procedure RemoveAt(index: Integer); safecall;
    function ToList: _ElasticVector; safecall;
    function TryGetValue(const key: WideString; out Item: OleVariant): WordBool; safecall;
    function Clone: OleVariant; safecall;
    function Find(const typeName: WideString): OleVariant; safecall;
    function FindByName(const Name: WideString; ignoreCase: WordBool): OleVariant; safecall;
    property ToString: WideString read Get_ToString;
    property Item[const key: WideString]: OleVariant read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _ConfigurationPartCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {85798EAB-F57B-43B4-8DCA-198DB4F40B74}
// *********************************************************************//
  _ConfigurationPartCollectionDisp = dispinterface
    ['{85798EAB-F57B-43B4-8DCA-198DB4F40B74}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[const key: WideString]: OleVariant readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743813;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(Item: OleVariant); dispid 1610743815;
    procedure Clear; dispid 1610743816;
    function Contains(Item: OleVariant): WordBool; dispid 1610743817;
    function IndexOf(Item: OleVariant): Integer; dispid 1610743818;
    function Remove(const key: WideString): WordBool; dispid 1610743819;
    procedure RemoveAt(index: Integer); dispid 1610743820;
    function ToList: _ElasticVector; dispid 1610743821;
    function TryGetValue(const key: WideString; out Item: OleVariant): WordBool; dispid 1610743822;
    function Clone: OleVariant; dispid 1610743823;
    function Find(const typeName: WideString): OleVariant; dispid 1610743824;
    function FindByName(const Name: WideString; ignoreCase: WordBool): OleVariant; dispid 1610743825;
  end;

// *********************************************************************//
// Interface: _ComponentParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CF8BA9E2-1527-434F-A8AD-15179D4EF1A7}
// *********************************************************************//
  _ComponentParameters = interface(IDispatch)
    ['{CF8BA9E2-1527-434F-A8AD-15179D4EF1A7}']
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
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property PluginConfigurations: _ConfigurationPartCollection read Get_PluginConfigurations write _Set_PluginConfigurations;
    property PluginSetups: _PluginSetupCollection read Get_PluginSetups write _Set_PluginSetups;
  end;

// *********************************************************************//
// DispIntf:  _ComponentParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CF8BA9E2-1527-434F-A8AD-15179D4EF1A7}
// *********************************************************************//
  _ComponentParametersDisp = dispinterface
    ['{CF8BA9E2-1527-434F-A8AD-15179D4EF1A7}']
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
  end;

// *********************************************************************//
// Interface: _EndpointDescriptor
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {918A5091-6735-41E0-985B-9C8114B50BFF}
// *********************************************************************//
  _EndpointDescriptor = interface(IDispatch)
    ['{918A5091-6735-41E0-985B-9C8114B50BFF}']
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
    function Get_host: WideString; safecall;
    procedure Set_host(const pRetVal: WideString); safecall;
    function Get_IsNull: WordBool; safecall;
    function Get_password: WideString; safecall;
    procedure Set_password(const pRetVal: WideString); safecall;
    function Get_Path: WideString; safecall;
    procedure Set_Path(const pRetVal: WideString); safecall;
    function Get_port: Integer; safecall;
    procedure Set_port(pRetVal: Integer); safecall;
    function Get_prefix: WideString; safecall;
    procedure Set_prefix(const pRetVal: WideString); safecall;
    function Get_Query: WideString; safecall;
    procedure Set_Query(const pRetVal: WideString); safecall;
    function Get_Scheme: WideString; safecall;
    procedure Set_Scheme(const pRetVal: WideString); safecall;
    function Get_UserName: WideString; safecall;
    procedure Set_UserName(const pRetVal: WideString); safecall;
    function Get_NetworkSecurity: _NetworkSecurity; safecall;
    procedure _Set_NetworkSecurity(const pRetVal: _NetworkSecurity); safecall;
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
    property host: WideString read Get_host write Set_host;
    property IsNull: WordBool read Get_IsNull;
    property password: WideString read Get_password write Set_password;
    property Path: WideString read Get_Path write Set_Path;
    property port: Integer read Get_port write Set_port;
    property prefix: WideString read Get_prefix write Set_prefix;
    property Query: WideString read Get_Query write Set_Query;
    property Scheme: WideString read Get_Scheme write Set_Scheme;
    property UserName: WideString read Get_UserName write Set_UserName;
    property NetworkSecurity: _NetworkSecurity read Get_NetworkSecurity write _Set_NetworkSecurity;
  end;

// *********************************************************************//
// DispIntf:  _EndpointDescriptorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {918A5091-6735-41E0-985B-9C8114B50BFF}
// *********************************************************************//
  _EndpointDescriptorDisp = dispinterface
    ['{918A5091-6735-41E0-985B-9C8114B50BFF}']
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
    property host: WideString dispid 1610743831;
    property IsNull: WordBool readonly dispid 1610743833;
    property password: WideString dispid 1610743834;
    property Path: WideString dispid 1610743836;
    property port: Integer dispid 1610743838;
    property prefix: WideString dispid 1610743840;
    property Query: WideString dispid 1610743842;
    property Scheme: WideString dispid 1610743844;
    property UserName: WideString dispid 1610743846;
    property NetworkSecurity: _NetworkSecurity dispid 1610743848;
  end;

// *********************************************************************//
// Interface: _ObjectDescriptor
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {36A62926-929A-4FA4-9107-3E71FEC44EB1}
// *********************************************************************//
  _ObjectDescriptor = interface(IDispatch)
    ['{36A62926-929A-4FA4-9107-3E71FEC44EB1}']
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
    function Get_host: WideString; safecall;
    procedure Set_host(const pRetVal: WideString); safecall;
    function Get_IsNull: WordBool; safecall;
    function Get_password: WideString; safecall;
    procedure Set_password(const pRetVal: WideString); safecall;
    function Get_Path: WideString; safecall;
    procedure Set_Path(const pRetVal: WideString); safecall;
    function Get_port: Integer; safecall;
    procedure Set_port(pRetVal: Integer); safecall;
    function Get_prefix: WideString; safecall;
    procedure Set_prefix(const pRetVal: WideString); safecall;
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
    property host: WideString read Get_host write Set_host;
    property IsNull: WordBool read Get_IsNull;
    property password: WideString read Get_password write Set_password;
    property Path: WideString read Get_Path write Set_Path;
    property port: Integer read Get_port write Set_port;
    property prefix: WideString read Get_prefix write Set_prefix;
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
  end;

// *********************************************************************//
// DispIntf:  _ObjectDescriptorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {36A62926-929A-4FA4-9107-3E71FEC44EB1}
// *********************************************************************//
  _ObjectDescriptorDisp = dispinterface
    ['{36A62926-929A-4FA4-9107-3E71FEC44EB1}']
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
    property host: WideString dispid 1610743831;
    property IsNull: WordBool readonly dispid 1610743833;
    property password: WideString dispid 1610743834;
    property Path: WideString dispid 1610743836;
    property port: Integer dispid 1610743838;
    property prefix: WideString dispid 1610743840;
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
  end;

// *********************************************************************//
// Interface: _StringParsingError
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A4E75632-3697-4B2D-9E35-6D248EFF84FF}
// *********************************************************************//
  _StringParsingError = interface(IDispatch)
    ['{A4E75632-3697-4B2D-9E35-6D248EFF84FF}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Code: _Enum; safecall;
    function Get_CodeType: _Type; safecall;
    function Get_InnerException: _Exception; safecall;
    function Get_Message: WideString; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Code: _Enum read Get_Code;
    property CodeType: _Type read Get_CodeType;
    property InnerException: _Exception read Get_InnerException;
    property Message: WideString read Get_Message;
  end;

// *********************************************************************//
// DispIntf:  _StringParsingErrorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A4E75632-3697-4B2D-9E35-6D248EFF84FF}
// *********************************************************************//
  _StringParsingErrorDisp = dispinterface
    ['{A4E75632-3697-4B2D-9E35-6D248EFF84FF}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Code: _Enum readonly dispid 1610743813;
    property CodeType: _Type readonly dispid 1610743814;
    property InnerException: _Exception readonly dispid 1610743815;
    property Message: WideString readonly dispid 1610743816;
  end;

// *********************************************************************//
// Interface: _ConnectedConditionChangedEventArgs
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {290C6ABC-988A-4399-94A3-CF2C33B79961}
// *********************************************************************//
  _ConnectedConditionChangedEventArgs = interface(IDispatch)
    ['{290C6ABC-988A-4399-94A3-CF2C33B79961}']
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
    function Get_ConnectionState: ConnectionState; safecall;
    procedure Set_ConnectionState(pRetVal: ConnectionState); safecall;
    function Get_IsConnected: WordBool; safecall;
    function Get_RetrialDelay: Integer; safecall;
    procedure Set_RetrialDelay(pRetVal: Integer); safecall;
    function Get_Statistics: _ConnectedConditionStatistics; safecall;
    procedure _Set_Statistics(const pRetVal: _ConnectedConditionStatistics); safecall;
    function Get_StatusInfo: StatusInfo; safecall;
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
    property ConnectionState: ConnectionState read Get_ConnectionState write Set_ConnectionState;
    property IsConnected: WordBool read Get_IsConnected;
    property RetrialDelay: Integer read Get_RetrialDelay write Set_RetrialDelay;
    property Statistics: _ConnectedConditionStatistics read Get_Statistics write _Set_Statistics;
    property StatusInfo: StatusInfo read Get_StatusInfo;
  end;

// *********************************************************************//
// DispIntf:  _ConnectedConditionChangedEventArgsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {290C6ABC-988A-4399-94A3-CF2C33B79961}
// *********************************************************************//
  _ConnectedConditionChangedEventArgsDisp = dispinterface
    ['{290C6ABC-988A-4399-94A3-CF2C33B79961}']
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
    property ConnectionState: ConnectionState dispid 1610743830;
    property IsConnected: WordBool readonly dispid 1610743832;
    property RetrialDelay: Integer dispid 1610743833;
    property Statistics: _ConnectedConditionStatistics dispid 1610743835;
    property StatusInfo: StatusInfo readonly dispid 1610743837;
  end;

// *********************************************************************//
// Interface: _ConnectedConditionStatistics
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {88A436C9-5756-400D-B7D3-E6334CA949E6}
// *********************************************************************//
  _ConnectedConditionStatistics = interface(IDispatch)
    ['{88A436C9-5756-400D-B7D3-E6334CA949E6}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_ConnectedState: _AutomatonStateStatistics; safecall;
    function Get_ConnectingState: _AutomatonStateStatistics; safecall;
    function Get_CurrentConnectionAttemptCount: Integer; safecall;
    procedure Set_CurrentConnectionAttemptCount(pRetVal: Integer); safecall;
    function Get_DisconnectedState: _AutomatonStateStatistics; safecall;
    function Get_DisconnectingState: _AutomatonStateStatistics; safecall;
    function Get_StateDictionary: IDictionary; safecall;
    function Get_UnconnectedState: _AutomatonStateStatistics; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property ConnectedState: _AutomatonStateStatistics read Get_ConnectedState;
    property ConnectingState: _AutomatonStateStatistics read Get_ConnectingState;
    property CurrentConnectionAttemptCount: Integer read Get_CurrentConnectionAttemptCount write Set_CurrentConnectionAttemptCount;
    property DisconnectedState: _AutomatonStateStatistics read Get_DisconnectedState;
    property DisconnectingState: _AutomatonStateStatistics read Get_DisconnectingState;
    property StateDictionary: IDictionary read Get_StateDictionary;
    property UnconnectedState: _AutomatonStateStatistics read Get_UnconnectedState;
  end;

// *********************************************************************//
// DispIntf:  _ConnectedConditionStatisticsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {88A436C9-5756-400D-B7D3-E6334CA949E6}
// *********************************************************************//
  _ConnectedConditionStatisticsDisp = dispinterface
    ['{88A436C9-5756-400D-B7D3-E6334CA949E6}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property ConnectedState: _AutomatonStateStatistics readonly dispid 1610743814;
    property ConnectingState: _AutomatonStateStatistics readonly dispid 1610743815;
    property CurrentConnectionAttemptCount: Integer dispid 1610743816;
    property DisconnectedState: _AutomatonStateStatistics readonly dispid 1610743818;
    property DisconnectingState: _AutomatonStateStatistics readonly dispid 1610743819;
    property StateDictionary: IDictionary readonly dispid 1610743820;
    property UnconnectedState: _AutomatonStateStatistics readonly dispid 1610743821;
  end;

// *********************************************************************//
// Interface: _InteropHelper
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8A0FF843-180E-4175-B60F-51AACA05262E}
// *********************************************************************//
  _InteropHelper = interface(IDispatch)
    ['{8A0FF843-180E-4175-B60F-51AACA05262E}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function AsObject(obj: OleVariant): OleVariant; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
  end;

// *********************************************************************//
// DispIntf:  _InteropHelperDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8A0FF843-180E-4175-B60F-51AACA05262E}
// *********************************************************************//
  _InteropHelperDisp = dispinterface
    ['{8A0FF843-180E-4175-B60F-51AACA05262E}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function AsObject(obj: OleVariant): OleVariant; dispid 1610743813;
  end;

// *********************************************************************//
// Interface: _VarType
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C5CA79AC-1310-4EAA-AFF4-8D5C48C2A4A4}
// *********************************************************************//
  _VarType = interface(IDispatch)
    ['{C5CA79AC-1310-4EAA-AFF4-8D5C48C2A4A4}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_InternalValue: VarTypes; safecall;
    procedure Set_InternalValue(pRetVal: VarTypes); safecall;
    function Get_IsArray: WordBool; safecall;
    function Get_IsElementType: WordBool; safecall;
    function Get_NumericalValue: Integer; safecall;
    procedure Set_NumericalValue(pRetVal: Integer); safecall;
    function GetElementType: _VarType; safecall;
    function MakeArrayType: _VarType; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property InternalValue: VarTypes read Get_InternalValue write Set_InternalValue;
    property IsArray: WordBool read Get_IsArray;
    property IsElementType: WordBool read Get_IsElementType;
    property NumericalValue: Integer read Get_NumericalValue write Set_NumericalValue;
  end;

// *********************************************************************//
// DispIntf:  _VarTypeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C5CA79AC-1310-4EAA-AFF4-8D5C48C2A4A4}
// *********************************************************************//
  _VarTypeDisp = dispinterface
    ['{C5CA79AC-1310-4EAA-AFF4-8D5C48C2A4A4}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property InternalValue: VarTypes dispid 1610743816;
    property IsArray: WordBool readonly dispid 1610743818;
    property IsElementType: WordBool readonly dispid 1610743819;
    property NumericalValue: Integer dispid 1610743820;
    function GetElementType: _VarType; dispid 1610743822;
    function MakeArrayType: _VarType; dispid 1610743823;
  end;

// *********************************************************************//
// Interface: _DictionaryEntry2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1589C232-48C5-49C5-A96F-9E345E677D13}
// *********************************************************************//
  _DictionaryEntry2 = interface(IDispatch)
    ['{1589C232-48C5-49C5-A96F-9E345E677D13}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_key: OleVariant; safecall;
    procedure _Set_key(pRetVal: OleVariant); safecall;
    function Get_value: OleVariant; safecall;
    procedure _Set_value(pRetVal: OleVariant); safecall;
    procedure SetKey(key: OleVariant); safecall;
    procedure SetValue(value: OleVariant); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property key: OleVariant read Get_key write _Set_key;
    property value: OleVariant read Get_value write _Set_value;
  end;

// *********************************************************************//
// DispIntf:  _DictionaryEntry2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1589C232-48C5-49C5-A96F-9E345E677D13}
// *********************************************************************//
  _DictionaryEntry2Disp = dispinterface
    ['{1589C232-48C5-49C5-A96F-9E345E677D13}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property key: OleVariant dispid 1610743813;
    property value: OleVariant dispid 1610743815;
    procedure SetKey(key: OleVariant); dispid 1610743817;
    procedure SetValue(value: OleVariant); dispid 1610743818;
  end;

// *********************************************************************//
// Interface: _ElasticVector
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {03BF9D1E-8CE4-49EE-86D5-47146B2BE0FD}
// *********************************************************************//
  _ElasticVector = interface(IDispatch)
    ['{03BF9D1E-8CE4-49EE-86D5-47146B2BE0FD}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Clone: OleVariant; safecall;
    function Get_Count: Integer; safecall;
    function Get_IsSynchronized: WordBool; safecall;
    function Get_SyncRoot: OleVariant; safecall;
    procedure CopyTo(destinationArray: OleVariant; index: Integer); safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    function Get_Item(index: Integer): OleVariant; safecall;
    procedure _Set_Item(index: Integer; pRetVal: OleVariant); safecall;
    function Get_IsFixedSize: WordBool; safecall;
    function Get_IsReadOnly: WordBool; safecall;
    function Add(Item: OleVariant): Integer; safecall;
    procedure Clear; safecall;
    function Contains(Item: OleVariant): WordBool; safecall;
    function IndexOf(Item: OleVariant): Integer; safecall;
    procedure Insert(index: Integer; Item: OleVariant); safecall;
    function Remove(value: OleVariant): WordBool; safecall;
    procedure RemoveAt(index: Integer); safecall;
    function Get_Length: Integer; safecall;
    function Get_LowerBound: Integer; safecall;
    function Get_UpperBound: Integer; safecall;
    procedure AddRange(sequence: OleVariant); safecall;
    procedure Assign_(objectArray: OleVariant); safecall;
    function GetAt(index: Integer): OleVariant; safecall;
    procedure Redimension(newLowerBound: Integer; newUpperBound: Integer); safecall;
    procedure Resize(newSize: Integer); safecall;
    procedure SetAt(index: Integer; value: OleVariant); safecall;
    function ToArray: PSafeArray; safecall;
    property ToString: WideString read Get_ToString;
    property Count: Integer read Get_Count;
    property IsSynchronized: WordBool read Get_IsSynchronized;
    property SyncRoot: OleVariant read Get_SyncRoot;
    property Item[index: Integer]: OleVariant read Get_Item write _Set_Item; default;
    property IsFixedSize: WordBool read Get_IsFixedSize;
    property IsReadOnly: WordBool read Get_IsReadOnly;
    property Length: Integer read Get_Length;
    property LowerBound: Integer read Get_LowerBound;
    property UpperBound: Integer read Get_UpperBound;
  end;

// *********************************************************************//
// DispIntf:  _ElasticVectorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {03BF9D1E-8CE4-49EE-86D5-47146B2BE0FD}
// *********************************************************************//
  _ElasticVectorDisp = dispinterface
    ['{03BF9D1E-8CE4-49EE-86D5-47146B2BE0FD}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    function Clone: OleVariant; dispid 1610743812;
    property Count: Integer readonly dispid 1610743813;
    property IsSynchronized: WordBool readonly dispid 1610743814;
    property SyncRoot: OleVariant readonly dispid 1610743815;
    procedure CopyTo(destinationArray: OleVariant; index: Integer); dispid 1610743816;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    property Item[index: Integer]: OleVariant dispid 0; default;
    property IsFixedSize: WordBool readonly dispid 1610743820;
    property IsReadOnly: WordBool readonly dispid 1610743821;
    function Add(Item: OleVariant): Integer; dispid 1610743822;
    procedure Clear; dispid 1610743823;
    function Contains(Item: OleVariant): WordBool; dispid 1610743824;
    function IndexOf(Item: OleVariant): Integer; dispid 1610743825;
    procedure Insert(index: Integer; Item: OleVariant); dispid 1610743826;
    function Remove(value: OleVariant): WordBool; dispid 1610743827;
    procedure RemoveAt(index: Integer); dispid 1610743828;
    property Length: Integer readonly dispid 1610743829;
    property LowerBound: Integer readonly dispid 1610743830;
    property UpperBound: Integer readonly dispid 1610743831;
    procedure AddRange(sequence: OleVariant); dispid 1610743832;
    procedure Assign_(objectArray: OleVariant); dispid 1610743833;
    function GetAt(index: Integer): OleVariant; dispid 1610743834;
    procedure Redimension(newLowerBound: Integer; newUpperBound: Integer); dispid 1610743835;
    procedure Resize(newSize: Integer); dispid 1610743836;
    procedure SetAt(index: Integer; value: OleVariant); dispid 1610743837;
    function ToArray: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743838;
  end;

// *********************************************************************//
// Interface: _ExceptionCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0D999297-1513-4251-87A6-9349DDBCC427}
// *********************************************************************//
  _ExceptionCollection = interface(IDispatch)
    ['{0D999297-1513-4251-87A6-9349DDBCC427}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(index: Integer): _Exception; safecall;
    procedure _Set_Item(index: Integer; const pRetVal: _Exception); safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(Item: OleVariant); safecall;
    procedure Clear; safecall;
    function Contains(Item: OleVariant): WordBool; safecall;
    function IndexOf(Item: OleVariant): Integer; safecall;
    procedure Insert(index: Integer; Item: OleVariant); safecall;
    function Remove(Item: OleVariant): WordBool; safecall;
    procedure RemoveAt(index: Integer); safecall;
    procedure Move(oldIndex: Integer; newIndex: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property Item[index: Integer]: _Exception read Get_Item write _Set_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _ExceptionCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0D999297-1513-4251-87A6-9349DDBCC427}
// *********************************************************************//
  _ExceptionCollectionDisp = dispinterface
    ['{0D999297-1513-4251-87A6-9349DDBCC427}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[index: Integer]: _Exception dispid 0; default;
    property Count: Integer readonly dispid 1610743814;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(Item: OleVariant); dispid 1610743816;
    procedure Clear; dispid 1610743817;
    function Contains(Item: OleVariant): WordBool; dispid 1610743818;
    function IndexOf(Item: OleVariant): Integer; dispid 1610743819;
    procedure Insert(index: Integer; Item: OleVariant); dispid 1610743820;
    function Remove(Item: OleVariant): WordBool; dispid 1610743821;
    procedure RemoveAt(index: Integer); dispid 1610743822;
    procedure Move(oldIndex: Integer; newIndex: Integer); dispid 1610743823;
  end;

// *********************************************************************//
// Interface: _Int32Collection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4A15275C-6094-4370-8697-722848691F59}
// *********************************************************************//
  _Int32Collection = interface(IDispatch)
    ['{4A15275C-6094-4370-8697-722848691F59}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(index: Integer): Integer; safecall;
    procedure Set_Item(index: Integer; pRetVal: Integer); safecall;
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
    property Item[index: Integer]: Integer read Get_Item write Set_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _Int32CollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4A15275C-6094-4370-8697-722848691F59}
// *********************************************************************//
  _Int32CollectionDisp = dispinterface
    ['{4A15275C-6094-4370-8697-722848691F59}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[index: Integer]: Integer dispid 0; default;
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
// Interface: _NormalizedExceptionCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B98FB987-0D1F-484B-A54A-2371CB3148CC}
// *********************************************************************//
  _NormalizedExceptionCollection = interface(IDispatch)
    ['{B98FB987-0D1F-484B-A54A-2371CB3148CC}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(index: Integer): _NormalizedException; safecall;
    procedure _Set_Item(index: Integer; const pRetVal: _NormalizedException); safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(Item: OleVariant); safecall;
    procedure Clear; safecall;
    function Contains(Item: OleVariant): WordBool; safecall;
    function IndexOf(Item: OleVariant): Integer; safecall;
    procedure Insert(index: Integer; Item: OleVariant); safecall;
    function Remove(Item: OleVariant): WordBool; safecall;
    procedure RemoveAt(index: Integer); safecall;
    procedure Move(oldIndex: Integer; newIndex: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property Item[index: Integer]: _NormalizedException read Get_Item write _Set_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _NormalizedExceptionCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B98FB987-0D1F-484B-A54A-2371CB3148CC}
// *********************************************************************//
  _NormalizedExceptionCollectionDisp = dispinterface
    ['{B98FB987-0D1F-484B-A54A-2371CB3148CC}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[index: Integer]: _NormalizedException dispid 0; default;
    property Count: Integer readonly dispid 1610743814;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(Item: OleVariant); dispid 1610743816;
    procedure Clear; dispid 1610743817;
    function Contains(Item: OleVariant): WordBool; dispid 1610743818;
    function IndexOf(Item: OleVariant): Integer; dispid 1610743819;
    procedure Insert(index: Integer; Item: OleVariant); dispid 1610743820;
    function Remove(Item: OleVariant): WordBool; dispid 1610743821;
    procedure RemoveAt(index: Integer); dispid 1610743822;
    procedure Move(oldIndex: Integer; newIndex: Integer); dispid 1610743823;
  end;

// *********************************************************************//
// Interface: _StringCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3F6FBA4F-B133-4487-92D7-20EF41C984EE}
// *********************************************************************//
  _StringCollection = interface(IDispatch)
    ['{3F6FBA4F-B133-4487-92D7-20EF41C984EE}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Clone: OleVariant; safecall;
    function Get_Item(index: Integer): WideString; safecall;
    procedure Set_Item(index: Integer; const pRetVal: WideString); safecall;
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
    property Item[index: Integer]: WideString read Get_Item write Set_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _StringCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3F6FBA4F-B133-4487-92D7-20EF41C984EE}
// *********************************************************************//
  _StringCollectionDisp = dispinterface
    ['{3F6FBA4F-B133-4487-92D7-20EF41C984EE}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    function Clone: OleVariant; dispid 1610743812;
    property Item[index: Integer]: WideString dispid 0; default;
    property Count: Integer readonly dispid 1610743815;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(Item: OleVariant); dispid 1610743817;
    procedure Clear; dispid 1610743818;
    function Contains(Item: OleVariant): WordBool; dispid 1610743819;
    function IndexOf(Item: OleVariant): Integer; dispid 1610743820;
    procedure Insert(index: Integer; Item: OleVariant); dispid 1610743821;
    function Remove(Item: OleVariant): WordBool; dispid 1610743822;
    procedure RemoveAt(index: Integer); dispid 1610743823;
  end;

// *********************************************************************//
// Interface: _StringObjectDictionary
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BD4B59CF-3F6C-4A6D-A225-A5B00D7F8FD1}
// *********************************************************************//
  _StringObjectDictionary = interface(IDispatch)
    ['{BD4B59CF-3F6C-4A6D-A225-A5B00D7F8FD1}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(const key: WideString): OleVariant; safecall;
    procedure _Set_Item(const key: WideString; pRetVal: OleVariant); safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(const key: WideString; Item: OleVariant); safecall;
    procedure Clear; safecall;
    function ContainsKey(const key: WideString): WordBool; safecall;
    function Remove(const key: WideString): WordBool; safecall;
    function TryGetValue(const key: WideString; out value: OleVariant): WordBool; safecall;
    function ContainsValue(value: OleVariant): WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property Item[const key: WideString]: OleVariant read Get_Item write _Set_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _StringObjectDictionaryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BD4B59CF-3F6C-4A6D-A225-A5B00D7F8FD1}
// *********************************************************************//
  _StringObjectDictionaryDisp = dispinterface
    ['{BD4B59CF-3F6C-4A6D-A225-A5B00D7F8FD1}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[const key: WideString]: OleVariant dispid 0; default;
    property Count: Integer readonly dispid 1610743814;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(const key: WideString; Item: OleVariant); dispid 1610743816;
    procedure Clear; dispid 1610743817;
    function ContainsKey(const key: WideString): WordBool; dispid 1610743818;
    function Remove(const key: WideString): WordBool; dispid 1610743819;
    function TryGetValue(const key: WideString; out value: OleVariant): WordBool; dispid 1610743820;
    function ContainsValue(value: OleVariant): WordBool; dispid 1610743821;
  end;

// *********************************************************************//
// Interface: _StringSet
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {17102801-9710-47F5-AB5B-B58238F791D0}
// *********************************************************************//
  _StringSet = interface(IDispatch)
    ['{17102801-9710-47F5-AB5B-B58238F791D0}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Get_Count: Integer; safecall;
    function Add(const Item: WideString): WordBool; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Clear; safecall;
    function Contains(const Item: WideString): WordBool; safecall;
    function Remove(const Item: WideString): WordBool; safecall;
    procedure UnionWith(other: OleVariant); safecall;
    procedure IntersectWith(other: OleVariant); safecall;
    procedure ExceptWith(other: OleVariant); safecall;
    procedure SymmetricExceptWith(other: OleVariant); safecall;
    function IsSubsetOf(other: OleVariant): WordBool; safecall;
    function IsSupersetOf(other: OleVariant): WordBool; safecall;
    function IsProperSupersetOf(other: OleVariant): WordBool; safecall;
    function IsProperSubsetOf(other: OleVariant): WordBool; safecall;
    function Overlaps(other: OleVariant): WordBool; safecall;
    function SetEquals(other: OleVariant): WordBool; safecall;
    procedure TrimExcess; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _StringSetDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {17102801-9710-47F5-AB5B-B58238F791D0}
// *********************************************************************//
  _StringSetDisp = dispinterface
    ['{17102801-9710-47F5-AB5B-B58238F791D0}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    property Count: Integer readonly dispid 1610743813;
    function Add(const Item: WideString): WordBool; dispid 1610743814;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Clear; dispid 1610743816;
    function Contains(const Item: WideString): WordBool; dispid 1610743817;
    function Remove(const Item: WideString): WordBool; dispid 1610743818;
    procedure UnionWith(other: OleVariant); dispid 1610743819;
    procedure IntersectWith(other: OleVariant); dispid 1610743820;
    procedure ExceptWith(other: OleVariant); dispid 1610743821;
    procedure SymmetricExceptWith(other: OleVariant); dispid 1610743822;
    function IsSubsetOf(other: OleVariant): WordBool; dispid 1610743823;
    function IsSupersetOf(other: OleVariant): WordBool; dispid 1610743824;
    function IsProperSupersetOf(other: OleVariant): WordBool; dispid 1610743825;
    function IsProperSubsetOf(other: OleVariant): WordBool; dispid 1610743826;
    function Overlaps(other: OleVariant): WordBool; dispid 1610743827;
    function SetEquals(other: OleVariant): WordBool; dispid 1610743828;
    procedure TrimExcess; dispid 1610743829;
  end;

// *********************************************************************//
// Interface: _StringStringDictionary
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8472A1B0-BD1B-4387-BFD8-0346630ED403}
// *********************************************************************//
  _StringStringDictionary = interface(IDispatch)
    ['{8472A1B0-BD1B-4387-BFD8-0346630ED403}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(const key: WideString): WideString; safecall;
    procedure Set_Item(const key: WideString; const pRetVal: WideString); safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(const key: WideString; const Item: WideString); safecall;
    procedure Clear; safecall;
    function ContainsKey(const key: WideString): WordBool; safecall;
    function Remove(const key: WideString): WordBool; safecall;
    function TryGetValue(const key: WideString; out value: WideString): WordBool; safecall;
    function ContainsValue(const value: WideString): WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property Item[const key: WideString]: WideString read Get_Item write Set_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _StringStringDictionaryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8472A1B0-BD1B-4387-BFD8-0346630ED403}
// *********************************************************************//
  _StringStringDictionaryDisp = dispinterface
    ['{8472A1B0-BD1B-4387-BFD8-0346630ED403}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[const key: WideString]: WideString dispid 0; default;
    property Count: Integer readonly dispid 1610743814;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(const key: WideString; const Item: WideString); dispid 1610743816;
    procedure Clear; dispid 1610743817;
    function ContainsKey(const key: WideString): WordBool; dispid 1610743818;
    function Remove(const key: WideString): WordBool; dispid 1610743819;
    function TryGetValue(const key: WideString; out value: WideString): WordBool; dispid 1610743820;
    function ContainsValue(const value: WideString): WordBool; dispid 1610743821;
  end;

// *********************************************************************//
// Interface: _ObjectObjectDictionary
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {88F6098D-4048-42E7-9673-2F9E54720459}
// *********************************************************************//
  _ObjectObjectDictionary = interface(IDispatch)
    ['{88F6098D-4048-42E7-9673-2F9E54720459}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(key: OleVariant): OleVariant; safecall;
    procedure _Set_Item(key: OleVariant; pRetVal: OleVariant); safecall;
    function Get_Count: Integer; safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    procedure Add(key: OleVariant; Item: OleVariant); safecall;
    procedure Clear; safecall;
    function ContainsKey(key: OleVariant): WordBool; safecall;
    function Remove(key: OleVariant): WordBool; safecall;
    function TryGetValue(key: OleVariant; out value: OleVariant): WordBool; safecall;
    function ContainsValue(value: OleVariant): WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property Item[key: OleVariant]: OleVariant read Get_Item write _Set_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _ObjectObjectDictionaryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {88F6098D-4048-42E7-9673-2F9E54720459}
// *********************************************************************//
  _ObjectObjectDictionaryDisp = dispinterface
    ['{88F6098D-4048-42E7-9673-2F9E54720459}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[key: OleVariant]: OleVariant dispid 0; default;
    property Count: Integer readonly dispid 1610743814;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Add(key: OleVariant; Item: OleVariant); dispid 1610743816;
    procedure Clear; dispid 1610743817;
    function ContainsKey(key: OleVariant): WordBool; dispid 1610743818;
    function Remove(key: OleVariant): WordBool; dispid 1610743819;
    function TryGetValue(key: OleVariant; out value: OleVariant): WordBool; dispid 1610743820;
    function ContainsValue(value: OleVariant): WordBool; dispid 1610743821;
  end;

// *********************************************************************//
// Interface: _Dictionary
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EFF596DE-A3D9-4FBC-9BE3-5AD7B735236B}
// *********************************************************************//
  _Dictionary = interface(IDispatch)
    ['{EFF596DE-A3D9-4FBC-9BE3-5AD7B735236B}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_Item(key: OleVariant): OleVariant; safecall;
    procedure _Set_Item(key: OleVariant; pRetVal: OleVariant); safecall;
    function Get_Count: Integer; safecall;
    function Get_IsFixedSize: WordBool; safecall;
    function Get_IsReadOnly: WordBool; safecall;
    function Get_IsSynchronized: WordBool; safecall;
    function Get_Keys: ICollection; safecall;
    function Get_SyncRoot: OleVariant; safecall;
    function Get_Values: ICollection; safecall;
    procedure Add(key: OleVariant; Item: OleVariant); safecall;
    procedure Clear; safecall;
    procedure CopyTo(anArray: OleVariant; index: Integer); safecall;
    function GetEnumerator: IDictionaryEnumerator; safecall;
    procedure Remove(key: OleVariant); safecall;
    property ToString: WideString read Get_ToString;
    property Item[key: OleVariant]: OleVariant read Get_Item write _Set_Item; default;
    property Count: Integer read Get_Count;
    property IsFixedSize: WordBool read Get_IsFixedSize;
    property IsReadOnly: WordBool read Get_IsReadOnly;
    property IsSynchronized: WordBool read Get_IsSynchronized;
    property Keys: ICollection read Get_Keys;
    property SyncRoot: OleVariant read Get_SyncRoot;
    property Values: ICollection read Get_Values;
  end;

// *********************************************************************//
// DispIntf:  _DictionaryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EFF596DE-A3D9-4FBC-9BE3-5AD7B735236B}
// *********************************************************************//
  _DictionaryDisp = dispinterface
    ['{EFF596DE-A3D9-4FBC-9BE3-5AD7B735236B}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property Item[key: OleVariant]: OleVariant dispid 0; default;
    property Count: Integer readonly dispid 1610743814;
    property IsFixedSize: WordBool readonly dispid 1610743815;
    property IsReadOnly: WordBool readonly dispid 1610743816;
    property IsSynchronized: WordBool readonly dispid 1610743817;
    property Keys: ICollection readonly dispid 1610743818;
    property SyncRoot: OleVariant readonly dispid 1610743819;
    property Values: ICollection readonly dispid 1610743820;
    procedure Add(key: OleVariant; Item: OleVariant); dispid 1610743821;
    procedure Clear; dispid 1610743822;
    procedure CopyTo(anArray: OleVariant; index: Integer); dispid 1610743823;
    function GetEnumerator: IDictionaryEnumerator; dispid 1610743824;
    procedure Remove(key: OleVariant); dispid 1610743825;
  end;

// *********************************************************************//
// Interface: _List
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3E222005-BC46-4E3B-9940-83A7F7A4310A}
// *********************************************************************//
  _List = interface(IDispatch)
    ['{3E222005-BC46-4E3B-9940-83A7F7A4310A}']
    function Get_Count: Integer; safecall;
    function Get_IsSynchronized: WordBool; safecall;
    function Get_SyncRoot: OleVariant; safecall;
    procedure CopyTo(destinationArray: OleVariant; index: Integer); safecall;
    function GetEnumerator: IEnumVARIANT; safecall;
    function Get_Item(index: Integer): OleVariant; safecall;
    procedure _Set_Item(index: Integer; pRetVal: OleVariant); safecall;
    function Get_IsFixedSize: WordBool; safecall;
    function Get_IsReadOnly: WordBool; safecall;
    function Add(value: OleVariant): Integer; safecall;
    procedure Clear; safecall;
    function Contains(value: OleVariant): WordBool; safecall;
    function IndexOf(value: OleVariant): Integer; safecall;
    procedure Insert(index: Integer; value: OleVariant); safecall;
    function Remove(value: OleVariant): WordBool; safecall;
    procedure RemoveAt(index: Integer); safecall;
    property Count: Integer read Get_Count;
    property IsSynchronized: WordBool read Get_IsSynchronized;
    property SyncRoot: OleVariant read Get_SyncRoot;
    property Item[index: Integer]: OleVariant read Get_Item write _Set_Item; default;
    property IsFixedSize: WordBool read Get_IsFixedSize;
    property IsReadOnly: WordBool read Get_IsReadOnly;
  end;

// *********************************************************************//
// DispIntf:  _ListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3E222005-BC46-4E3B-9940-83A7F7A4310A}
// *********************************************************************//
  _ListDisp = dispinterface
    ['{3E222005-BC46-4E3B-9940-83A7F7A4310A}']
    property Count: Integer readonly dispid 1610743808;
    property IsSynchronized: WordBool readonly dispid 1610743809;
    property SyncRoot: OleVariant readonly dispid 1610743810;
    procedure CopyTo(destinationArray: OleVariant; index: Integer); dispid 1610743811;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    property Item[index: Integer]: OleVariant dispid 0; default;
    property IsFixedSize: WordBool readonly dispid 1610743815;
    property IsReadOnly: WordBool readonly dispid 1610743816;
    function Add(value: OleVariant): Integer; dispid 1610743817;
    procedure Clear; dispid 1610743818;
    function Contains(value: OleVariant): WordBool; dispid 1610743819;
    function IndexOf(value: OleVariant): Integer; dispid 1610743820;
    procedure Insert(index: Integer; value: OleVariant); dispid 1610743821;
    function Remove(value: OleVariant): WordBool; dispid 1610743822;
    procedure RemoveAt(index: Integer); dispid 1610743823;
  end;

// *********************************************************************//
// Interface: _AliasFilter
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8AD1E688-983D-40A2-9F32-52A42E3BAC6E}
// *********************************************************************//
  _AliasFilter = interface(IDispatch)
    ['{8AD1E688-983D-40A2-9F32-52A42E3BAC6E}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_AliasNamespace: WideString; safecall;
    procedure Set_AliasNamespace(const pRetVal: WideString); safecall;
    function Get_AliasType: _Type; safecall;
    procedure _Set_AliasType(const pRetVal: _Type); safecall;
    function Get_Categories: _StringCollection; safecall;
    function Get_IncludeSubtypes: WordBool; safecall;
    procedure Set_IncludeSubtypes(pRetVal: WordBool); safecall;
    function Get_NamePattern: WideString; safecall;
    procedure Set_NamePattern(const pRetVal: WideString); safecall;
    function Satisfies(AliasInfo: OleVariant): WordBool; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property AliasNamespace: WideString read Get_AliasNamespace write Set_AliasNamespace;
    property AliasType: _Type read Get_AliasType write _Set_AliasType;
    property Categories: _StringCollection read Get_Categories;
    property IncludeSubtypes: WordBool read Get_IncludeSubtypes write Set_IncludeSubtypes;
    property NamePattern: WideString read Get_NamePattern write Set_NamePattern;
  end;

// *********************************************************************//
// DispIntf:  _AliasFilterDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8AD1E688-983D-40A2-9F32-52A42E3BAC6E}
// *********************************************************************//
  _AliasFilterDisp = dispinterface
    ['{8AD1E688-983D-40A2-9F32-52A42E3BAC6E}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property AliasNamespace: WideString dispid 1610743814;
    property AliasType: _Type dispid 1610743816;
    property Categories: _StringCollection readonly dispid 1610743818;
    property IncludeSubtypes: WordBool dispid 1610743819;
    property NamePattern: WideString dispid 1610743821;
    function Satisfies(AliasInfo: OleVariant): WordBool; dispid 1610743823;
  end;

// *********************************************************************//
// Interface: _AliasMetadata
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1E4368E9-3ED5-4D6F-B3CE-19F236D50388}
// *********************************************************************//
  _AliasMetadata = interface(IDispatch)
    ['{1E4368E9-3ED5-4D6F-B3CE-19F236D50388}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_Category: WideString; safecall;
    function Get_Description: WideString; safecall;
    function Get_DisplayName: WideString; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Category: WideString read Get_Category;
    property Description: WideString read Get_Description;
    property DisplayName: WideString read Get_DisplayName;
  end;

// *********************************************************************//
// DispIntf:  _AliasMetadataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1E4368E9-3ED5-4D6F-B3CE-19F236D50388}
// *********************************************************************//
  _AliasMetadataDisp = dispinterface
    ['{1E4368E9-3ED5-4D6F-B3CE-19F236D50388}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property Category: WideString readonly dispid 1610743814;
    property Description: WideString readonly dispid 1610743815;
    property DisplayName: WideString readonly dispid 1610743816;
  end;

// *********************************************************************//
// Interface: _AliasRepository
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BAE71001-A827-4E1A-ABCC-7A3AD467CADD}
// *********************************************************************//
  _AliasRepository = interface(IDispatch)
    ['{BAE71001-A827-4E1A-ABCC-7A3AD467CADD}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function FindAlias(const AliasName: WideString): _ValueResult; safecall;
    function GetAliasInfo(const AliasName: WideString): _ValueResult; safecall;
    function GetAliasNames(AliasFilter: OleVariant): _ValueResult; safecall;
    function GetCategories: _ValueResult; safecall;
    function GetNamespaces(const parentNamespace: WideString): _ValueResult; safecall;
    function GetTypes: _ValueResult; safecall;
    function AddAlias(const AliasName: WideString; value: OleVariant; AliasMetadata: OleVariant): _OperationResult; safecall;
    function ModifyAlias(const AliasName: WideString; value: OleVariant; AliasMetadata: OleVariant): _OperationResult; safecall;
    function RemoveAliases(const AliasNamespace: WideString; const NamePattern: WideString): _ValueResult; safecall;
    function RenameAlias(const oldAliasName: WideString; const newAliasName: WideString): _OperationResult; safecall;
    function SetAlias(const AliasName: WideString; value: OleVariant; AliasMetadata: OleVariant): _OperationResult; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
  end;

// *********************************************************************//
// DispIntf:  _AliasRepositoryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BAE71001-A827-4E1A-ABCC-7A3AD467CADD}
// *********************************************************************//
  _AliasRepositoryDisp = dispinterface
    ['{BAE71001-A827-4E1A-ABCC-7A3AD467CADD}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function FindAlias(const AliasName: WideString): _ValueResult; dispid 1610743813;
    function GetAliasInfo(const AliasName: WideString): _ValueResult; dispid 1610743814;
    function GetAliasNames(AliasFilter: OleVariant): _ValueResult; dispid 1610743815;
    function GetCategories: _ValueResult; dispid 1610743816;
    function GetNamespaces(const parentNamespace: WideString): _ValueResult; dispid 1610743817;
    function GetTypes: _ValueResult; dispid 1610743818;
    function AddAlias(const AliasName: WideString; value: OleVariant; AliasMetadata: OleVariant): _OperationResult; dispid 1610743819;
    function ModifyAlias(const AliasName: WideString; value: OleVariant; AliasMetadata: OleVariant): _OperationResult; dispid 1610743820;
    function RemoveAliases(const AliasNamespace: WideString; const NamePattern: WideString): _ValueResult; dispid 1610743821;
    function RenameAlias(const oldAliasName: WideString; const newAliasName: WideString): _OperationResult; dispid 1610743822;
    function SetAlias(const AliasName: WideString; value: OleVariant; AliasMetadata: OleVariant): _OperationResult; dispid 1610743823;
  end;

// *********************************************************************//
// Interface: _ReadOnlyAliasRepository
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CC35406F-B148-4534-9B7B-FD6DDF17EF3E}
// *********************************************************************//
  _ReadOnlyAliasRepository = interface(IDispatch)
    ['{CC35406F-B148-4534-9B7B-FD6DDF17EF3E}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function FindAlias(const AliasName: WideString): _ValueResult; safecall;
    function GetAliasInfo(const AliasName: WideString): _ValueResult; safecall;
    function GetAliasNames(AliasFilter: OleVariant): _ValueResult; safecall;
    function GetCategories: _ValueResult; safecall;
    function GetNamespaces(const parentNamespace: WideString): _ValueResult; safecall;
    function GetTypes: _ValueResult; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
  end;

// *********************************************************************//
// DispIntf:  _ReadOnlyAliasRepositoryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CC35406F-B148-4534-9B7B-FD6DDF17EF3E}
// *********************************************************************//
  _ReadOnlyAliasRepositoryDisp = dispinterface
    ['{CC35406F-B148-4534-9B7B-FD6DDF17EF3E}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function FindAlias(const AliasName: WideString): _ValueResult; dispid 1610743813;
    function GetAliasInfo(const AliasName: WideString): _ValueResult; dispid 1610743814;
    function GetAliasNames(AliasFilter: OleVariant): _ValueResult; dispid 1610743815;
    function GetCategories: _ValueResult; dispid 1610743816;
    function GetNamespaces(const parentNamespace: WideString): _ValueResult; dispid 1610743817;
    function GetTypes: _ValueResult; dispid 1610743818;
  end;

// *********************************************************************//
// Interface: _AliasInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FBD94054-2E09-4070-AE72-167F674B2245}
// *********************************************************************//
  _AliasInfo = interface(IDispatch)
    ['{FBD94054-2E09-4070-AE72-167F674B2245}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_Category: WideString; safecall;
    function Get_Description: WideString; safecall;
    function Get_DisplayName: WideString; safecall;
    function Get_AliasNamespace: WideString; safecall;
    function Get_AliasType: _Type; safecall;
    function Get_FullName: WideString; safecall;
    function Get_Name: WideString; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property Category: WideString read Get_Category;
    property Description: WideString read Get_Description;
    property DisplayName: WideString read Get_DisplayName;
    property AliasNamespace: WideString read Get_AliasNamespace;
    property AliasType: _Type read Get_AliasType;
    property FullName: WideString read Get_FullName;
    property Name: WideString read Get_Name;
  end;

// *********************************************************************//
// DispIntf:  _AliasInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FBD94054-2E09-4070-AE72-167F674B2245}
// *********************************************************************//
  _AliasInfoDisp = dispinterface
    ['{FBD94054-2E09-4070-AE72-167F674B2245}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property Category: WideString readonly dispid 1610743814;
    property Description: WideString readonly dispid 1610743815;
    property DisplayName: WideString readonly dispid 1610743816;
    property AliasNamespace: WideString readonly dispid 1610743817;
    property AliasType: _Type readonly dispid 1610743818;
    property FullName: WideString readonly dispid 1610743819;
    property Name: WideString readonly dispid 1610743820;
  end;

// *********************************************************************//
// Interface: _AliasProvider
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F4FD2890-2D36-4C35-8E10-0A5D64365D76}
// *********************************************************************//
  _AliasProvider = interface(IDispatch)
    ['{F4FD2890-2D36-4C35-8E10-0A5D64365D76}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function FindAlias(const AliasName: WideString): _ValueResult; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
  end;

// *********************************************************************//
// DispIntf:  _AliasProviderDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F4FD2890-2D36-4C35-8E10-0A5D64365D76}
// *********************************************************************//
  _AliasProviderDisp = dispinterface
    ['{F4FD2890-2D36-4C35-8E10-0A5D64365D76}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function FindAlias(const AliasName: WideString): _ValueResult; dispid 1610743813;
  end;

// *********************************************************************//
// Interface: _AutomatonStateStatistics
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {279943EB-63C3-486A-BEA4-BDF4BEA5AD74}
// *********************************************************************//
  _AutomatonStateStatistics = interface(IDispatch)
    ['{279943EB-63C3-486A-BEA4-BDF4BEA5AD74}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_AccumulatedDuration: Int64; safecall;
    function Get_AccumulatedDurationDouble: Double; safecall;
    function Get_AccumulatedTimeSpan: TimeSpan; safecall;
    function Get_AverageDuration: Double; safecall;
    function Get_AverageTimeSpan: TimeSpan; safecall;
    function Get_CurrentActiveDuration: Int64; safecall;
    function Get_CurrentActiveDurationDouble: Double; safecall;
    function Get_CurrentActiveTick: Int64; safecall;
    function Get_CurrentActiveTickDouble: Double; safecall;
    function Get_CurrentActiveTime: TDateTime; safecall;
    function Get_CurrentActiveTimeLocal: TDateTime; safecall;
    function Get_CurrentActiveTimeSpan: TimeSpan; safecall;
    function Get_CurrentActiveEnterTick: Int64; safecall;
    function Get_CurrentActiveEnterTickDouble: Double; safecall;
    function Get_CurrentActiveEnterTime: TDateTime; safecall;
    function Get_CurrentActiveEnterTimeLocal: TDateTime; safecall;
    function Get_EnterCount: Integer; safecall;
    function Get_FirstEnterTick: Int64; safecall;
    function Get_FirstEnterTickDouble: Double; safecall;
    function Get_FirstEnterTime: TDateTime; safecall;
    function Get_FirstEnterTimeLocal: TDateTime; safecall;
    function Get_IsActive: WordBool; safecall;
    function Get_LastCycleDuration: Int64; safecall;
    function Get_LastCycleDurationDouble: Double; safecall;
    function Get_LastCycleEnterTick: Int64; safecall;
    function Get_LastCycleEnterTickDouble: Double; safecall;
    function Get_LastCycleEnterTime: TDateTime; safecall;
    function Get_LastCycleEnterTimeLocal: TDateTime; safecall;
    function Get_LastCycleLeaveTick: Int64; safecall;
    function Get_LastCycleLeaveTickDouble: Double; safecall;
    function Get_LastCycleLeaveTime: TDateTime; safecall;
    function Get_LastCycleLeaveTimeLocal: TDateTime; safecall;
    function Get_LastCycleTimeSpan: TimeSpan; safecall;
    function Get_LastEnterTick: Int64; safecall;
    function Get_LastEnterTickDouble: Double; safecall;
    function Get_LastEnterTime: TDateTime; safecall;
    function Get_LastEnterTimeLocal: TDateTime; safecall;
    function Get_LeaveCount: Integer; safecall;
    function Get_MaximumDuration: Int64; safecall;
    function Get_MaximumDurationDouble: Double; safecall;
    function Get_MaximumTimeSpan: TimeSpan; safecall;
    function Get_MinimumDuration: Int64; safecall;
    function Get_MinimumDurationDouble: Double; safecall;
    function Get_MinimumTimeSpan: TimeSpan; safecall;
    function Get_RunningAccumulatedDuration: Int64; safecall;
    function Get_RunningAccumulatedDurationDouble: Double; safecall;
    function Get_RunningAccumulatedTimeSpan: TimeSpan; safecall;
    function Get_RunningAverageDuration: Double; safecall;
    function Get_RunningAverageTimeSpan: TimeSpan; safecall;
    function Get_RunningMaximumDuration: Int64; safecall;
    function Get_RunningMaximumDurationDouble: Double; safecall;
    function Get_RunningMaximumTimeSpan: TimeSpan; safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property AccumulatedDuration: Int64 read Get_AccumulatedDuration;
    property AccumulatedDurationDouble: Double read Get_AccumulatedDurationDouble;
    property AccumulatedTimeSpan: TimeSpan read Get_AccumulatedTimeSpan;
    property AverageDuration: Double read Get_AverageDuration;
    property AverageTimeSpan: TimeSpan read Get_AverageTimeSpan;
    property CurrentActiveDuration: Int64 read Get_CurrentActiveDuration;
    property CurrentActiveDurationDouble: Double read Get_CurrentActiveDurationDouble;
    property CurrentActiveTick: Int64 read Get_CurrentActiveTick;
    property CurrentActiveTickDouble: Double read Get_CurrentActiveTickDouble;
    property CurrentActiveTime: TDateTime read Get_CurrentActiveTime;
    property CurrentActiveTimeLocal: TDateTime read Get_CurrentActiveTimeLocal;
    property CurrentActiveTimeSpan: TimeSpan read Get_CurrentActiveTimeSpan;
    property CurrentActiveEnterTick: Int64 read Get_CurrentActiveEnterTick;
    property CurrentActiveEnterTickDouble: Double read Get_CurrentActiveEnterTickDouble;
    property CurrentActiveEnterTime: TDateTime read Get_CurrentActiveEnterTime;
    property CurrentActiveEnterTimeLocal: TDateTime read Get_CurrentActiveEnterTimeLocal;
    property EnterCount: Integer read Get_EnterCount;
    property FirstEnterTick: Int64 read Get_FirstEnterTick;
    property FirstEnterTickDouble: Double read Get_FirstEnterTickDouble;
    property FirstEnterTime: TDateTime read Get_FirstEnterTime;
    property FirstEnterTimeLocal: TDateTime read Get_FirstEnterTimeLocal;
    property IsActive: WordBool read Get_IsActive;
    property LastCycleDuration: Int64 read Get_LastCycleDuration;
    property LastCycleDurationDouble: Double read Get_LastCycleDurationDouble;
    property LastCycleEnterTick: Int64 read Get_LastCycleEnterTick;
    property LastCycleEnterTickDouble: Double read Get_LastCycleEnterTickDouble;
    property LastCycleEnterTime: TDateTime read Get_LastCycleEnterTime;
    property LastCycleEnterTimeLocal: TDateTime read Get_LastCycleEnterTimeLocal;
    property LastCycleLeaveTick: Int64 read Get_LastCycleLeaveTick;
    property LastCycleLeaveTickDouble: Double read Get_LastCycleLeaveTickDouble;
    property LastCycleLeaveTime: TDateTime read Get_LastCycleLeaveTime;
    property LastCycleLeaveTimeLocal: TDateTime read Get_LastCycleLeaveTimeLocal;
    property LastCycleTimeSpan: TimeSpan read Get_LastCycleTimeSpan;
    property LastEnterTick: Int64 read Get_LastEnterTick;
    property LastEnterTickDouble: Double read Get_LastEnterTickDouble;
    property LastEnterTime: TDateTime read Get_LastEnterTime;
    property LastEnterTimeLocal: TDateTime read Get_LastEnterTimeLocal;
    property LeaveCount: Integer read Get_LeaveCount;
    property MaximumDuration: Int64 read Get_MaximumDuration;
    property MaximumDurationDouble: Double read Get_MaximumDurationDouble;
    property MaximumTimeSpan: TimeSpan read Get_MaximumTimeSpan;
    property MinimumDuration: Int64 read Get_MinimumDuration;
    property MinimumDurationDouble: Double read Get_MinimumDurationDouble;
    property MinimumTimeSpan: TimeSpan read Get_MinimumTimeSpan;
    property RunningAccumulatedDuration: Int64 read Get_RunningAccumulatedDuration;
    property RunningAccumulatedDurationDouble: Double read Get_RunningAccumulatedDurationDouble;
    property RunningAccumulatedTimeSpan: TimeSpan read Get_RunningAccumulatedTimeSpan;
    property RunningAverageDuration: Double read Get_RunningAverageDuration;
    property RunningAverageTimeSpan: TimeSpan read Get_RunningAverageTimeSpan;
    property RunningMaximumDuration: Int64 read Get_RunningMaximumDuration;
    property RunningMaximumDurationDouble: Double read Get_RunningMaximumDurationDouble;
    property RunningMaximumTimeSpan: TimeSpan read Get_RunningMaximumTimeSpan;
  end;

// *********************************************************************//
// DispIntf:  _AutomatonStateStatisticsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {279943EB-63C3-486A-BEA4-BDF4BEA5AD74}
// *********************************************************************//
  _AutomatonStateStatisticsDisp = dispinterface
    ['{279943EB-63C3-486A-BEA4-BDF4BEA5AD74}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property AccumulatedDuration: Int64 readonly dispid 1610743814;
    property AccumulatedDurationDouble: Double readonly dispid 1610743815;
    property AccumulatedTimeSpan: {NOT_OLEAUTO(TimeSpan)}OleVariant readonly dispid 1610743816;
    property AverageDuration: Double readonly dispid 1610743817;
    property AverageTimeSpan: {NOT_OLEAUTO(TimeSpan)}OleVariant readonly dispid 1610743818;
    property CurrentActiveDuration: Int64 readonly dispid 1610743819;
    property CurrentActiveDurationDouble: Double readonly dispid 1610743820;
    property CurrentActiveTick: Int64 readonly dispid 1610743821;
    property CurrentActiveTickDouble: Double readonly dispid 1610743822;
    property CurrentActiveTime: TDateTime readonly dispid 1610743823;
    property CurrentActiveTimeLocal: TDateTime readonly dispid 1610743824;
    property CurrentActiveTimeSpan: {NOT_OLEAUTO(TimeSpan)}OleVariant readonly dispid 1610743825;
    property CurrentActiveEnterTick: Int64 readonly dispid 1610743826;
    property CurrentActiveEnterTickDouble: Double readonly dispid 1610743827;
    property CurrentActiveEnterTime: TDateTime readonly dispid 1610743828;
    property CurrentActiveEnterTimeLocal: TDateTime readonly dispid 1610743829;
    property EnterCount: Integer readonly dispid 1610743830;
    property FirstEnterTick: Int64 readonly dispid 1610743831;
    property FirstEnterTickDouble: Double readonly dispid 1610743832;
    property FirstEnterTime: TDateTime readonly dispid 1610743833;
    property FirstEnterTimeLocal: TDateTime readonly dispid 1610743834;
    property IsActive: WordBool readonly dispid 1610743835;
    property LastCycleDuration: Int64 readonly dispid 1610743836;
    property LastCycleDurationDouble: Double readonly dispid 1610743837;
    property LastCycleEnterTick: Int64 readonly dispid 1610743838;
    property LastCycleEnterTickDouble: Double readonly dispid 1610743839;
    property LastCycleEnterTime: TDateTime readonly dispid 1610743840;
    property LastCycleEnterTimeLocal: TDateTime readonly dispid 1610743841;
    property LastCycleLeaveTick: Int64 readonly dispid 1610743842;
    property LastCycleLeaveTickDouble: Double readonly dispid 1610743843;
    property LastCycleLeaveTime: TDateTime readonly dispid 1610743844;
    property LastCycleLeaveTimeLocal: TDateTime readonly dispid 1610743845;
    property LastCycleTimeSpan: {NOT_OLEAUTO(TimeSpan)}OleVariant readonly dispid 1610743846;
    property LastEnterTick: Int64 readonly dispid 1610743847;
    property LastEnterTickDouble: Double readonly dispid 1610743848;
    property LastEnterTime: TDateTime readonly dispid 1610743849;
    property LastEnterTimeLocal: TDateTime readonly dispid 1610743850;
    property LeaveCount: Integer readonly dispid 1610743851;
    property MaximumDuration: Int64 readonly dispid 1610743852;
    property MaximumDurationDouble: Double readonly dispid 1610743853;
    property MaximumTimeSpan: {NOT_OLEAUTO(TimeSpan)}OleVariant readonly dispid 1610743854;
    property MinimumDuration: Int64 readonly dispid 1610743855;
    property MinimumDurationDouble: Double readonly dispid 1610743856;
    property MinimumTimeSpan: {NOT_OLEAUTO(TimeSpan)}OleVariant readonly dispid 1610743857;
    property RunningAccumulatedDuration: Int64 readonly dispid 1610743858;
    property RunningAccumulatedDurationDouble: Double readonly dispid 1610743859;
    property RunningAccumulatedTimeSpan: {NOT_OLEAUTO(TimeSpan)}OleVariant readonly dispid 1610743860;
    property RunningAverageDuration: Double readonly dispid 1610743861;
    property RunningAverageTimeSpan: {NOT_OLEAUTO(TimeSpan)}OleVariant readonly dispid 1610743862;
    property RunningMaximumDuration: Int64 readonly dispid 1610743863;
    property RunningMaximumDurationDouble: Double readonly dispid 1610743864;
    property RunningMaximumTimeSpan: {NOT_OLEAUTO(TimeSpan)}OleVariant readonly dispid 1610743865;
  end;

// *********************************************************************//
// Interface: _PeriodicResolverParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5B6B31AE-B602-4E93-A7C1-0802E92591CF}
// *********************************************************************//
  _PeriodicResolverParameters = interface(IDispatch)
    ['{5B6B31AE-B602-4E93-A7C1-0802E92591CF}']
    function Get_ToString: WideString; safecall;
    function Equals(obj: OleVariant): WordBool; safecall;
    function GetHashCode: Integer; safecall;
    function GetType: _Type; safecall;
    function Get_DisplayString: WideString; safecall;
    function Clone: OleVariant; safecall;
    function Get_StandardName: WideString; safecall;
    procedure Set_StandardName(const pRetVal: WideString); safecall;
    function Get_FailureRetrialDelay: Integer; safecall;
    procedure Set_FailureRetrialDelay(pRetVal: Integer); safecall;
    function Get_MaximumWaitDelay: Integer; safecall;
    procedure Set_MaximumWaitDelay(pRetVal: Integer); safecall;
    function Get_SuccessRetrialDelay: Integer; safecall;
    procedure Set_SuccessRetrialDelay(pRetVal: Integer); safecall;
    property ToString: WideString read Get_ToString;
    property DisplayString: WideString read Get_DisplayString;
    property StandardName: WideString read Get_StandardName write Set_StandardName;
    property FailureRetrialDelay: Integer read Get_FailureRetrialDelay write Set_FailureRetrialDelay;
    property MaximumWaitDelay: Integer read Get_MaximumWaitDelay write Set_MaximumWaitDelay;
    property SuccessRetrialDelay: Integer read Get_SuccessRetrialDelay write Set_SuccessRetrialDelay;
  end;

// *********************************************************************//
// DispIntf:  _PeriodicResolverParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5B6B31AE-B602-4E93-A7C1-0802E92591CF}
// *********************************************************************//
  _PeriodicResolverParametersDisp = dispinterface
    ['{5B6B31AE-B602-4E93-A7C1-0802E92591CF}']
    property ToString: WideString readonly dispid 1610743808;
    function Equals(obj: OleVariant): WordBool; dispid 1610743809;
    function GetHashCode: Integer; dispid 1610743810;
    function GetType: _Type; dispid 1610743811;
    property DisplayString: WideString readonly dispid 0;
    function Clone: OleVariant; dispid 1610743813;
    property StandardName: WideString dispid 1610743814;
    property FailureRetrialDelay: Integer dispid 1610743816;
    property MaximumWaitDelay: Integer dispid 1610743818;
    property SuccessRetrialDelay: Integer dispid 1610743820;
  end;

// *********************************************************************//
// The Class CoObject2 provides a Create and CreateRemote method to          
// create instances of the default interface _Object2 exposed by              
// the CoClass Object2. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoObject2 = class
    class function Create: _Object2;
    class function CreateRemote(const MachineName: string): _Object2;
  end;

// *********************************************************************//
// The Class CoTextParsingError provides a Create and CreateRemote method to          
// create instances of the default interface _TextParsingError exposed by              
// the CoClass TextParsingError. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTextParsingError = class
    class function Create: _TextParsingError;
    class function CreateRemote(const MachineName: string): _TextParsingError;
  end;

// *********************************************************************//
// The Class CoParameters provides a Create and CreateRemote method to          
// create instances of the default interface _Parameters exposed by              
// the CoClass Parameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoParameters = class
    class function Create: _Parameters;
    class function CreateRemote(const MachineName: string): _Parameters;
  end;

// *********************************************************************//
// The Class CoXmlQualifiedName2 provides a Create and CreateRemote method to          
// create instances of the default interface _XmlQualifiedName2 exposed by              
// the CoClass XmlQualifiedName2. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoXmlQualifiedName2 = class
    class function Create: _XmlQualifiedName2;
    class function CreateRemote(const MachineName: string): _XmlQualifiedName2;
  end;

// *********************************************************************//
// The Class CoXmlQualifiedName2Dictionary provides a Create and CreateRemote method to          
// create instances of the default interface _XmlQualifiedName2Dictionary exposed by              
// the CoClass XmlQualifiedName2Dictionary. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoXmlQualifiedName2Dictionary = class
    class function Create: _XmlQualifiedName2Dictionary;
    class function CreateRemote(const MachineName: string): _XmlQualifiedName2Dictionary;
  end;

// *********************************************************************//
// The Class CoWidget provides a Create and CreateRemote method to          
// create instances of the default interface _Widget exposed by              
// the CoClass Widget. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWidget = class
    class function Create: _Widget;
    class function CreateRemote(const MachineName: string): _Widget;
  end;

// *********************************************************************//
// The Class CoNotifyingWidget provides a Create and CreateRemote method to          
// create instances of the default interface _NotifyingWidget exposed by              
// the CoClass NotifyingWidget. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNotifyingWidget = class
    class function Create: _NotifyingWidget;
    class function CreateRemote(const MachineName: string): _NotifyingWidget;
  end;

// *********************************************************************//
// The Class CoManagedSecurityGroupParameters provides a Create and CreateRemote method to          
// create instances of the default interface _ManagedSecurityGroupParameters exposed by              
// the CoClass ManagedSecurityGroupParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoManagedSecurityGroupParameters = class
    class function Create: _ManagedSecurityGroupParameters;
    class function CreateRemote(const MachineName: string): _ManagedSecurityGroupParameters;
  end;

// *********************************************************************//
// The Class CoSecurityGroupElement provides a Create and CreateRemote method to          
// create instances of the default interface _SecurityGroupElement exposed by              
// the CoClass SecurityGroupElement. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSecurityGroupElement = class
    class function Create: _SecurityGroupElement;
    class function CreateRemote(const MachineName: string): _SecurityGroupElement;
  end;

// *********************************************************************//
// The Class CoSecurityKeysInfo provides a Create and CreateRemote method to          
// create instances of the default interface _SecurityKeysInfo exposed by              
// the CoClass SecurityKeysInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSecurityKeysInfo = class
    class function Create: _SecurityKeysInfo;
    class function CreateRemote(const MachineName: string): _SecurityKeysInfo;
  end;

// *********************************************************************//
// The Class CoPkiCertificate provides a Create and CreateRemote method to          
// create instances of the default interface _PkiCertificate exposed by              
// the CoClass PkiCertificate. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPkiCertificate = class
    class function Create: _PkiCertificate;
    class function CreateRemote(const MachineName: string): _PkiCertificate;
  end;

// *********************************************************************//
// The Class CoPkiCertificateCollection provides a Create and CreateRemote method to          
// create instances of the default interface _PkiCertificateCollection exposed by              
// the CoClass PkiCertificateCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPkiCertificateCollection = class
    class function Create: _PkiCertificateCollection;
    class function CreateRemote(const MachineName: string): _PkiCertificateCollection;
  end;

// *********************************************************************//
// The Class CoPkiChain provides a Create and CreateRemote method to          
// create instances of the default interface _PkiChain exposed by              
// the CoClass PkiChain. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPkiChain = class
    class function Create: _PkiChain;
    class function CreateRemote(const MachineName: string): _PkiChain;
  end;

// *********************************************************************//
// The Class CoPkiCrlCollection provides a Create and CreateRemote method to          
// create instances of the default interface _PkiCrlCollection exposed by              
// the CoClass PkiCrlCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPkiCrlCollection = class
    class function Create: _PkiCrlCollection;
    class function CreateRemote(const MachineName: string): _PkiCrlCollection;
  end;

// *********************************************************************//
// The Class CoPkiCrlEntryCollection provides a Create and CreateRemote method to          
// create instances of the default interface _PkiCrlEntryCollection exposed by              
// the CoClass PkiCrlEntryCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPkiCrlEntryCollection = class
    class function Create: _PkiCrlEntryCollection;
    class function CreateRemote(const MachineName: string): _PkiCrlEntryCollection;
  end;

// *********************************************************************//
// The Class CoCertificateAcceptancePolicy provides a Create and CreateRemote method to          
// create instances of the default interface _CertificateAcceptancePolicy exposed by              
// the CoClass CertificateAcceptancePolicy. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCertificateAcceptancePolicy = class
    class function Create: _CertificateAcceptancePolicy;
    class function CreateRemote(const MachineName: string): _CertificateAcceptancePolicy;
  end;

// *********************************************************************//
// The Class CoCertificateGenerationParameters provides a Create and CreateRemote method to          
// create instances of the default interface _CertificateGenerationParameters exposed by              
// the CoClass CertificateGenerationParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCertificateGenerationParameters = class
    class function Create: _CertificateGenerationParameters;
    class function CreateRemote(const MachineName: string): _CertificateGenerationParameters;
  end;

// *********************************************************************//
// The Class CoCertificateQuery provides a Create and CreateRemote method to          
// create instances of the default interface _CertificateQuery exposed by              
// the CoClass CertificateQuery. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCertificateQuery = class
    class function Create: _CertificateQuery;
    class function CreateRemote(const MachineName: string): _CertificateQuery;
  end;

// *********************************************************************//
// The Class CoCertificateQueryCollection provides a Create and CreateRemote method to          
// create instances of the default interface _CertificateQueryCollection exposed by              
// the CoClass CertificateQueryCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCertificateQueryCollection = class
    class function Create: _CertificateQueryCollection;
    class function CreateRemote(const MachineName: string): _CertificateQueryCollection;
  end;

// *********************************************************************//
// The Class CoCertificateSecurityHandler provides a Create and CreateRemote method to          
// create instances of the default interface _CertificateSecurityHandler exposed by              
// the CoClass CertificateSecurityHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCertificateSecurityHandler = class
    class function Create: _CertificateSecurityHandler;
    class function CreateRemote(const MachineName: string): _CertificateSecurityHandler;
  end;

// *********************************************************************//
// The Class CoCertificateSecurityParameters provides a Create and CreateRemote method to          
// create instances of the default interface _CertificateSecurityParameters exposed by              
// the CoClass CertificateSecurityParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCertificateSecurityParameters = class
    class function Create: _CertificateSecurityParameters;
    class function CreateRemote(const MachineName: string): _CertificateSecurityParameters;
  end;

// *********************************************************************//
// The Class CoGetCertificatesEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _GetCertificatesEventArgs exposed by              
// the CoClass GetCertificatesEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoGetCertificatesEventArgs = class
    class function Create: _GetCertificatesEventArgs;
    class function CreateRemote(const MachineName: string): _GetCertificatesEventArgs;
  end;

// *********************************************************************//
// The Class CoNetworkSecurity provides a Create and CreateRemote method to          
// create instances of the default interface _NetworkSecurity exposed by              
// the CoClass NetworkSecurity. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNetworkSecurity = class
    class function Create: _NetworkSecurity;
    class function CreateRemote(const MachineName: string): _NetworkSecurity;
  end;

// *********************************************************************//
// The Class CoStaticCertificateSecurityParameters provides a Create and CreateRemote method to          
// create instances of the default interface _StaticCertificateSecurityParameters exposed by              
// the CoClass StaticCertificateSecurityParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoStaticCertificateSecurityParameters = class
    class function Create: _StaticCertificateSecurityParameters;
    class function CreateRemote(const MachineName: string): _StaticCertificateSecurityParameters;
  end;

// *********************************************************************//
// The Class CoValidateCertificateEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _ValidateCertificateEventArgs exposed by              
// the CoClass ValidateCertificateEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoValidateCertificateEventArgs = class
    class function Create: _ValidateCertificateEventArgs;
    class function CreateRemote(const MachineName: string): _ValidateCertificateEventArgs;
  end;

// *********************************************************************//
// The Class CoComConfiguration provides a Create and CreateRemote method to          
// create instances of the default interface _ComConfiguration exposed by              
// the CoClass ComConfiguration. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoComConfiguration = class
    class function Create: _ComConfiguration;
    class function CreateRemote(const MachineName: string): _ComConfiguration;
  end;

// *********************************************************************//
// The Class CoComInstantiationParameters provides a Create and CreateRemote method to          
// create instances of the default interface _ComInstantiationParameters exposed by              
// the CoClass ComInstantiationParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoComInstantiationParameters = class
    class function Create: _ComInstantiationParameters;
    class function CreateRemote(const MachineName: string): _ComInstantiationParameters;
  end;

// *********************************************************************//
// The Class CoComManagement provides a Create and CreateRemote method to          
// create instances of the default interface _ComManagement exposed by              
// the CoClass ComManagement. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoComManagement = class
    class function Create: _ComManagement;
    class function CreateRemote(const MachineName: string): _ComManagement;
  end;

// *********************************************************************//
// The Class CoComSecurityParameters provides a Create and CreateRemote method to          
// create instances of the default interface _ComSecurityParameters exposed by              
// the CoClass ComSecurityParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoComSecurityParameters = class
    class function Create: _ComSecurityParameters;
    class function CreateRemote(const MachineName: string): _ComSecurityParameters;
  end;

// *********************************************************************//
// The Class CoExtendedCOMException provides a Create and CreateRemote method to          
// create instances of the default interface _ExtendedCOMException exposed by              
// the CoClass ExtendedCOMException. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoExtendedCOMException = class
    class function Create: _ExtendedCOMException;
    class function CreateRemote(const MachineName: string): _ExtendedCOMException;
  end;

// *********************************************************************//
// The Class CoSimulatedCOMException provides a Create and CreateRemote method to          
// create instances of the default interface _SimulatedCOMException exposed by              
// the CoClass SimulatedCOMException. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSimulatedCOMException = class
    class function Create: _SimulatedCOMException;
    class function CreateRemote(const MachineName: string): _SimulatedCOMException;
  end;

// *********************************************************************//
// The Class CoOperationArguments provides a Create and CreateRemote method to          
// create instances of the default interface _OperationArguments exposed by              
// the CoClass OperationArguments. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOperationArguments = class
    class function Create: _OperationArguments;
    class function CreateRemote(const MachineName: string): _OperationArguments;
  end;

// *********************************************************************//
// The Class CoHandleArguments provides a Create and CreateRemote method to          
// create instances of the default interface _HandleArguments exposed by              
// the CoClass HandleArguments. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoHandleArguments = class
    class function Create: _HandleArguments;
    class function CreateRemote(const MachineName: string): _HandleArguments;
  end;

// *********************************************************************//
// The Class CoOperationEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _OperationEventArgs exposed by              
// the CoClass OperationEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOperationEventArgs = class
    class function Create: _OperationEventArgs;
    class function CreateRemote(const MachineName: string): _OperationEventArgs;
  end;

// *********************************************************************//
// The Class CoOperationException provides a Create and CreateRemote method to          
// create instances of the default interface _OperationException exposed by              
// the CoClass OperationException. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOperationException = class
    class function Create: _OperationException;
    class function CreateRemote(const MachineName: string): _OperationException;
  end;

// *********************************************************************//
// The Class CoOperationResult provides a Create and CreateRemote method to          
// create instances of the default interface _OperationResult exposed by              
// the CoClass OperationResult. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOperationResult = class
    class function Create: _OperationResult;
    class function CreateRemote(const MachineName: string): _OperationResult;
  end;

// *********************************************************************//
// The Class CoValueArguments provides a Create and CreateRemote method to          
// create instances of the default interface _ValueArguments exposed by              
// the CoClass ValueArguments. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoValueArguments = class
    class function Create: _ValueArguments;
    class function CreateRemote(const MachineName: string): _ValueArguments;
  end;

// *********************************************************************//
// The Class CoValueArrayResult provides a Create and CreateRemote method to          
// create instances of the default interface _ValueArrayResult exposed by              
// the CoClass ValueArrayResult. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoValueArrayResult = class
    class function Create: _ValueArrayResult;
    class function CreateRemote(const MachineName: string): _ValueArrayResult;
  end;

// *********************************************************************//
// The Class CoValueResult provides a Create and CreateRemote method to          
// create instances of the default interface _ValueResult exposed by              
// the CoClass ValueResult. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoValueResult = class
    class function Create: _ValueResult;
    class function CreateRemote(const MachineName: string): _ValueResult;
  end;

// *********************************************************************//
// The Class CoNetworkCredential2 provides a Create and CreateRemote method to          
// create instances of the default interface _NetworkCredential2 exposed by              
// the CoClass NetworkCredential2. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNetworkCredential2 = class
    class function Create: _NetworkCredential2;
    class function CreateRemote(const MachineName: string): _NetworkCredential2;
  end;

// *********************************************************************//
// The Class CoComputerElement provides a Create and CreateRemote method to          
// create instances of the default interface _ComputerElement exposed by              
// the CoClass ComputerElement. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoComputerElement = class
    class function Create: _ComputerElement;
    class function CreateRemote(const MachineName: string): _ComputerElement;
  end;

// *********************************************************************//
// The Class CoHostElement provides a Create and CreateRemote method to          
// create instances of the default interface _HostElement exposed by              
// the CoClass HostElement. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoHostElement = class
    class function Create: _HostElement;
    class function CreateRemote(const MachineName: string): _HostElement;
  end;

// *********************************************************************//
// The Class CoResourceAddress provides a Create and CreateRemote method to          
// create instances of the default interface _ResourceAddress exposed by              
// the CoClass ResourceAddress. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoResourceAddress = class
    class function Create: _ResourceAddress;
    class function CreateRemote(const MachineName: string): _ResourceAddress;
  end;

// *********************************************************************//
// The Class CoBrowsePathFormatException provides a Create and CreateRemote method to          
// create instances of the default interface _BrowsePathFormatException exposed by              
// the CoClass BrowsePathFormatException. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBrowsePathFormatException = class
    class function Create: _BrowsePathFormatException;
    class function CreateRemote(const MachineName: string): _BrowsePathFormatException;
  end;

// *********************************************************************//
// The Class CoBrowsePathParser provides a Create and CreateRemote method to          
// create instances of the default interface _BrowsePathParser exposed by              
// the CoClass BrowsePathParser. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBrowsePathParser = class
    class function Create: _BrowsePathParser;
    class function CreateRemote(const MachineName: string): _BrowsePathParser;
  end;

// *********************************************************************//
// The Class CoBrowsePath provides a Create and CreateRemote method to          
// create instances of the default interface _BrowsePath exposed by              
// the CoClass BrowsePath. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBrowsePath = class
    class function Create: _BrowsePath;
    class function CreateRemote(const MachineName: string): _BrowsePath;
  end;

// *********************************************************************//
// The Class CoLogEntryEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _LogEntryEventArgs exposed by              
// the CoClass LogEntryEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLogEntryEventArgs = class
    class function Create: _LogEntryEventArgs;
    class function CreateRemote(const MachineName: string): _LogEntryEventArgs;
  end;

// *********************************************************************//
// The Class CoKerberosTokenInfo provides a Create and CreateRemote method to          
// create instances of the default interface _KerberosTokenInfo exposed by              
// the CoClass KerberosTokenInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoKerberosTokenInfo = class
    class function Create: _KerberosTokenInfo;
    class function CreateRemote(const MachineName: string): _KerberosTokenInfo;
  end;

// *********************************************************************//
// The Class CoAnonymousTokenInfo provides a Create and CreateRemote method to          
// create instances of the default interface _AnonymousTokenInfo exposed by              
// the CoClass AnonymousTokenInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAnonymousTokenInfo = class
    class function Create: _AnonymousTokenInfo;
    class function CreateRemote(const MachineName: string): _AnonymousTokenInfo;
  end;

// *********************************************************************//
// The Class CoTokenInfoCollection provides a Create and CreateRemote method to          
// create instances of the default interface _TokenInfoCollection exposed by              
// the CoClass TokenInfoCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTokenInfoCollection = class
    class function Create: _TokenInfoCollection;
    class function CreateRemote(const MachineName: string): _TokenInfoCollection;
  end;

// *********************************************************************//
// The Class CoTokenInfoPolicy provides a Create and CreateRemote method to          
// create instances of the default interface _TokenInfoPolicy exposed by              
// the CoClass TokenInfoPolicy. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTokenInfoPolicy = class
    class function Create: _TokenInfoPolicy;
    class function CreateRemote(const MachineName: string): _TokenInfoPolicy;
  end;

// *********************************************************************//
// The Class CoTokenSelectionPolicy provides a Create and CreateRemote method to          
// create instances of the default interface _TokenSelectionPolicy exposed by              
// the CoClass TokenSelectionPolicy. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTokenSelectionPolicy = class
    class function Create: _TokenSelectionPolicy;
    class function CreateRemote(const MachineName: string): _TokenSelectionPolicy;
  end;

// *********************************************************************//
// The Class CoUserIdentity provides a Create and CreateRemote method to          
// create instances of the default interface _UserIdentity exposed by              
// the CoClass UserIdentity. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUserIdentity = class
    class function Create: _UserIdentity;
    class function CreateRemote(const MachineName: string): _UserIdentity;
  end;

// *********************************************************************//
// The Class CoUserNameTokenInfo provides a Create and CreateRemote method to          
// create instances of the default interface _UserNameTokenInfo exposed by              
// the CoClass UserNameTokenInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUserNameTokenInfo = class
    class function Create: _UserNameTokenInfo;
    class function CreateRemote(const MachineName: string): _UserNameTokenInfo;
  end;

// *********************************************************************//
// The Class CoX509CertificateTokenInfo provides a Create and CreateRemote method to          
// create instances of the default interface _X509CertificateTokenInfo exposed by              
// the CoClass X509CertificateTokenInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoX509CertificateTokenInfo = class
    class function Create: _X509CertificateTokenInfo;
    class function CreateRemote(const MachineName: string): _X509CertificateTokenInfo;
  end;

// *********************************************************************//
// The Class CoWindowsFormsInteractionParameters provides a Create and CreateRemote method to          
// create instances of the default interface _WindowsFormsInteractionParameters exposed by              
// the CoClass WindowsFormsInteractionParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWindowsFormsInteractionParameters = class
    class function Create: _WindowsFormsInteractionParameters;
    class function CreateRemote(const MachineName: string): _WindowsFormsInteractionParameters;
  end;

// *********************************************************************//
// The Class CoPluginSetup provides a Create and CreateRemote method to          
// create instances of the default interface _PluginSetup exposed by              
// the CoClass PluginSetup. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPluginSetup = class
    class function Create: _PluginSetup;
    class function CreateRemote(const MachineName: string): _PluginSetup;
  end;

// *********************************************************************//
// The Class CoPluginSetupCollection provides a Create and CreateRemote method to          
// create instances of the default interface _PluginSetupCollection exposed by              
// the CoClass PluginSetupCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPluginSetupCollection = class
    class function Create: _PluginSetupCollection;
    class function CreateRemote(const MachineName: string): _PluginSetupCollection;
  end;

// *********************************************************************//
// The Class CoGenericData provides a Create and CreateRemote method to          
// create instances of the default interface _GenericData exposed by              
// the CoClass GenericData. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoGenericData = class
    class function Create: _GenericData;
    class function CreateRemote(const MachineName: string): _GenericData;
  end;

// *********************************************************************//
// The Class CoDataFieldCollection provides a Create and CreateRemote method to          
// create instances of the default interface _DataFieldCollection exposed by              
// the CoClass DataFieldCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDataFieldCollection = class
    class function Create: _DataFieldCollection;
    class function CreateRemote(const MachineName: string): _DataFieldCollection;
  end;

// *********************************************************************//
// The Class CoDataType provides a Create and CreateRemote method to          
// create instances of the default interface _DataType exposed by              
// the CoClass DataType. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDataType = class
    class function Create: _DataType;
    class function CreateRemote(const MachineName: string): _DataType;
  end;

// *********************************************************************//
// The Class CoEnumerationDataType provides a Create and CreateRemote method to          
// create instances of the default interface _EnumerationDataType exposed by              
// the CoClass EnumerationDataType. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEnumerationDataType = class
    class function Create: _EnumerationDataType;
    class function CreateRemote(const MachineName: string): _EnumerationDataType;
  end;

// *********************************************************************//
// The Class CoEnumerationMember provides a Create and CreateRemote method to          
// create instances of the default interface _EnumerationMember exposed by              
// the CoClass EnumerationMember. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEnumerationMember = class
    class function Create: _EnumerationMember;
    class function CreateRemote(const MachineName: string): _EnumerationMember;
  end;

// *********************************************************************//
// The Class CoEnumerationMemberCollection provides a Create and CreateRemote method to          
// create instances of the default interface _EnumerationMemberCollection exposed by              
// the CoClass EnumerationMemberCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEnumerationMemberCollection = class
    class function Create: _EnumerationMemberCollection;
    class function CreateRemote(const MachineName: string): _EnumerationMemberCollection;
  end;

// *********************************************************************//
// The Class CoFieldDataDictionary provides a Create and CreateRemote method to          
// create instances of the default interface _FieldDataDictionary exposed by              
// the CoClass FieldDataDictionary. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFieldDataDictionary = class
    class function Create: _FieldDataDictionary;
    class function CreateRemote(const MachineName: string): _FieldDataDictionary;
  end;

// *********************************************************************//
// The Class CoEnumerationData provides a Create and CreateRemote method to          
// create instances of the default interface _EnumerationData exposed by              
// the CoClass EnumerationData. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEnumerationData = class
    class function Create: _EnumerationData;
    class function CreateRemote(const MachineName: string): _EnumerationData;
  end;

// *********************************************************************//
// The Class CoGenericDataCollection provides a Create and CreateRemote method to          
// create instances of the default interface _GenericDataCollection exposed by              
// the CoClass GenericDataCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoGenericDataCollection = class
    class function Create: _GenericDataCollection;
    class function CreateRemote(const MachineName: string): _GenericDataCollection;
  end;

// *********************************************************************//
// The Class CoOpaqueData provides a Create and CreateRemote method to          
// create instances of the default interface _OpaqueData exposed by              
// the CoClass OpaqueData. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOpaqueData = class
    class function Create: _OpaqueData;
    class function CreateRemote(const MachineName: string): _OpaqueData;
  end;

// *********************************************************************//
// The Class CoOpaqueDataType provides a Create and CreateRemote method to          
// create instances of the default interface _OpaqueDataType exposed by              
// the CoClass OpaqueDataType. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOpaqueDataType = class
    class function Create: _OpaqueDataType;
    class function CreateRemote(const MachineName: string): _OpaqueDataType;
  end;

// *********************************************************************//
// The Class CoPrimitiveData provides a Create and CreateRemote method to          
// create instances of the default interface _PrimitiveData exposed by              
// the CoClass PrimitiveData. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPrimitiveData = class
    class function Create: _PrimitiveData;
    class function CreateRemote(const MachineName: string): _PrimitiveData;
  end;

// *********************************************************************//
// The Class CoPrimitiveDataType provides a Create and CreateRemote method to          
// create instances of the default interface _PrimitiveDataType exposed by              
// the CoClass PrimitiveDataType. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPrimitiveDataType = class
    class function Create: _PrimitiveDataType;
    class function CreateRemote(const MachineName: string): _PrimitiveDataType;
  end;

// *********************************************************************//
// The Class CoSequenceData provides a Create and CreateRemote method to          
// create instances of the default interface _SequenceData exposed by              
// the CoClass SequenceData. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSequenceData = class
    class function Create: _SequenceData;
    class function CreateRemote(const MachineName: string): _SequenceData;
  end;

// *********************************************************************//
// The Class CoSequenceDataType provides a Create and CreateRemote method to          
// create instances of the default interface _SequenceDataType exposed by              
// the CoClass SequenceDataType. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSequenceDataType = class
    class function Create: _SequenceDataType;
    class function CreateRemote(const MachineName: string): _SequenceDataType;
  end;

// *********************************************************************//
// The Class CoStructuredData provides a Create and CreateRemote method to          
// create instances of the default interface _StructuredData exposed by              
// the CoClass StructuredData. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoStructuredData = class
    class function Create: _StructuredData;
    class function CreateRemote(const MachineName: string): _StructuredData;
  end;

// *********************************************************************//
// The Class CoStructuredDataType provides a Create and CreateRemote method to          
// create instances of the default interface _StructuredDataType exposed by              
// the CoClass StructuredDataType. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoStructuredDataType = class
    class function Create: _StructuredDataType;
    class function CreateRemote(const MachineName: string): _StructuredDataType;
  end;

// *********************************************************************//
// The Class CoDataField provides a Create and CreateRemote method to          
// create instances of the default interface _DataField exposed by              
// the CoClass DataField. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDataField = class
    class function Create: _DataField;
    class function CreateRemote(const MachineName: string): _DataField;
  end;

// *********************************************************************//
// The Class CoUnionData provides a Create and CreateRemote method to          
// create instances of the default interface _UnionData exposed by              
// the CoClass UnionData. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUnionData = class
    class function Create: _UnionData;
    class function CreateRemote(const MachineName: string): _UnionData;
  end;

// *********************************************************************//
// The Class CoUnionDataType provides a Create and CreateRemote method to          
// create instances of the default interface _UnionDataType exposed by              
// the CoClass UnionDataType. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUnionDataType = class
    class function Create: _UnionDataType;
    class function CreateRemote(const MachineName: string): _UnionDataType;
  end;

// *********************************************************************//
// The Class CoConsoleInteractionParameters provides a Create and CreateRemote method to          
// create instances of the default interface _ConsoleInteractionParameters exposed by              
// the CoClass ConsoleInteractionParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoConsoleInteractionParameters = class
    class function Create: _ConsoleInteractionParameters;
    class function CreateRemote(const MachineName: string): _ConsoleInteractionParameters;
  end;

// *********************************************************************//
// The Class CoConfigurationPartCollection provides a Create and CreateRemote method to          
// create instances of the default interface _ConfigurationPartCollection exposed by              
// the CoClass ConfigurationPartCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoConfigurationPartCollection = class
    class function Create: _ConfigurationPartCollection;
    class function CreateRemote(const MachineName: string): _ConfigurationPartCollection;
  end;

// *********************************************************************//
// The Class CoDataEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _DataEventArgs exposed by              
// the CoClass DataEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDataEventArgs = class
    class function Create: _DataEventArgs;
    class function CreateRemote(const MachineName: string): _DataEventArgs;
  end;

// *********************************************************************//
// The Class CoException2 provides a Create and CreateRemote method to          
// create instances of the default interface _Exception2 exposed by              
// the CoClass Exception2. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoException2 = class
    class function Create: _Exception2;
    class function CreateRemote(const MachineName: string): _Exception2;
  end;

// *********************************************************************//
// The Class CoExceptionEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _ExceptionEventArgs exposed by              
// the CoClass ExceptionEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoExceptionEventArgs = class
    class function Create: _ExceptionEventArgs;
    class function CreateRemote(const MachineName: string): _ExceptionEventArgs;
  end;

// *********************************************************************//
// The Class CoFailureEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _FailureEventArgs exposed by              
// the CoClass FailureEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFailureEventArgs = class
    class function Create: _FailureEventArgs;
    class function CreateRemote(const MachineName: string): _FailureEventArgs;
  end;

// *********************************************************************//
// The Class CoFormatException2 provides a Create and CreateRemote method to          
// create instances of the default interface _FormatException2 exposed by              
// the CoClass FormatException2. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFormatException2 = class
    class function Create: _FormatException2;
    class function CreateRemote(const MachineName: string): _FormatException2;
  end;

// *********************************************************************//
// The Class CoEndpointDescriptor provides a Create and CreateRemote method to          
// create instances of the default interface _EndpointDescriptor exposed by              
// the CoClass EndpointDescriptor. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEndpointDescriptor = class
    class function Create: _EndpointDescriptor;
    class function CreateRemote(const MachineName: string): _EndpointDescriptor;
  end;

// *********************************************************************//
// The Class CoMemberNotFoundException provides a Create and CreateRemote method to          
// create instances of the default interface _MemberNotFoundException exposed by              
// the CoClass MemberNotFoundException. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMemberNotFoundException = class
    class function Create: _MemberNotFoundException;
    class function CreateRemote(const MachineName: string): _MemberNotFoundException;
  end;

// *********************************************************************//
// The Class CoNormalizedException provides a Create and CreateRemote method to          
// create instances of the default interface _NormalizedException exposed by              
// the CoClass NormalizedException. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNormalizedException = class
    class function Create: _NormalizedException;
    class function CreateRemote(const MachineName: string): _NormalizedException;
  end;

// *********************************************************************//
// The Class CoInfo provides a Create and CreateRemote method to          
// create instances of the default interface _Info exposed by              
// the CoClass Info. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoInfo = class
    class function Create: _Info;
    class function CreateRemote(const MachineName: string): _Info;
  end;

// *********************************************************************//
// The Class CoOutOfSlotsException provides a Create and CreateRemote method to          
// create instances of the default interface _OutOfSlotsException exposed by              
// the CoClass OutOfSlotsException. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOutOfSlotsException = class
    class function Create: _OutOfSlotsException;
    class function CreateRemote(const MachineName: string): _OutOfSlotsException;
  end;

// *********************************************************************//
// The Class CoComponentParameters provides a Create and CreateRemote method to          
// create instances of the default interface _ComponentParameters exposed by              
// the CoClass ComponentParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoComponentParameters = class
    class function Create: _ComponentParameters;
    class function CreateRemote(const MachineName: string): _ComponentParameters;
  end;

// *********************************************************************//
// The Class CoProcedureCallException provides a Create and CreateRemote method to          
// create instances of the default interface _ProcedureCallException exposed by              
// the CoClass ProcedureCallException. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoProcedureCallException = class
    class function Create: _ProcedureCallException;
    class function CreateRemote(const MachineName: string): _ProcedureCallException;
  end;

// *********************************************************************//
// The Class CoQueueOverflowException provides a Create and CreateRemote method to          
// create instances of the default interface _QueueOverflowException exposed by              
// the CoClass QueueOverflowException. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoQueueOverflowException = class
    class function Create: _QueueOverflowException;
    class function CreateRemote(const MachineName: string): _QueueOverflowException;
  end;

// *********************************************************************//
// The Class CoObjectDescriptor provides a Create and CreateRemote method to          
// create instances of the default interface _ObjectDescriptor exposed by              
// the CoClass ObjectDescriptor. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoObjectDescriptor = class
    class function Create: _ObjectDescriptor;
    class function CreateRemote(const MachineName: string): _ObjectDescriptor;
  end;

// *********************************************************************//
// The Class CoResultException provides a Create and CreateRemote method to          
// create instances of the default interface _ResultException exposed by              
// the CoClass ResultException. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoResultException = class
    class function Create: _ResultException;
    class function CreateRemote(const MachineName: string): _ResultException;
  end;

// *********************************************************************//
// The Class CoGenericError provides a Create and CreateRemote method to          
// create instances of the default interface _GenericError exposed by              
// the CoClass GenericError. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoGenericError = class
    class function Create: _GenericError;
    class function CreateRemote(const MachineName: string): _GenericError;
  end;

// *********************************************************************//
// The Class CoStringListParsingError provides a Create and CreateRemote method to          
// create instances of the default interface _StringListParsingError exposed by              
// the CoClass StringListParsingError. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoStringListParsingError = class
    class function Create: _StringListParsingError;
    class function CreateRemote(const MachineName: string): _StringListParsingError;
  end;

// *********************************************************************//
// The Class CoStringParsingError provides a Create and CreateRemote method to          
// create instances of the default interface _StringParsingError exposed by              
// the CoClass StringParsingError. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoStringParsingError = class
    class function Create: _StringParsingError;
    class function CreateRemote(const MachineName: string): _StringParsingError;
  end;

// *********************************************************************//
// The Class CoConnectedConditionChangedEventArgs provides a Create and CreateRemote method to          
// create instances of the default interface _ConnectedConditionChangedEventArgs exposed by              
// the CoClass ConnectedConditionChangedEventArgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoConnectedConditionChangedEventArgs = class
    class function Create: _ConnectedConditionChangedEventArgs;
    class function CreateRemote(const MachineName: string): _ConnectedConditionChangedEventArgs;
  end;

// *********************************************************************//
// The Class CoConnectedConditionStatistics provides a Create and CreateRemote method to          
// create instances of the default interface _ConnectedConditionStatistics exposed by              
// the CoClass ConnectedConditionStatistics. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoConnectedConditionStatistics = class
    class function Create: _ConnectedConditionStatistics;
    class function CreateRemote(const MachineName: string): _ConnectedConditionStatistics;
  end;

// *********************************************************************//
// The Class CoInteropHelper provides a Create and CreateRemote method to          
// create instances of the default interface _InteropHelper exposed by              
// the CoClass InteropHelper. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoInteropHelper = class
    class function Create: _InteropHelper;
    class function CreateRemote(const MachineName: string): _InteropHelper;
  end;

// *********************************************************************//
// The Class CoVarType provides a Create and CreateRemote method to          
// create instances of the default interface _VarType exposed by              
// the CoClass VarType. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoVarType = class
    class function Create: _VarType;
    class function CreateRemote(const MachineName: string): _VarType;
  end;

// *********************************************************************//
// The Class CoExceptionCollection provides a Create and CreateRemote method to          
// create instances of the default interface _ExceptionCollection exposed by              
// the CoClass ExceptionCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoExceptionCollection = class
    class function Create: _ExceptionCollection;
    class function CreateRemote(const MachineName: string): _ExceptionCollection;
  end;

// *********************************************************************//
// The Class CoInt32Collection provides a Create and CreateRemote method to          
// create instances of the default interface _Int32Collection exposed by              
// the CoClass Int32Collection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoInt32Collection = class
    class function Create: _Int32Collection;
    class function CreateRemote(const MachineName: string): _Int32Collection;
  end;

// *********************************************************************//
// The Class CoNormalizedExceptionCollection provides a Create and CreateRemote method to          
// create instances of the default interface _NormalizedExceptionCollection exposed by              
// the CoClass NormalizedExceptionCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNormalizedExceptionCollection = class
    class function Create: _NormalizedExceptionCollection;
    class function CreateRemote(const MachineName: string): _NormalizedExceptionCollection;
  end;

// *********************************************************************//
// The Class CoStringCollection provides a Create and CreateRemote method to          
// create instances of the default interface _StringCollection exposed by              
// the CoClass StringCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoStringCollection = class
    class function Create: _StringCollection;
    class function CreateRemote(const MachineName: string): _StringCollection;
  end;

// *********************************************************************//
// The Class CoStringObjectDictionary provides a Create and CreateRemote method to          
// create instances of the default interface _StringObjectDictionary exposed by              
// the CoClass StringObjectDictionary. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoStringObjectDictionary = class
    class function Create: _StringObjectDictionary;
    class function CreateRemote(const MachineName: string): _StringObjectDictionary;
  end;

// *********************************************************************//
// The Class CoStringSet provides a Create and CreateRemote method to          
// create instances of the default interface _StringSet exposed by              
// the CoClass StringSet. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoStringSet = class
    class function Create: _StringSet;
    class function CreateRemote(const MachineName: string): _StringSet;
  end;

// *********************************************************************//
// The Class CoStringStringDictionary provides a Create and CreateRemote method to          
// create instances of the default interface _StringStringDictionary exposed by              
// the CoClass StringStringDictionary. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoStringStringDictionary = class
    class function Create: _StringStringDictionary;
    class function CreateRemote(const MachineName: string): _StringStringDictionary;
  end;

// *********************************************************************//
// The Class CoDictionaryWrapper provides a Create and CreateRemote method to          
// create instances of the default interface _Dictionary exposed by              
// the CoClass DictionaryWrapper. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDictionaryWrapper = class
    class function Create: _Dictionary;
    class function CreateRemote(const MachineName: string): _Dictionary;
  end;

// *********************************************************************//
// The Class CoDictionaryEntry2 provides a Create and CreateRemote method to          
// create instances of the default interface _DictionaryEntry2 exposed by              
// the CoClass DictionaryEntry2. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDictionaryEntry2 = class
    class function Create: _DictionaryEntry2;
    class function CreateRemote(const MachineName: string): _DictionaryEntry2;
  end;

// *********************************************************************//
// The Class CoElasticVector provides a Create and CreateRemote method to          
// create instances of the default interface _ElasticVector exposed by              
// the CoClass ElasticVector. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoElasticVector = class
    class function Create: _ElasticVector;
    class function CreateRemote(const MachineName: string): _ElasticVector;
  end;

// *********************************************************************//
// The Class CoAliasMetadata provides a Create and CreateRemote method to          
// create instances of the default interface _AliasMetadata exposed by              
// the CoClass AliasMetadata. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAliasMetadata = class
    class function Create: _AliasMetadata;
    class function CreateRemote(const MachineName: string): _AliasMetadata;
  end;

// *********************************************************************//
// The Class CoResourceDescriptor provides a Create and CreateRemote method to          
// create instances of the default interface _ResourceDescriptor exposed by              
// the CoClass ResourceDescriptor. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoResourceDescriptor = class
    class function Create: _ResourceDescriptor;
    class function CreateRemote(const MachineName: string): _ResourceDescriptor;
  end;

// *********************************************************************//
// The Class CoAliasFilter provides a Create and CreateRemote method to          
// create instances of the default interface _AliasFilter exposed by              
// the CoClass AliasFilter. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAliasFilter = class
    class function Create: _AliasFilter;
    class function CreateRemote(const MachineName: string): _AliasFilter;
  end;

// *********************************************************************//
// The Class CoAliasInfo provides a Create and CreateRemote method to          
// create instances of the default interface _AliasInfo exposed by              
// the CoClass AliasInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAliasInfo = class
    class function Create: _AliasInfo;
    class function CreateRemote(const MachineName: string): _AliasInfo;
  end;

// *********************************************************************//
// The Class CoEmptyAliasRepository provides a Create and CreateRemote method to          
// create instances of the default interface _AliasRepository exposed by              
// the CoClass EmptyAliasRepository. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEmptyAliasRepository = class
    class function Create: _AliasRepository;
    class function CreateRemote(const MachineName: string): _AliasRepository;
  end;

// *********************************************************************//
// The Class CoMemoryAliasRepository provides a Create and CreateRemote method to          
// create instances of the default interface _AliasRepository exposed by              
// the CoClass MemoryAliasRepository. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMemoryAliasRepository = class
    class function Create: _AliasRepository;
    class function CreateRemote(const MachineName: string): _AliasRepository;
  end;

// *********************************************************************//
// The Class CoAutomatonStateStatistics provides a Create and CreateRemote method to          
// create instances of the default interface _AutomatonStateStatistics exposed by              
// the CoClass AutomatonStateStatistics. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAutomatonStateStatistics = class
    class function Create: _AutomatonStateStatistics;
    class function CreateRemote(const MachineName: string): _AutomatonStateStatistics;
  end;

// *********************************************************************//
// The Class CoPeriodicResolverParameters provides a Create and CreateRemote method to          
// create instances of the default interface _PeriodicResolverParameters exposed by              
// the CoClass PeriodicResolverParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPeriodicResolverParameters = class
    class function Create: _PeriodicResolverParameters;
    class function CreateRemote(const MachineName: string): _PeriodicResolverParameters;
  end;

implementation

uses System.Win.ComObj;

class function CoObject2.Create: _Object2;
begin
  Result := CreateComObject(CLASS_Object2) as _Object2;
end;

class function CoObject2.CreateRemote(const MachineName: string): _Object2;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Object2) as _Object2;
end;

class function CoTextParsingError.Create: _TextParsingError;
begin
  Result := CreateComObject(CLASS_TextParsingError) as _TextParsingError;
end;

class function CoTextParsingError.CreateRemote(const MachineName: string): _TextParsingError;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TextParsingError) as _TextParsingError;
end;

class function CoParameters.Create: _Parameters;
begin
  Result := CreateComObject(CLASS_Parameters) as _Parameters;
end;

class function CoParameters.CreateRemote(const MachineName: string): _Parameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Parameters) as _Parameters;
end;

class function CoXmlQualifiedName2.Create: _XmlQualifiedName2;
begin
  Result := CreateComObject(CLASS_XmlQualifiedName2) as _XmlQualifiedName2;
end;

class function CoXmlQualifiedName2.CreateRemote(const MachineName: string): _XmlQualifiedName2;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_XmlQualifiedName2) as _XmlQualifiedName2;
end;

class function CoXmlQualifiedName2Dictionary.Create: _XmlQualifiedName2Dictionary;
begin
  Result := CreateComObject(CLASS_XmlQualifiedName2Dictionary) as _XmlQualifiedName2Dictionary;
end;

class function CoXmlQualifiedName2Dictionary.CreateRemote(const MachineName: string): _XmlQualifiedName2Dictionary;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_XmlQualifiedName2Dictionary) as _XmlQualifiedName2Dictionary;
end;

class function CoWidget.Create: _Widget;
begin
  Result := CreateComObject(CLASS_Widget) as _Widget;
end;

class function CoWidget.CreateRemote(const MachineName: string): _Widget;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Widget) as _Widget;
end;

class function CoNotifyingWidget.Create: _NotifyingWidget;
begin
  Result := CreateComObject(CLASS_NotifyingWidget) as _NotifyingWidget;
end;

class function CoNotifyingWidget.CreateRemote(const MachineName: string): _NotifyingWidget;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NotifyingWidget) as _NotifyingWidget;
end;

class function CoManagedSecurityGroupParameters.Create: _ManagedSecurityGroupParameters;
begin
  Result := CreateComObject(CLASS_ManagedSecurityGroupParameters) as _ManagedSecurityGroupParameters;
end;

class function CoManagedSecurityGroupParameters.CreateRemote(const MachineName: string): _ManagedSecurityGroupParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ManagedSecurityGroupParameters) as _ManagedSecurityGroupParameters;
end;

class function CoSecurityGroupElement.Create: _SecurityGroupElement;
begin
  Result := CreateComObject(CLASS_SecurityGroupElement) as _SecurityGroupElement;
end;

class function CoSecurityGroupElement.CreateRemote(const MachineName: string): _SecurityGroupElement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SecurityGroupElement) as _SecurityGroupElement;
end;

class function CoSecurityKeysInfo.Create: _SecurityKeysInfo;
begin
  Result := CreateComObject(CLASS_SecurityKeysInfo) as _SecurityKeysInfo;
end;

class function CoSecurityKeysInfo.CreateRemote(const MachineName: string): _SecurityKeysInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SecurityKeysInfo) as _SecurityKeysInfo;
end;

class function CoPkiCertificate.Create: _PkiCertificate;
begin
  Result := CreateComObject(CLASS_PkiCertificate) as _PkiCertificate;
end;

class function CoPkiCertificate.CreateRemote(const MachineName: string): _PkiCertificate;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PkiCertificate) as _PkiCertificate;
end;

class function CoPkiCertificateCollection.Create: _PkiCertificateCollection;
begin
  Result := CreateComObject(CLASS_PkiCertificateCollection) as _PkiCertificateCollection;
end;

class function CoPkiCertificateCollection.CreateRemote(const MachineName: string): _PkiCertificateCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PkiCertificateCollection) as _PkiCertificateCollection;
end;

class function CoPkiChain.Create: _PkiChain;
begin
  Result := CreateComObject(CLASS_PkiChain) as _PkiChain;
end;

class function CoPkiChain.CreateRemote(const MachineName: string): _PkiChain;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PkiChain) as _PkiChain;
end;

class function CoPkiCrlCollection.Create: _PkiCrlCollection;
begin
  Result := CreateComObject(CLASS_PkiCrlCollection) as _PkiCrlCollection;
end;

class function CoPkiCrlCollection.CreateRemote(const MachineName: string): _PkiCrlCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PkiCrlCollection) as _PkiCrlCollection;
end;

class function CoPkiCrlEntryCollection.Create: _PkiCrlEntryCollection;
begin
  Result := CreateComObject(CLASS_PkiCrlEntryCollection) as _PkiCrlEntryCollection;
end;

class function CoPkiCrlEntryCollection.CreateRemote(const MachineName: string): _PkiCrlEntryCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PkiCrlEntryCollection) as _PkiCrlEntryCollection;
end;

class function CoCertificateAcceptancePolicy.Create: _CertificateAcceptancePolicy;
begin
  Result := CreateComObject(CLASS_CertificateAcceptancePolicy) as _CertificateAcceptancePolicy;
end;

class function CoCertificateAcceptancePolicy.CreateRemote(const MachineName: string): _CertificateAcceptancePolicy;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CertificateAcceptancePolicy) as _CertificateAcceptancePolicy;
end;

class function CoCertificateGenerationParameters.Create: _CertificateGenerationParameters;
begin
  Result := CreateComObject(CLASS_CertificateGenerationParameters) as _CertificateGenerationParameters;
end;

class function CoCertificateGenerationParameters.CreateRemote(const MachineName: string): _CertificateGenerationParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CertificateGenerationParameters) as _CertificateGenerationParameters;
end;

class function CoCertificateQuery.Create: _CertificateQuery;
begin
  Result := CreateComObject(CLASS_CertificateQuery) as _CertificateQuery;
end;

class function CoCertificateQuery.CreateRemote(const MachineName: string): _CertificateQuery;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CertificateQuery) as _CertificateQuery;
end;

class function CoCertificateQueryCollection.Create: _CertificateQueryCollection;
begin
  Result := CreateComObject(CLASS_CertificateQueryCollection) as _CertificateQueryCollection;
end;

class function CoCertificateQueryCollection.CreateRemote(const MachineName: string): _CertificateQueryCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CertificateQueryCollection) as _CertificateQueryCollection;
end;

class function CoCertificateSecurityHandler.Create: _CertificateSecurityHandler;
begin
  Result := CreateComObject(CLASS_CertificateSecurityHandler) as _CertificateSecurityHandler;
end;

class function CoCertificateSecurityHandler.CreateRemote(const MachineName: string): _CertificateSecurityHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CertificateSecurityHandler) as _CertificateSecurityHandler;
end;

class function CoCertificateSecurityParameters.Create: _CertificateSecurityParameters;
begin
  Result := CreateComObject(CLASS_CertificateSecurityParameters) as _CertificateSecurityParameters;
end;

class function CoCertificateSecurityParameters.CreateRemote(const MachineName: string): _CertificateSecurityParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CertificateSecurityParameters) as _CertificateSecurityParameters;
end;

class function CoGetCertificatesEventArgs.Create: _GetCertificatesEventArgs;
begin
  Result := CreateComObject(CLASS_GetCertificatesEventArgs) as _GetCertificatesEventArgs;
end;

class function CoGetCertificatesEventArgs.CreateRemote(const MachineName: string): _GetCertificatesEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_GetCertificatesEventArgs) as _GetCertificatesEventArgs;
end;

class function CoNetworkSecurity.Create: _NetworkSecurity;
begin
  Result := CreateComObject(CLASS_NetworkSecurity) as _NetworkSecurity;
end;

class function CoNetworkSecurity.CreateRemote(const MachineName: string): _NetworkSecurity;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NetworkSecurity) as _NetworkSecurity;
end;

class function CoStaticCertificateSecurityParameters.Create: _StaticCertificateSecurityParameters;
begin
  Result := CreateComObject(CLASS_StaticCertificateSecurityParameters) as _StaticCertificateSecurityParameters;
end;

class function CoStaticCertificateSecurityParameters.CreateRemote(const MachineName: string): _StaticCertificateSecurityParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_StaticCertificateSecurityParameters) as _StaticCertificateSecurityParameters;
end;

class function CoValidateCertificateEventArgs.Create: _ValidateCertificateEventArgs;
begin
  Result := CreateComObject(CLASS_ValidateCertificateEventArgs) as _ValidateCertificateEventArgs;
end;

class function CoValidateCertificateEventArgs.CreateRemote(const MachineName: string): _ValidateCertificateEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ValidateCertificateEventArgs) as _ValidateCertificateEventArgs;
end;

class function CoComConfiguration.Create: _ComConfiguration;
begin
  Result := CreateComObject(CLASS_ComConfiguration) as _ComConfiguration;
end;

class function CoComConfiguration.CreateRemote(const MachineName: string): _ComConfiguration;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ComConfiguration) as _ComConfiguration;
end;

class function CoComInstantiationParameters.Create: _ComInstantiationParameters;
begin
  Result := CreateComObject(CLASS_ComInstantiationParameters) as _ComInstantiationParameters;
end;

class function CoComInstantiationParameters.CreateRemote(const MachineName: string): _ComInstantiationParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ComInstantiationParameters) as _ComInstantiationParameters;
end;

class function CoComManagement.Create: _ComManagement;
begin
  Result := CreateComObject(CLASS_ComManagement) as _ComManagement;
end;

class function CoComManagement.CreateRemote(const MachineName: string): _ComManagement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ComManagement) as _ComManagement;
end;

class function CoComSecurityParameters.Create: _ComSecurityParameters;
begin
  Result := CreateComObject(CLASS_ComSecurityParameters) as _ComSecurityParameters;
end;

class function CoComSecurityParameters.CreateRemote(const MachineName: string): _ComSecurityParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ComSecurityParameters) as _ComSecurityParameters;
end;

class function CoExtendedCOMException.Create: _ExtendedCOMException;
begin
  Result := CreateComObject(CLASS_ExtendedCOMException) as _ExtendedCOMException;
end;

class function CoExtendedCOMException.CreateRemote(const MachineName: string): _ExtendedCOMException;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ExtendedCOMException) as _ExtendedCOMException;
end;

class function CoSimulatedCOMException.Create: _SimulatedCOMException;
begin
  Result := CreateComObject(CLASS_SimulatedCOMException) as _SimulatedCOMException;
end;

class function CoSimulatedCOMException.CreateRemote(const MachineName: string): _SimulatedCOMException;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SimulatedCOMException) as _SimulatedCOMException;
end;

class function CoOperationArguments.Create: _OperationArguments;
begin
  Result := CreateComObject(CLASS_OperationArguments) as _OperationArguments;
end;

class function CoOperationArguments.CreateRemote(const MachineName: string): _OperationArguments;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OperationArguments) as _OperationArguments;
end;

class function CoHandleArguments.Create: _HandleArguments;
begin
  Result := CreateComObject(CLASS_HandleArguments) as _HandleArguments;
end;

class function CoHandleArguments.CreateRemote(const MachineName: string): _HandleArguments;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_HandleArguments) as _HandleArguments;
end;

class function CoOperationEventArgs.Create: _OperationEventArgs;
begin
  Result := CreateComObject(CLASS_OperationEventArgs) as _OperationEventArgs;
end;

class function CoOperationEventArgs.CreateRemote(const MachineName: string): _OperationEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OperationEventArgs) as _OperationEventArgs;
end;

class function CoOperationException.Create: _OperationException;
begin
  Result := CreateComObject(CLASS_OperationException) as _OperationException;
end;

class function CoOperationException.CreateRemote(const MachineName: string): _OperationException;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OperationException) as _OperationException;
end;

class function CoOperationResult.Create: _OperationResult;
begin
  Result := CreateComObject(CLASS_OperationResult) as _OperationResult;
end;

class function CoOperationResult.CreateRemote(const MachineName: string): _OperationResult;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OperationResult) as _OperationResult;
end;

class function CoValueArguments.Create: _ValueArguments;
begin
  Result := CreateComObject(CLASS_ValueArguments) as _ValueArguments;
end;

class function CoValueArguments.CreateRemote(const MachineName: string): _ValueArguments;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ValueArguments) as _ValueArguments;
end;

class function CoValueArrayResult.Create: _ValueArrayResult;
begin
  Result := CreateComObject(CLASS_ValueArrayResult) as _ValueArrayResult;
end;

class function CoValueArrayResult.CreateRemote(const MachineName: string): _ValueArrayResult;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ValueArrayResult) as _ValueArrayResult;
end;

class function CoValueResult.Create: _ValueResult;
begin
  Result := CreateComObject(CLASS_ValueResult) as _ValueResult;
end;

class function CoValueResult.CreateRemote(const MachineName: string): _ValueResult;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ValueResult) as _ValueResult;
end;

class function CoNetworkCredential2.Create: _NetworkCredential2;
begin
  Result := CreateComObject(CLASS_NetworkCredential2) as _NetworkCredential2;
end;

class function CoNetworkCredential2.CreateRemote(const MachineName: string): _NetworkCredential2;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NetworkCredential2) as _NetworkCredential2;
end;

class function CoComputerElement.Create: _ComputerElement;
begin
  Result := CreateComObject(CLASS_ComputerElement) as _ComputerElement;
end;

class function CoComputerElement.CreateRemote(const MachineName: string): _ComputerElement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ComputerElement) as _ComputerElement;
end;

class function CoHostElement.Create: _HostElement;
begin
  Result := CreateComObject(CLASS_HostElement) as _HostElement;
end;

class function CoHostElement.CreateRemote(const MachineName: string): _HostElement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_HostElement) as _HostElement;
end;

class function CoResourceAddress.Create: _ResourceAddress;
begin
  Result := CreateComObject(CLASS_ResourceAddress) as _ResourceAddress;
end;

class function CoResourceAddress.CreateRemote(const MachineName: string): _ResourceAddress;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ResourceAddress) as _ResourceAddress;
end;

class function CoBrowsePathFormatException.Create: _BrowsePathFormatException;
begin
  Result := CreateComObject(CLASS_BrowsePathFormatException) as _BrowsePathFormatException;
end;

class function CoBrowsePathFormatException.CreateRemote(const MachineName: string): _BrowsePathFormatException;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BrowsePathFormatException) as _BrowsePathFormatException;
end;

class function CoBrowsePathParser.Create: _BrowsePathParser;
begin
  Result := CreateComObject(CLASS_BrowsePathParser) as _BrowsePathParser;
end;

class function CoBrowsePathParser.CreateRemote(const MachineName: string): _BrowsePathParser;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BrowsePathParser) as _BrowsePathParser;
end;

class function CoBrowsePath.Create: _BrowsePath;
begin
  Result := CreateComObject(CLASS_BrowsePath) as _BrowsePath;
end;

class function CoBrowsePath.CreateRemote(const MachineName: string): _BrowsePath;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BrowsePath) as _BrowsePath;
end;

class function CoLogEntryEventArgs.Create: _LogEntryEventArgs;
begin
  Result := CreateComObject(CLASS_LogEntryEventArgs) as _LogEntryEventArgs;
end;

class function CoLogEntryEventArgs.CreateRemote(const MachineName: string): _LogEntryEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LogEntryEventArgs) as _LogEntryEventArgs;
end;

class function CoKerberosTokenInfo.Create: _KerberosTokenInfo;
begin
  Result := CreateComObject(CLASS_KerberosTokenInfo) as _KerberosTokenInfo;
end;

class function CoKerberosTokenInfo.CreateRemote(const MachineName: string): _KerberosTokenInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_KerberosTokenInfo) as _KerberosTokenInfo;
end;

class function CoAnonymousTokenInfo.Create: _AnonymousTokenInfo;
begin
  Result := CreateComObject(CLASS_AnonymousTokenInfo) as _AnonymousTokenInfo;
end;

class function CoAnonymousTokenInfo.CreateRemote(const MachineName: string): _AnonymousTokenInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AnonymousTokenInfo) as _AnonymousTokenInfo;
end;

class function CoTokenInfoCollection.Create: _TokenInfoCollection;
begin
  Result := CreateComObject(CLASS_TokenInfoCollection) as _TokenInfoCollection;
end;

class function CoTokenInfoCollection.CreateRemote(const MachineName: string): _TokenInfoCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TokenInfoCollection) as _TokenInfoCollection;
end;

class function CoTokenInfoPolicy.Create: _TokenInfoPolicy;
begin
  Result := CreateComObject(CLASS_TokenInfoPolicy) as _TokenInfoPolicy;
end;

class function CoTokenInfoPolicy.CreateRemote(const MachineName: string): _TokenInfoPolicy;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TokenInfoPolicy) as _TokenInfoPolicy;
end;

class function CoTokenSelectionPolicy.Create: _TokenSelectionPolicy;
begin
  Result := CreateComObject(CLASS_TokenSelectionPolicy) as _TokenSelectionPolicy;
end;

class function CoTokenSelectionPolicy.CreateRemote(const MachineName: string): _TokenSelectionPolicy;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TokenSelectionPolicy) as _TokenSelectionPolicy;
end;

class function CoUserIdentity.Create: _UserIdentity;
begin
  Result := CreateComObject(CLASS_UserIdentity) as _UserIdentity;
end;

class function CoUserIdentity.CreateRemote(const MachineName: string): _UserIdentity;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UserIdentity) as _UserIdentity;
end;

class function CoUserNameTokenInfo.Create: _UserNameTokenInfo;
begin
  Result := CreateComObject(CLASS_UserNameTokenInfo) as _UserNameTokenInfo;
end;

class function CoUserNameTokenInfo.CreateRemote(const MachineName: string): _UserNameTokenInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UserNameTokenInfo) as _UserNameTokenInfo;
end;

class function CoX509CertificateTokenInfo.Create: _X509CertificateTokenInfo;
begin
  Result := CreateComObject(CLASS_X509CertificateTokenInfo) as _X509CertificateTokenInfo;
end;

class function CoX509CertificateTokenInfo.CreateRemote(const MachineName: string): _X509CertificateTokenInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_X509CertificateTokenInfo) as _X509CertificateTokenInfo;
end;

class function CoWindowsFormsInteractionParameters.Create: _WindowsFormsInteractionParameters;
begin
  Result := CreateComObject(CLASS_WindowsFormsInteractionParameters) as _WindowsFormsInteractionParameters;
end;

class function CoWindowsFormsInteractionParameters.CreateRemote(const MachineName: string): _WindowsFormsInteractionParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WindowsFormsInteractionParameters) as _WindowsFormsInteractionParameters;
end;

class function CoPluginSetup.Create: _PluginSetup;
begin
  Result := CreateComObject(CLASS_PluginSetup) as _PluginSetup;
end;

class function CoPluginSetup.CreateRemote(const MachineName: string): _PluginSetup;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PluginSetup) as _PluginSetup;
end;

class function CoPluginSetupCollection.Create: _PluginSetupCollection;
begin
  Result := CreateComObject(CLASS_PluginSetupCollection) as _PluginSetupCollection;
end;

class function CoPluginSetupCollection.CreateRemote(const MachineName: string): _PluginSetupCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PluginSetupCollection) as _PluginSetupCollection;
end;

class function CoGenericData.Create: _GenericData;
begin
  Result := CreateComObject(CLASS_GenericData) as _GenericData;
end;

class function CoGenericData.CreateRemote(const MachineName: string): _GenericData;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_GenericData) as _GenericData;
end;

class function CoDataFieldCollection.Create: _DataFieldCollection;
begin
  Result := CreateComObject(CLASS_DataFieldCollection) as _DataFieldCollection;
end;

class function CoDataFieldCollection.CreateRemote(const MachineName: string): _DataFieldCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DataFieldCollection) as _DataFieldCollection;
end;

class function CoDataType.Create: _DataType;
begin
  Result := CreateComObject(CLASS_DataType) as _DataType;
end;

class function CoDataType.CreateRemote(const MachineName: string): _DataType;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DataType) as _DataType;
end;

class function CoEnumerationDataType.Create: _EnumerationDataType;
begin
  Result := CreateComObject(CLASS_EnumerationDataType) as _EnumerationDataType;
end;

class function CoEnumerationDataType.CreateRemote(const MachineName: string): _EnumerationDataType;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EnumerationDataType) as _EnumerationDataType;
end;

class function CoEnumerationMember.Create: _EnumerationMember;
begin
  Result := CreateComObject(CLASS_EnumerationMember) as _EnumerationMember;
end;

class function CoEnumerationMember.CreateRemote(const MachineName: string): _EnumerationMember;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EnumerationMember) as _EnumerationMember;
end;

class function CoEnumerationMemberCollection.Create: _EnumerationMemberCollection;
begin
  Result := CreateComObject(CLASS_EnumerationMemberCollection) as _EnumerationMemberCollection;
end;

class function CoEnumerationMemberCollection.CreateRemote(const MachineName: string): _EnumerationMemberCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EnumerationMemberCollection) as _EnumerationMemberCollection;
end;

class function CoFieldDataDictionary.Create: _FieldDataDictionary;
begin
  Result := CreateComObject(CLASS_FieldDataDictionary) as _FieldDataDictionary;
end;

class function CoFieldDataDictionary.CreateRemote(const MachineName: string): _FieldDataDictionary;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FieldDataDictionary) as _FieldDataDictionary;
end;

class function CoEnumerationData.Create: _EnumerationData;
begin
  Result := CreateComObject(CLASS_EnumerationData) as _EnumerationData;
end;

class function CoEnumerationData.CreateRemote(const MachineName: string): _EnumerationData;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EnumerationData) as _EnumerationData;
end;

class function CoGenericDataCollection.Create: _GenericDataCollection;
begin
  Result := CreateComObject(CLASS_GenericDataCollection) as _GenericDataCollection;
end;

class function CoGenericDataCollection.CreateRemote(const MachineName: string): _GenericDataCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_GenericDataCollection) as _GenericDataCollection;
end;

class function CoOpaqueData.Create: _OpaqueData;
begin
  Result := CreateComObject(CLASS_OpaqueData) as _OpaqueData;
end;

class function CoOpaqueData.CreateRemote(const MachineName: string): _OpaqueData;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OpaqueData) as _OpaqueData;
end;

class function CoOpaqueDataType.Create: _OpaqueDataType;
begin
  Result := CreateComObject(CLASS_OpaqueDataType) as _OpaqueDataType;
end;

class function CoOpaqueDataType.CreateRemote(const MachineName: string): _OpaqueDataType;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OpaqueDataType) as _OpaqueDataType;
end;

class function CoPrimitiveData.Create: _PrimitiveData;
begin
  Result := CreateComObject(CLASS_PrimitiveData) as _PrimitiveData;
end;

class function CoPrimitiveData.CreateRemote(const MachineName: string): _PrimitiveData;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PrimitiveData) as _PrimitiveData;
end;

class function CoPrimitiveDataType.Create: _PrimitiveDataType;
begin
  Result := CreateComObject(CLASS_PrimitiveDataType) as _PrimitiveDataType;
end;

class function CoPrimitiveDataType.CreateRemote(const MachineName: string): _PrimitiveDataType;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PrimitiveDataType) as _PrimitiveDataType;
end;

class function CoSequenceData.Create: _SequenceData;
begin
  Result := CreateComObject(CLASS_SequenceData) as _SequenceData;
end;

class function CoSequenceData.CreateRemote(const MachineName: string): _SequenceData;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SequenceData) as _SequenceData;
end;

class function CoSequenceDataType.Create: _SequenceDataType;
begin
  Result := CreateComObject(CLASS_SequenceDataType) as _SequenceDataType;
end;

class function CoSequenceDataType.CreateRemote(const MachineName: string): _SequenceDataType;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SequenceDataType) as _SequenceDataType;
end;

class function CoStructuredData.Create: _StructuredData;
begin
  Result := CreateComObject(CLASS_StructuredData) as _StructuredData;
end;

class function CoStructuredData.CreateRemote(const MachineName: string): _StructuredData;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_StructuredData) as _StructuredData;
end;

class function CoStructuredDataType.Create: _StructuredDataType;
begin
  Result := CreateComObject(CLASS_StructuredDataType) as _StructuredDataType;
end;

class function CoStructuredDataType.CreateRemote(const MachineName: string): _StructuredDataType;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_StructuredDataType) as _StructuredDataType;
end;

class function CoDataField.Create: _DataField;
begin
  Result := CreateComObject(CLASS_DataField) as _DataField;
end;

class function CoDataField.CreateRemote(const MachineName: string): _DataField;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DataField) as _DataField;
end;

class function CoUnionData.Create: _UnionData;
begin
  Result := CreateComObject(CLASS_UnionData) as _UnionData;
end;

class function CoUnionData.CreateRemote(const MachineName: string): _UnionData;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UnionData) as _UnionData;
end;

class function CoUnionDataType.Create: _UnionDataType;
begin
  Result := CreateComObject(CLASS_UnionDataType) as _UnionDataType;
end;

class function CoUnionDataType.CreateRemote(const MachineName: string): _UnionDataType;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UnionDataType) as _UnionDataType;
end;

class function CoConsoleInteractionParameters.Create: _ConsoleInteractionParameters;
begin
  Result := CreateComObject(CLASS_ConsoleInteractionParameters) as _ConsoleInteractionParameters;
end;

class function CoConsoleInteractionParameters.CreateRemote(const MachineName: string): _ConsoleInteractionParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ConsoleInteractionParameters) as _ConsoleInteractionParameters;
end;

class function CoConfigurationPartCollection.Create: _ConfigurationPartCollection;
begin
  Result := CreateComObject(CLASS_ConfigurationPartCollection) as _ConfigurationPartCollection;
end;

class function CoConfigurationPartCollection.CreateRemote(const MachineName: string): _ConfigurationPartCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ConfigurationPartCollection) as _ConfigurationPartCollection;
end;

class function CoDataEventArgs.Create: _DataEventArgs;
begin
  Result := CreateComObject(CLASS_DataEventArgs) as _DataEventArgs;
end;

class function CoDataEventArgs.CreateRemote(const MachineName: string): _DataEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DataEventArgs) as _DataEventArgs;
end;

class function CoException2.Create: _Exception2;
begin
  Result := CreateComObject(CLASS_Exception2) as _Exception2;
end;

class function CoException2.CreateRemote(const MachineName: string): _Exception2;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Exception2) as _Exception2;
end;

class function CoExceptionEventArgs.Create: _ExceptionEventArgs;
begin
  Result := CreateComObject(CLASS_ExceptionEventArgs) as _ExceptionEventArgs;
end;

class function CoExceptionEventArgs.CreateRemote(const MachineName: string): _ExceptionEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ExceptionEventArgs) as _ExceptionEventArgs;
end;

class function CoFailureEventArgs.Create: _FailureEventArgs;
begin
  Result := CreateComObject(CLASS_FailureEventArgs) as _FailureEventArgs;
end;

class function CoFailureEventArgs.CreateRemote(const MachineName: string): _FailureEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FailureEventArgs) as _FailureEventArgs;
end;

class function CoFormatException2.Create: _FormatException2;
begin
  Result := CreateComObject(CLASS_FormatException2) as _FormatException2;
end;

class function CoFormatException2.CreateRemote(const MachineName: string): _FormatException2;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FormatException2) as _FormatException2;
end;

class function CoEndpointDescriptor.Create: _EndpointDescriptor;
begin
  Result := CreateComObject(CLASS_EndpointDescriptor) as _EndpointDescriptor;
end;

class function CoEndpointDescriptor.CreateRemote(const MachineName: string): _EndpointDescriptor;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EndpointDescriptor) as _EndpointDescriptor;
end;

class function CoMemberNotFoundException.Create: _MemberNotFoundException;
begin
  Result := CreateComObject(CLASS_MemberNotFoundException) as _MemberNotFoundException;
end;

class function CoMemberNotFoundException.CreateRemote(const MachineName: string): _MemberNotFoundException;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MemberNotFoundException) as _MemberNotFoundException;
end;

class function CoNormalizedException.Create: _NormalizedException;
begin
  Result := CreateComObject(CLASS_NormalizedException) as _NormalizedException;
end;

class function CoNormalizedException.CreateRemote(const MachineName: string): _NormalizedException;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NormalizedException) as _NormalizedException;
end;

class function CoInfo.Create: _Info;
begin
  Result := CreateComObject(CLASS_Info) as _Info;
end;

class function CoInfo.CreateRemote(const MachineName: string): _Info;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Info) as _Info;
end;

class function CoOutOfSlotsException.Create: _OutOfSlotsException;
begin
  Result := CreateComObject(CLASS_OutOfSlotsException) as _OutOfSlotsException;
end;

class function CoOutOfSlotsException.CreateRemote(const MachineName: string): _OutOfSlotsException;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OutOfSlotsException) as _OutOfSlotsException;
end;

class function CoComponentParameters.Create: _ComponentParameters;
begin
  Result := CreateComObject(CLASS_ComponentParameters) as _ComponentParameters;
end;

class function CoComponentParameters.CreateRemote(const MachineName: string): _ComponentParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ComponentParameters) as _ComponentParameters;
end;

class function CoProcedureCallException.Create: _ProcedureCallException;
begin
  Result := CreateComObject(CLASS_ProcedureCallException) as _ProcedureCallException;
end;

class function CoProcedureCallException.CreateRemote(const MachineName: string): _ProcedureCallException;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ProcedureCallException) as _ProcedureCallException;
end;

class function CoQueueOverflowException.Create: _QueueOverflowException;
begin
  Result := CreateComObject(CLASS_QueueOverflowException) as _QueueOverflowException;
end;

class function CoQueueOverflowException.CreateRemote(const MachineName: string): _QueueOverflowException;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_QueueOverflowException) as _QueueOverflowException;
end;

class function CoObjectDescriptor.Create: _ObjectDescriptor;
begin
  Result := CreateComObject(CLASS_ObjectDescriptor) as _ObjectDescriptor;
end;

class function CoObjectDescriptor.CreateRemote(const MachineName: string): _ObjectDescriptor;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ObjectDescriptor) as _ObjectDescriptor;
end;

class function CoResultException.Create: _ResultException;
begin
  Result := CreateComObject(CLASS_ResultException) as _ResultException;
end;

class function CoResultException.CreateRemote(const MachineName: string): _ResultException;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ResultException) as _ResultException;
end;

class function CoGenericError.Create: _GenericError;
begin
  Result := CreateComObject(CLASS_GenericError) as _GenericError;
end;

class function CoGenericError.CreateRemote(const MachineName: string): _GenericError;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_GenericError) as _GenericError;
end;

class function CoStringListParsingError.Create: _StringListParsingError;
begin
  Result := CreateComObject(CLASS_StringListParsingError) as _StringListParsingError;
end;

class function CoStringListParsingError.CreateRemote(const MachineName: string): _StringListParsingError;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_StringListParsingError) as _StringListParsingError;
end;

class function CoStringParsingError.Create: _StringParsingError;
begin
  Result := CreateComObject(CLASS_StringParsingError) as _StringParsingError;
end;

class function CoStringParsingError.CreateRemote(const MachineName: string): _StringParsingError;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_StringParsingError) as _StringParsingError;
end;

class function CoConnectedConditionChangedEventArgs.Create: _ConnectedConditionChangedEventArgs;
begin
  Result := CreateComObject(CLASS_ConnectedConditionChangedEventArgs) as _ConnectedConditionChangedEventArgs;
end;

class function CoConnectedConditionChangedEventArgs.CreateRemote(const MachineName: string): _ConnectedConditionChangedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ConnectedConditionChangedEventArgs) as _ConnectedConditionChangedEventArgs;
end;

class function CoConnectedConditionStatistics.Create: _ConnectedConditionStatistics;
begin
  Result := CreateComObject(CLASS_ConnectedConditionStatistics) as _ConnectedConditionStatistics;
end;

class function CoConnectedConditionStatistics.CreateRemote(const MachineName: string): _ConnectedConditionStatistics;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ConnectedConditionStatistics) as _ConnectedConditionStatistics;
end;

class function CoInteropHelper.Create: _InteropHelper;
begin
  Result := CreateComObject(CLASS_InteropHelper) as _InteropHelper;
end;

class function CoInteropHelper.CreateRemote(const MachineName: string): _InteropHelper;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_InteropHelper) as _InteropHelper;
end;

class function CoVarType.Create: _VarType;
begin
  Result := CreateComObject(CLASS_VarType) as _VarType;
end;

class function CoVarType.CreateRemote(const MachineName: string): _VarType;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_VarType) as _VarType;
end;

class function CoExceptionCollection.Create: _ExceptionCollection;
begin
  Result := CreateComObject(CLASS_ExceptionCollection) as _ExceptionCollection;
end;

class function CoExceptionCollection.CreateRemote(const MachineName: string): _ExceptionCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ExceptionCollection) as _ExceptionCollection;
end;

class function CoInt32Collection.Create: _Int32Collection;
begin
  Result := CreateComObject(CLASS_Int32Collection) as _Int32Collection;
end;

class function CoInt32Collection.CreateRemote(const MachineName: string): _Int32Collection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Int32Collection) as _Int32Collection;
end;

class function CoNormalizedExceptionCollection.Create: _NormalizedExceptionCollection;
begin
  Result := CreateComObject(CLASS_NormalizedExceptionCollection) as _NormalizedExceptionCollection;
end;

class function CoNormalizedExceptionCollection.CreateRemote(const MachineName: string): _NormalizedExceptionCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NormalizedExceptionCollection) as _NormalizedExceptionCollection;
end;

class function CoStringCollection.Create: _StringCollection;
begin
  Result := CreateComObject(CLASS_StringCollection) as _StringCollection;
end;

class function CoStringCollection.CreateRemote(const MachineName: string): _StringCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_StringCollection) as _StringCollection;
end;

class function CoStringObjectDictionary.Create: _StringObjectDictionary;
begin
  Result := CreateComObject(CLASS_StringObjectDictionary) as _StringObjectDictionary;
end;

class function CoStringObjectDictionary.CreateRemote(const MachineName: string): _StringObjectDictionary;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_StringObjectDictionary) as _StringObjectDictionary;
end;

class function CoStringSet.Create: _StringSet;
begin
  Result := CreateComObject(CLASS_StringSet) as _StringSet;
end;

class function CoStringSet.CreateRemote(const MachineName: string): _StringSet;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_StringSet) as _StringSet;
end;

class function CoStringStringDictionary.Create: _StringStringDictionary;
begin
  Result := CreateComObject(CLASS_StringStringDictionary) as _StringStringDictionary;
end;

class function CoStringStringDictionary.CreateRemote(const MachineName: string): _StringStringDictionary;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_StringStringDictionary) as _StringStringDictionary;
end;

class function CoDictionaryWrapper.Create: _Dictionary;
begin
  Result := CreateComObject(CLASS_DictionaryWrapper) as _Dictionary;
end;

class function CoDictionaryWrapper.CreateRemote(const MachineName: string): _Dictionary;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DictionaryWrapper) as _Dictionary;
end;

class function CoDictionaryEntry2.Create: _DictionaryEntry2;
begin
  Result := CreateComObject(CLASS_DictionaryEntry2) as _DictionaryEntry2;
end;

class function CoDictionaryEntry2.CreateRemote(const MachineName: string): _DictionaryEntry2;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DictionaryEntry2) as _DictionaryEntry2;
end;

class function CoElasticVector.Create: _ElasticVector;
begin
  Result := CreateComObject(CLASS_ElasticVector) as _ElasticVector;
end;

class function CoElasticVector.CreateRemote(const MachineName: string): _ElasticVector;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ElasticVector) as _ElasticVector;
end;

class function CoAliasMetadata.Create: _AliasMetadata;
begin
  Result := CreateComObject(CLASS_AliasMetadata) as _AliasMetadata;
end;

class function CoAliasMetadata.CreateRemote(const MachineName: string): _AliasMetadata;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AliasMetadata) as _AliasMetadata;
end;

class function CoResourceDescriptor.Create: _ResourceDescriptor;
begin
  Result := CreateComObject(CLASS_ResourceDescriptor) as _ResourceDescriptor;
end;

class function CoResourceDescriptor.CreateRemote(const MachineName: string): _ResourceDescriptor;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ResourceDescriptor) as _ResourceDescriptor;
end;

class function CoAliasFilter.Create: _AliasFilter;
begin
  Result := CreateComObject(CLASS_AliasFilter) as _AliasFilter;
end;

class function CoAliasFilter.CreateRemote(const MachineName: string): _AliasFilter;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AliasFilter) as _AliasFilter;
end;

class function CoAliasInfo.Create: _AliasInfo;
begin
  Result := CreateComObject(CLASS_AliasInfo) as _AliasInfo;
end;

class function CoAliasInfo.CreateRemote(const MachineName: string): _AliasInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AliasInfo) as _AliasInfo;
end;

class function CoEmptyAliasRepository.Create: _AliasRepository;
begin
  Result := CreateComObject(CLASS_EmptyAliasRepository) as _AliasRepository;
end;

class function CoEmptyAliasRepository.CreateRemote(const MachineName: string): _AliasRepository;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EmptyAliasRepository) as _AliasRepository;
end;

class function CoMemoryAliasRepository.Create: _AliasRepository;
begin
  Result := CreateComObject(CLASS_MemoryAliasRepository) as _AliasRepository;
end;

class function CoMemoryAliasRepository.CreateRemote(const MachineName: string): _AliasRepository;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MemoryAliasRepository) as _AliasRepository;
end;

class function CoAutomatonStateStatistics.Create: _AutomatonStateStatistics;
begin
  Result := CreateComObject(CLASS_AutomatonStateStatistics) as _AutomatonStateStatistics;
end;

class function CoAutomatonStateStatistics.CreateRemote(const MachineName: string): _AutomatonStateStatistics;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AutomatonStateStatistics) as _AutomatonStateStatistics;
end;

class function CoPeriodicResolverParameters.Create: _PeriodicResolverParameters;
begin
  Result := CreateComObject(CLASS_PeriodicResolverParameters) as _PeriodicResolverParameters;
end;

class function CoPeriodicResolverParameters.CreateRemote(const MachineName: string): _PeriodicResolverParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PeriodicResolverParameters) as _PeriodicResolverParameters;
end;

end.
