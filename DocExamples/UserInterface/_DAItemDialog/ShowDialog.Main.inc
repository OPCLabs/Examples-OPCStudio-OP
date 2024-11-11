// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//#region Example
// This example shows how to let the user browse for an OPC Data Access item.
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

class procedure ShowDialog.Main;
var
  ItemDialog: OpcLabs_EasyOpcForms_TLB._DAItemDialog;
begin
  // Instantiate the dialog object
  ItemDialog := CoDAItemDialog.Create;

  ItemDialog.ServerDescriptor.ServerClass := 'OPCLabs.KitServer.2';

  ItemDialog.ShowDialog(nil);

  // Display results
  WriteLn(ItemDialog.NodeElement.ToString);
end;
//#endregion Example
