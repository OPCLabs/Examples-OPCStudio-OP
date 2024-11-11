// $Header: $
// Copyright (c) CODE Consulting and Development, s.r.o., Plzen. All rights reserved.

//
// Find all latest examples here: https://opclabs.doc-that.com/files/onlinedocs/OPCLabs-OpcStudio/Latest/examples.html .
// OPC client and subscriber examples in Object Pascal (Delphi) on GitHub: https://github.com/OPCLabs/Examples-QuickOPC-OP .
// Missing some example? Ask us for it on our Online Forums, https://www.opclabs.com/forum/index ! You do not have to own
// a commercial license in order to use Online Forums, and we reply to every post.

unit MessagePump;

interface

procedure PumpSleep(MiliSecValue : cardinal);

implementation
uses
  IdGlobal,
  Messages,
  Windows;

procedure PumpSleep(MiliSecValue : cardinal);
var
  Dummy: DWord;
  EndTick: Int64; // must be Int64 (because Cardinal - Cardinal is always > 0)
  Msg: TMsg;
  StartTick: Cardinal;
  Timeout: Int64;
begin
  // Pump messages in order to receive COM events. Not needed in VCL Forms.
  StartTick := Ticks;
  EndTick := StartTick + MiliSecValue;
  repeat
    Timeout := EndTick - Ticks;
    if Timeout <= 0 then
      Break;
    if MsgWaitForMultipleObjects(0, Dummy, False, Timeout, QS_ALLINPUT) = 0 then
    begin
      if GetMessage(Msg, 0, 0, 0) then
      begin
        if Msg.Message = WM_QUIT then
          Halt;
        TranslateMessage(Msg);
        DispatchMessage(Msg);
      end;
    end;
  until False;
end;

end.
