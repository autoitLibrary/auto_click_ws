#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include "globalVariable.au3"
#include "gui.au3"
#include "fileHelper.au3"
GUISetState(@SW_SHOW)
_readFileText('setting.ini', $file_type_ini)
;local $data[2][2] = [[0,0],[0,1],[1,0],[1,1]]
 ;Local $aSection[4][2] = [[3, ""], ["Title", "AutoIt"], ["Version", @AutoItVersion], ["OS", @OSVersion]]
 _ArrayDisplay($setting_ini)

IniWriteSection('setting.ini', 'setting.ini', $setting_ini)
If($setting_ini[1][1]) Then
   _writeLogGui($editLogResult, 'co loi1')
   _writeLogGui($editLogResult, 'co loi2')
EndIf

While 1
 Sleep(100)
WEnd
$test2 = _readFileText('setting.ini', $file_type_ini)
#Region action event

Func btnRunClick()

   MsgBox(1,'info','button click')
   $test1 = _readFileText('socks.ini', $file_type_sock)
   Return;
   if(IsObj($test) And $test.Count >0) Then
	  $arr = $test.ToArray();
	  _ArrayDisplay($arr)
   Else
	  ;ConsoleWrite('ko co du lieu');
	  $test = GUICtrlRead($editLogResult);
	  $test &= 'Co loi'&@CRLF
	  GUICtrlSetData($editLogResult, $test);
	  ConsoleWrite(_getTime()&' Co loi'&@LF);
   EndIf
EndFunc
Func btnStopClick()
MsgBox(1, 1, $GUI_CHECKED);
EndFunc
Func cboxLogEnableClick()

EndFunc
Func cboxLogWriteClick()

EndFunc
Func editLogResultChange()

EndFunc
Func editResultChange()

EndFunc
Func editSockChange()

EndFunc
Func frmMainClose()
   Exit
EndFunc

Func frmMainMaximize()
WinSetState($titleFrmMain,"", @SW_HIDE)
EndFunc

Func frmMainMinimize()

EndFunc
Func frmMainRestore()

EndFunc
Func lblEndTimeClick()

EndFunc
Func lblExamSockClick()

EndFunc
Func lblStartTimeClick()

EndFunc
Func MenuItemHelpClick()

EndFunc
Func mitemAboutClick()

EndFunc
Func mitemContactClick()

EndFunc
Func mitemFileClick()

EndFunc
Func mitemKeyActiveClick()

EndFunc
Func btnUploadSocksClick()
   Local $sFileOpenDialog = FileOpenDialog('Mở file', @ScriptDir & "\", "Sockes files(*.*)", $FD_FILEMUSTEXIST + $FD_MULTISELECT);
EndFunc
#EndRegion
