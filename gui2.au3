#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=e:\program file\auto\autoit\autoit3\gui\forms\tool_autoclick_adiphy.kxf
$Form1_1 = GUICreate("Tool auto click http://adiphy.com by zefredzocohen ", 915, 627, 243, 66)
$mitemFile = GUICtrlCreateMenu("&File")
$MenuItem1 = GUICtrlCreateMenu("&Help")
$mitemContact = GUICtrlCreateMenuItem("Contact", $MenuItem1)
$mitemKeyActive = GUICtrlCreateMenuItem("Key active", $MenuItem1)
$mitemAbout = GUICtrlCreateMenuItem("About", $MenuItem1)
$Group1 = GUICtrlCreateGroup("Setting default", 8, 24, 353, 89)
$cboxLogEnable = GUICtrlCreateCheckbox("Log enabled", 24, 48, 97, 17)
$Checkbox1 = GUICtrlCreateCheckbox("Log write", 120, 48, 97, 17)
$lblStartTime = GUICtrlCreateLabel("Start Time", 32, 80, 52, 17)
$lblEndTime = GUICtrlCreateLabel("End Time", 208, 80, 49, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$gpChkSock = GUICtrlCreateGroup("Check socks", 376, 24, 537, 297)
$editSock = GUICtrlCreateEdit("", 384, 80, 513, 233)
GUICtrlSetData(-1, "")
$lblExamSock = GUICtrlCreateLabel("example: address_scoket::port_socket::user_sock::pass_sock=>user_login::pass_login", 392, 48, 481, 24)
GUICtrlSetFont(-1, 11, 400, 0, "Arial Narrow")
GUICtrlCreateGroup("", -99, -99, 1, 1)
$gpLogResult = GUICtrlCreateGroup("Log result", 8, 376, 905, 225)
$editLogResult = GUICtrlCreateEdit("", 16, 400, 881, 193)
GUICtrlSetState(-1, $GUI_DISABLE)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group2 = GUICtrlCreateGroup("Result", 8, 120, 353, 225)
$editResult = GUICtrlCreateEdit("", 16, 144, 337, 185)
GUICtrlSetData(-1, "")
GUICtrlSetState(-1, $GUI_DISABLE)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$btnRun = GUICtrlCreateButton("Run", 440, 344, 75, 25)
$btnStop = GUICtrlCreateButton("Stop", 520, 344, 75, 25)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

	EndSwitch
WEnd
