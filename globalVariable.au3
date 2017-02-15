#Region biến GUI
Global $titleFrmMain = "Tool auto click http://adiphy.com by zefredzocohen ";
Global $frmMain = GUICreate($titleFrmMain, 915, 627, 243, 66)
Global $mitemFile = GUICtrlCreateMenu("&File")
Global $MenuItemHelp = GUICtrlCreateMenu("&Help")
Global $mitemContact = GUICtrlCreateMenuItem("Contact", $MenuItemHelp)
Global $mitemKeyActive = GUICtrlCreateMenuItem("Key active", $MenuItemHelp)
Global $mitemAbout = GUICtrlCreateMenuItem("About", $MenuItemHelp)
Global $Group1 = GUICtrlCreateGroup("Setting default", 8, 24, 353, 89)
Global $cboxLogEnable = GUICtrlCreateCheckbox("Log enabled", 24, 48, 97, 17)
Global $cboxLogWrite = GUICtrlCreateCheckbox("Log write", 128, 48, 97, 17)
Global $lblStartTime = GUICtrlCreateLabel("Start Time", 32, 80, 52, 17)
Global $lblEndTime = GUICtrlCreateLabel("End Time", 208, 80, 49, 17)
Global $gpChkSock = GUICtrlCreateGroup("Check socks", 376, 24, 537, 297)
Global $editSock = GUICtrlCreateEdit("", 384, 80, 513, 233)
Global $lblExamSock = GUICtrlCreateLabel("example: ip::port::user_sock::pass_sock=>user_login::pass_login", 392, 48, 481, 24)
Global $gpLogResult = GUICtrlCreateGroup("Log result", 8, 376, 905, 225)
Global $editLogResult = GUICtrlCreateEdit("", 16, 400, 881, 193)
Global $Group2 = GUICtrlCreateGroup("Result", 8, 120, 353, 225)
Global $editResult = GUICtrlCreateEdit("", 16, 144, 337, 185)
Global $btnRun = GUICtrlCreateButton("Run", 560, 344, 75, 25)
Global $btnStop = GUICtrlCreateButton("Stop", 640, 344, 75, 25)
Global $btnUploadSocks = GUICtrlCreateButton("Tai file socks", 456, 344, 91, 25)
#EndRegion
#Region setting Ini
Global $setting_ini[][2]= [['setting.ini', 'ten-file'], ['iniLogEnable', 1], ['iniLogWrite', 1], ['iniDefaultUploadFile', @ScriptDir]]
Global $addr_ads = 'http://adiphy.com/'
#EndRegion