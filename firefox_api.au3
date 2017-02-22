#include <Constants.au3>
#include <MsgBoxConstants.au3>
#include <File.au3>
#include <EventLog.au3>
#include <FF.au3>
Global $ffPid = Run("C:\Program Files (x86)\Mozilla Firefox\firefox.exe","",@SW_MAXIMIZE)
_FFConnect(Default, Default, 3000)
_FFOpenURL("about:config")
_FFPrefSet("gfx.downloadable_fonts.enabled", false)
send("gfx.downloadable_fonts.enabled")
Sleep(100)
ConsoleWriteError('----------------------------done----------------------')