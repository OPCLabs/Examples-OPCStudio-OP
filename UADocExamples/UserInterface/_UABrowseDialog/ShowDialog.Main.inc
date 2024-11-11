// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to let the user browse for an OPC-UA node.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure ShowDialog.Main;
var
  BrowseDialog: OpcLabs_EasyOpcForms_TLB._UABrowseDialog;
  DialogResult: System_Windows_Forms_TLB.DialogResult;
begin
  // Instantiate the dialog object
  BrowseDialog := CoUABrowseDialog.Create;
  BrowseDialog.InputsOutputs.CurrentNodeDescriptor.EndpointDescriptor.Host := 'opcua.demo-this.com';
  BrowseDialog.Mode.AnchorElementType := UAElementType_Host;

  DialogResult := BrowseDialog.ShowDialog(nil);
  WriteLn(DialogResult);

  if DialogResult <> DialogResult_OK then
    Exit;

  // Display results
  WriteLn(BrowseDialog.Outputs.CurrentNodeElement.NodeElement.ToString);
end;
//#endregion Example
