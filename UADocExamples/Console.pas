
//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

unit Console;

interface

uses
  System.Generics.Collections,
  winapi.windows,
  System.SysUtils;

type
  TNamedItem<T> = record
    Item: T;
    Name: string;
    constructor Create(aItem: T; aName: string);
  end;
  DoAction = procedure;
  TAction = pointer;
  TNamedAction = record
    Action: TAction;
    Name: string;
    constructor Create(aAction: TAction; aName: string);
  end;

  ConsoleDialog = class
  public
    class function SelectAndPerformAction(promptText: string; escapeText: string; actionList: TArray<TNamedAction>): boolean; static;
    class function SelectItem<T>(promptText: string; escapeText: string; items: TArray<TNamedItem<T>>): T; static;
    class function SelectFromMenu(promptText: string; menuItemDictionary: TDictionary<Integer, string>; defaultSelection: Integer): Integer; static;
    class function InputInt32(promptText: string; defaultValue: Integer): Integer; static;
    class function InputString(promptText: string; defaultValue: string): string; static;
  end;

  ConsoleColor = (

    BlackFore       = 0,
    DarkBlueFore    = FOREGROUND_BLUE,
    DarkGreenFore   = FOREGROUND_GREEN,
    DarkCyanFore    = FOREGROUND_GREEN or FOREGROUND_BLUE,
    DarkRedFore     = FOREGROUND_RED,
    DarkMagentaFore = FOREGROUND_RED or FOREGROUND_BLUE,
    DarkYellowFore  = FOREGROUND_RED or FOREGROUND_GREEN,
    GrayFore        = FOREGROUND_RED or FOREGROUND_GREEN or FOREGROUND_BLUE,
    DarkGrayFore    = FOREGROUND_INTENSITY,
    BlueFore        = FOREGROUND_INTENSITY or FOREGROUND_BLUE,
    GreenFore       = FOREGROUND_INTENSITY or FOREGROUND_GREEN,
    CyanFore        = FOREGROUND_INTENSITY or FOREGROUND_GREEN or FOREGROUND_BLUE,
    RedFore         = FOREGROUND_INTENSITY or FOREGROUND_RED,
    MagentaFore     = FOREGROUND_INTENSITY or FOREGROUND_RED or FOREGROUND_BLUE,
    YellowFore      = FOREGROUND_INTENSITY or FOREGROUND_RED or FOREGROUND_GREEN,
    WhiteFore       = FOREGROUND_INTENSITY or FOREGROUND_RED or FOREGROUND_GREEN or FOREGROUND_BLUE,

    BlackBack       = 0,
    DarkBlueBack    = BACKGROUND_BLUE,
    DarkGreenBack   = BACKGROUND_GREEN,
    DarkCyanBack    = BACKGROUND_GREEN or BACKGROUND_BLUE,
    DarkRedBack     = BACKGROUND_RED,
    DarkMagentaBack = BACKGROUND_RED or BACKGROUND_BLUE,
    DarkYellowBack  = BACKGROUND_RED or BACKGROUND_GREEN,
    GrayBack        = BACKGROUND_RED or BACKGROUND_GREEN or BACKGROUND_BLUE,
    DarkGrayBack    = BACKGROUND_INTENSITY,
    BlueBack        = BACKGROUND_INTENSITY or BACKGROUND_BLUE,
    GreenBack       = BACKGROUND_INTENSITY or BACKGROUND_GREEN,
    CyanBack        = BACKGROUND_INTENSITY or BACKGROUND_GREEN or BACKGROUND_BLUE,
    RedBack         = BACKGROUND_INTENSITY or BACKGROUND_RED,
    MagentaBack     = BACKGROUND_INTENSITY or BACKGROUND_RED or BACKGROUND_BLUE,
    Back            = BACKGROUND_INTENSITY or BACKGROUND_RED or BACKGROUND_GREEN,
    WhiteBack       = BACKGROUND_INTENSITY or BACKGROUND_RED or BACKGROUND_GREEN or BACKGROUND_BLUE
  );

  ConsoleStyle = class
    private
      BufInfo: TConsoleScreenBufferInfo;
    public
      procedure SetColor(color: ConsoleColor);
      procedure RestoreColor;
  end;



implementation

constructor TNamedItem<T>.Create(aItem: T; aName: string);
begin
  Item := aItem;
  Name := aName;
end;


procedure ConsoleStyle.SetColor(color: ConsoleColor);
var
  ConOut: THandle;
begin
   ConOut := TTextRec(Output).Handle;
   GetConsoleScreenBufferInfo(ConOut, BufInfo);
   SetConsoleTextAttribute(ConOut, word(color));
end;

procedure ConsoleStyle.RestoreColor();
var
  ConOut: THandle;
begin
   ConOut := TTextRec(Output).Handle;
   SetConsoleTextAttribute(ConOut, BufInfo.wAttributes);
end;

constructor TNamedAction.Create(aAction: TAction; aName: string);
begin
  Action := aAction;
  Name := aName;
end;

class function ConsoleDialog.InputInt32(promptText: string; defaultValue: Integer): Integer;
var
  stringDefault: string;
  intResult: Integer;
  stringResult: string;
begin
  if defaultValue >= 0 then stringDefault := defaultValue.ToString();
  repeat
    stringResult := InputString(promptText, stringDefault);
  until TryStrToInt(stringResult, intResult);
  Result := intResult;
end;

class function ConsoleDialog.InputString(promptText: string; defaultValue: string): string;
var
  value: string;
  saveColor: ConsoleStyle;
begin
  saveColor := ConsoleStyle.Create;
  saveColor.SetColor(ConsoleColor.CyanFore);
  try
    if defaultValue = '' then
      Write(Format('%s? ', [promptText]))
    else
      Write(Format('%s <%s>? ', [promptText, defaultValue]));
    ReadLn(value);
    if value = '' then
      if defaultValue <> '' then
        value := defaultValue;
    Result := value;
  finally
    saveColor.RestoreColor;
    FreeAndNil(saveColor);
  end;

end;

class function ConsoleDialog.SelectAndPerformAction(promptText: string; escapeText: string; actionList: TArray<TNamedAction>): boolean;
var
  items: TArray<TNamedItem<TAction>>;
  i: Integer;
  namedAction: TNamedAction;
  selectedAction: TAction;
begin
  SetLength(items, Length(actionList));
  for i := 0 to Length(actionList)-1 do
  begin
    namedAction := actionList[i];
    items[i] := TNamedItem<TAction>.Create(namedAction.Action, namedAction.Name);
  end;
  selectedAction := SelectItem<TAction>(promptText, escapeText, items);
  if selectedAction = nil then
     Result := false
  else
    begin
      DoAction(selectedAction);
      Result := true;
    end;
end;

class function ConsoleDialog.SelectItem<T>(promptText: string; escapeText: string; items: TArray<TNamedItem<T>>): T;
var
  count: Integer;
  menuItemDictionary: TDictionary<Integer, string>;
  itemArray: TArray<T>;
  i: Integer;
  item: TNamedItem<T>;
  selection: Integer;
begin
   count := Length(items);
   menuItemDictionary := TDictionary<Integer, string>.Create;
   menuItemDictionary.Add(0, escapeText);
   SetLength(itemArray, count + 1);
   i := 1;
   for item in items do
   begin
     menuItemDictionary.Add(i, Format('"%s"', [item.Name]));
     itemArray[i] := item.Item;
     i := i + 1;
   end;
   selection := SelectFromMenu(promptText, menuItemDictionary, 0);
   Result := itemArray[selection];
   menuItemDictionary.Destroy;
end;

class function ConsoleDialog.SelectFromMenu(promptText: string; menuItemDictionary: TDictionary<integer, string>; defaultSelection: integer): integer;
var
  selection: integer;
  keys: TArray<integer>;
  i: integer;
begin
  keys := menuItemDictionary.Keys.ToArray;
  TArray.Sort<integer>(keys);
  for i in keys do
  begin
    WriteLn(Format('  %d) %s', [i, menuItemDictionary[i]]));
  end;
  repeat
    selection := InputInt32(promptText, defaultSelection);
  until (menuItemDictionary.ContainsKey(selection));
  Result := selection;
end;
end.
