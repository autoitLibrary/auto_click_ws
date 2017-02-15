#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <Array.au3>
#include <gui.au3>
; global varies
Global $Input1,$arrListSock;
; arr list sock
ConsoleWrite($Input1);
While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

		Case $lblListSock
		   MsgBox(1,"blblistSock",'dddd')
		Case $btnRun
		   MsgBox(1,"btn buttn run",'dddd')
		   ConsoleWrite($btnRun);
	EndSwitch
WEnd