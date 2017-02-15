; use arraylist
#include <Array.au3>
Local $arr = ObjCreate('System.Collections.ArrayList')
$arr.Add('lorem')
$arr.Add('ipsum')
$arr.Add('dolor')

ConsoleWrite("Contains 'dolor'? " & $arr.Contains('dolor') & @CRLF)
ConsoleWrite($arr.Count);
ConsoleWrite($arr.Item(1));