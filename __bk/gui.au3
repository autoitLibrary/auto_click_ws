#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Form1", 989, 438, 234, 106)
$etListSock = GUICtrlCreateEdit("", 16, 56, 449, 225)
GUICtrlSetData(-1, "")
GUICtrlSetFont(-1, 10, 400, 0, "Arial Narrow")
$lblListSock = GUICtrlCreateLabel("Danh sách tài khoản sock", 24, 32, 124, 20)
GUICtrlSetFont(-1, 10, 400, 0, "Arial Narrow")
GUICtrlSetBkColor(-1, 0xB4B4B4)
$Label1 = GUICtrlCreateLabel("Status", 0, 416, 34, 17)
$Label2 = GUICtrlCreateLabel("Log now", 472, 24, 45, 17)
$etLog = GUICtrlCreateEdit("", 480, 56, 505, 225)
GUICtrlSetData(-1, "")
$btnRun = GUICtrlCreateButton("Run", 16, 304, 75, 25)
$btnStop = GUICtrlCreateButton("Stop", 104, 304, 75, 25)
$gpSetting = GUICtrlCreateGroup("Setting", 240, 304, 393, 121)
$Input1 = GUICtrlCreateInput("", 392, 328, 153, 21)
$Label3 = GUICtrlCreateLabel("Thời gian xem quảng cáo", 248, 328, 124, 17)
$Label4 = GUICtrlCreateLabel("", 256, 352, 4, 4)
$Radio1 = GUICtrlCreateRadio("Yes", 374, 360, 50, 17)
$Radio2 = GUICtrlCreateRadio("No", 424, 360, 50, 17)
$Label5 = GUICtrlCreateLabel("Chiem quyen mouse", 256, 360, 99, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
