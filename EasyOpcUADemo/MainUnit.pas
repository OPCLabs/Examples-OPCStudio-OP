
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin,
  ComObj,
  OpcLabs_BaseLib_TLB,
  OpcLabs_EasyOpcUA_TLB,
  OpcLabs_EasyOpcUAComponents_TLB;

type
  TClientEventHandlers = class
    procedure OnDataChangeNotification(
      ASender: TObject;
      sender: OleVariant;
      const eventArgs: _EasyUADataChangeNotificationEventArgs);
  end;

type
  TMainForm = class(TForm)
    HintLabel: TLabel;
    Panel1: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    ServerUriEdit: TEdit;
    NodeIdEdit: TEdit;
    DiscoverServersButton: TButton;
    BrowseDataButton: TButton;
    ReadButton: TButton;
    Label6: TLabel;
    ValueToWriteEdit: TEdit;
    WriteValueButton: TButton;
    Label10: TLabel;
    Label9: TLabel;
    SamplingIntervalSpinEdit: TSpinEdit;
    SubscribeMonitoredItemButton: TButton;
    ChangeMonitoredItemSubscriptionButton: TButton;
    UnsubscribeMonitoredItemButton: TButton;
    Label1: TLabel;
    ValueEdit: TEdit;
    Label3: TLabel;
    StatusEdit: TEdit;
    Label5: TLabel;
    SourceTimestampEdit: TEdit;
    Label2: TLabel;
    ServerTimestampEdit: TEdit;
    Label4: TLabel;
    AboutButton: TButton;
    CloseButton: TButton;
    ExceptionMemo: TMemo;
    procedure ReadButtonClick(Sender: TObject);
    procedure AboutButtonClick(Sender: TObject);
    procedure SubscribeMonitoredItemButtonClick(Sender: TObject);
    procedure ChangeMonitoredItemSubscriptionButtonClick(Sender: TObject);
    procedure UnsubscribeMonitoredItemButtonClick(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure DiscoverServersButtonClick(Sender: TObject);
    procedure BrowseDataButtonClick(Sender: TObject);
    procedure WriteValueButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure DisplayAttributeData(AttributeData: _UAAttributeData);
    procedure DisplayException(Exception: string);
    procedure SetIsSubscribed(Value: boolean);
    procedure Unsubscribe;
    var
      ClientEventHandlers: TClientEventHandlers;
      EasyUAClient1: TEasyUAClient;
      FIsSubscribed: boolean;
      FHandle: Cardinal;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property IsSubscribed: boolean read FIsSubscribed write SetIsSubscribed;
  end;

var
  MainForm: TMainForm;

implementation

uses
  System.IOUtils,
  System_Windows_Forms_TLB,
  OpcLabs_EasyOpcForms_TLB;

{$R *.dfm}

constructor TMainForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  // Instantiate the client object and hook events
  EasyUAClient1 := TEasyUAClient.Create(nil);
  ClientEventHandlers := TClientEventHandlers.Create;
  EasyUAClient1.OnDataChangeNotification := ClientEventHandlers.OnDataChangeNotification;

  IsSubscribed := False;
end;

destructor TMainForm.Destroy;
begin
  if IsSubscribed then
    UnSubscribe;
  FreeAndNil(EasyUAClient1);
  FreeAndNil(ClientEventHandlers);
  inherited Destroy;
end;

procedure TMainForm.AboutButtonClick(Sender: TObject);
begin
  Application.MessageBox(PWideChar(Format('%s', [TPath.GetFileNameWithoutExtension(GetModuleName(0))])), 'Assembly Name');
end;

procedure TMainForm.BrowseDataButtonClick(Sender: TObject);
var
  DataDialog: _UADataDialog;
begin
  // Instantiate the dialog object
  DataDialog := CoUADataDialog.Create;

  DataDialog.EndpointDescriptor.UrlString := ServerUriEdit.Text;

  if DataDialog.ShowDialog(nil) = DialogResult_OK then
  begin
    NodeIdEdit.Text := DataDialog.NodeDescriptor.NodeId.ToString;
  end;
end;

procedure TMainForm.ChangeMonitoredItemSubscriptionButtonClick(Sender: TObject);
begin
  EasyUAClient1.ChangeMonitoredItemSubscription(FHandle, SamplingIntervalSpinEdit.Value);
end;

procedure TMainForm.CloseButtonClick(Sender: TObject);
begin
  if IsSubscribed then
    UnSubscribe;
  Close;
end;

procedure TMainForm.DiscoverServersButtonClick(Sender: TObject);
var
  HostAndEndpointDialog: _UAHostAndEndpointDialog;
begin
  // Instantiate the dialog object
  HostAndEndpointDialog := CoUAHostAndEndpointDialog.Create;

  HostAndEndpointDialog.EndpointDescriptor.UrlString := ServerUriEdit.Text;

  if HostAndEndpointDialog.ShowDialog(nil) = DialogResult_OK then
  begin
     ServerUriEdit.Text := HostAndEndpointDialog.EndpointDescriptor.UrlString;
  end;
end;

procedure TMainForm.DisplayAttributeData(AttributeData: _UAAttributeData);
begin
  if AttributeData = nil then
  begin
    ValueEdit.Text := '';
    StatusEdit.Text := '';
    SourceTimestampEdit.Text := '';
    ServerTimestampEdit.Text := '';
  end
  else
  begin
    ValueEdit.Text := AttributeData.DisplayValue();
    StatusEdit.Text := AttributeData.StatusCode.ToString;
    SourceTimestampEdit.Text := DateTimeToStr(AttributeData.SourceTimestamp);
    ServerTimestampEdit.Text := DateTimeToStr(AttributeData.ServerTimestamp);
  end;
end;

procedure TMainForm.DisplayException(Exception: string);
var
  Strings: TStrings;
begin
  if Exception = '' then
    ExceptionMemo.Lines.Clear
  else
    begin
      Strings := TStringList.Create;
      Strings.Add(Exception);
      ExceptionMemo.Lines := Strings;
    end;
end;

procedure TMainForm.ReadButtonClick(Sender: TObject);
var
  AttributeData: _UAAttributeData;
  Exception: string;
begin
  AttributeData := nil;
  Exception := '';
  try
    AttributeData := EasyUAClient1.Read(ServerUriEdit.Text, NodeIdEdit.Text);
  except
    on E: EOleException do
    begin
      Exception := E.GetBaseException.Message;
    end;
  end;
  DisplayAttributeData(AttributeData);
  DisplayException(Exception);
end;

procedure TMainForm.SetIsSubscribed(Value: boolean);
begin
  FIsSubscribed := Value;
  SubscribeMonitoredItemButton.Enabled :=  not FIsSubscribed;
  ChangeMonitoredItemSubscriptionButton.Enabled := FIsSubscribed;
  UnsubscribeMonitoredItemButton.Enabled := FIsSubscribed;
end;


procedure TMainForm.SubscribeMonitoredItemButtonClick(Sender: TObject);
begin
  FHandle := EasyUAClient1.SubscribeDataChange(ServerUriEdit.Text,NodeIdEdit.Text, SamplingIntervalSpinEdit.Value);
  IsSubscribed := True;
end;

procedure TMainForm.Unsubscribe;
begin
  EasyUAClient1.UnsubscribeMonitoredItem(FHandle);
  FHandle := 0;
  IsSubscribed := False;
end;

procedure TMainForm.UnsubscribeMonitoredItemButtonClick(Sender: TObject);
begin
  Unsubscribe;
end;

procedure TMainForm.WriteValueButtonClick(Sender: TObject);
var
  Exception: string;
begin
  Exception := '';
  try
    EasyUAClient1.WriteValue(ServerUriEdit.Text, NodeIdEdit.Text, ValueToWriteEdit.Text);
  except
    on E: EOleException do
    begin
      Exception := E.GetBaseException.Message;
    end;
  end;
  DisplayException(Exception);
end;

procedure TClientEventHandlers.OnDataChangeNotification(
  ASender: TObject;
  sender: OleVariant;
  const eventArgs: _EasyUADataChangeNotificationEventArgs);
begin
  // Display the data
  if eventArgs.Succeeded then
  begin
    MainForm.DisplayAttributeData(eventArgs.AttributeData);
    Mainform.DisplayException('');
  end
  else
  begin
    MainForm.DisplayAttributeData(nil);
    Mainform.DisplayException(eventArgs.ErrorMessageBrief);
  end;
end;

end.
