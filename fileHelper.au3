#include <FileConstants.au3>
#include <MsgBoxConstants.au3>
#include <File.au3>
#include <WinAPIFiles.au3>
#include <StringConstants.au3>
#include <Array.au3>
#include-once "globalVariable.au3"
#include "StringHelper.au3"

Func _readFile($strFileName, $strSection, $strKey, $strDefaultValue="none")
   if(IsDeclared($strDefaultValue)) Then
	  $strDefaultValue = "none"
   EndIf
   $checkFile = IniRead($strFileName, $strSection, $strKey, $strDefaultValue);
   if($checkFile) Then
	  ConsoleWrite($checkFile);
	  ConsoleWrite('\n');
   EndIf
EndFunc

Func _readFileText($file, $file_type)
   $check_file = FileOpen($file, $FO_APPEND)
   Local $result = ObjCreate('System.Collections.ArrayList')
   if($check_file <> -1) Then
	  If $file_type == $file_type_sock Then
		 $result = _readFileSock($file)
	  ElseIf($file_type == $file_type_ini) Then
		 _readFileIni($file)
	  EndIf
   EndIf
   FileClose($file)
   Return $result;
EndFunc

Func _readFileIni($file)
   Local $result = ObjCreate('System.Collections.ArrayList')
   If IniRead("Settings.ini", "setting.global", "cboxLogEnable", 'none') Then
	  $iniLogEnable = IniRead("Settings.ini", "setting.global", "iniLogEnable", $setting_ini[1][1])
	  GUICtrlSetState($cboxLogEnable, $iniLogEnable)
   EndIf
   If IniRead("Settings.ini", "setting.global", "cboxLogWrite", $setting_ini[2][1]) Then
	  $iniLogWrite = IniRead("Settings.ini", "setting.global", "iniLogWrite",$setting_ini[2][1])
	  GUICtrlSetState($cboxLogWrite, $iniLogWrite)
   EndIf
   If IniRead("Settings.ini", "setting.global", "iniDefaultUploadFile", $setting_ini[3][1]) Then
	  $iniDefaultUploadFile = IniRead("Settings.ini", "setting.global", "iniDefaultUploadFile", $setting_ini[3][1])
   EndIf
EndFunc

Func _readFileSock($file)
   Local $result = ObjCreate('System.Collections.ArrayList')
   $nCount = _FileCountLines($file)
   For $i = 1 to $nCount
	  $line = FileReadLine($file, $i);
	  $para = StringRegExp($line, $reg_ip & '::' & $reg_port & '::' & $reg_user & '::' & $reg_pass & '=>' & $reg_user & '::' & $reg_pass, $STR_REGEXPARRAYFULLMATCH);
	  If( @Error) Then
		 Break(1)
	  Else
		 if(($result.Contains($para[1]) And $result.Contains($para[2]) And $result.Contains($para[5])) == False) Then
			local $sock[6] = [$para[1], $para[2], $para[3], $para[4], $para[5], $para[6]]
			$result.Add($sock)
		 Else
			ContinueLoop
		 EndIf
	  EndIf
   Next
   Return $result
EndFunc


Func _getTime()
   return @MDAY&'-'&@MON&'-'&@YEAR&' '&@HOUR&':'&@MIN&':'&@SEC
EndFunc

Func _writeLogGui($gui, $text)
   Local $current_text = GUICtrlRead($gui);
   If($current_text == '') Then
	  $current_text &= _getTime()&' : '&$text&@LF;
   Else
	  $current_text &= @CRLF&_getTime()&' : '&$text&@LF;
   EndIf
   GUICtrlSetData($editLogResult, $current_text);
EndFunc
