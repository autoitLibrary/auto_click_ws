#Include <FF.au3>
#Include <FFEx.au3>
#include<array.au3>
#include <Inet.au3>
#include <WindowsConstants.au3>
#include "globalVariable.au3"
_FFStart('"about:blank"', 'C:\Users\Latitude\Desktop\rlwzep1m.Default_test_copy')
;_FFOpenURL('http://whatismyipaddress.com/')
;_FFTabAdd('http://youtube.com/')
;ConsoleWrite(_FF_TabGetAllURLs())
ConsoleWrite('-------------------------------')
;local $arr_list[10] = [ 'http://adf.ly/9921033/5s-389','http://adf.ly/1gAlJF','http://adf.ly/9921033/5s-388','http://adf.ly/1gAlC9','http://adf.ly/9921033/5s-391','http://adf.ly/9921033/5s-393','http://adf.ly/9921033/5sonline-69','http://adf.ly/9921033/5s-toicn','http://adf.ly/9921033/5s-394']
Local $arr_list[15]
;$arr_list[0] = "http://adf.ly/1k3Pyx"
;$arr_list[1]= "http://adf.ly/9921033/5s-389"
$arr_list[2]= "http://adf.ly/1gAlJF"
$arr_list[3]= "http://adf.ly/9921033/5s-388"
$arr_list[4]= "http://adf.ly/1gAlC9"
$arr_list[5]= "http://adf.ly/9921033/5s-391"
$arr_list[6]= "http://adf.ly/9921033/5s-393"
$arr_list[7]= "http://adf.ly/9921033/5sonline-69"
$arr_list[8]= "http://adf.ly/9921033/5s-toicn"
$arr_list[9]= "http://adf.ly/9921033/5s-394"
$arr_list[10]= "http://adf.ly/1aYGij"
$arr_list[11]= "http://adf.ly/1L2vyd"
$arr_list[12]= "http://adf.ly/1GqXtO"
;$arr_list[13]= "http://adf.ly/1GqSzP"
;$arr_list[14]= "http://adf.ly/1aYGic"
adiphy('http://adiphy.com/')
;adfly($arr_list)
;$arr_ip = checkIp_iplocation()
 ;_ArrayDisplay($arr_ip)
Global $check_ip = 'http://whatismyipaddress.com/';

;test_func_cmd2()
Func fake_ip($address, $port)
EndFunc

Func adiphy($url)
   Local $result[15], $i = 0;
   Local $arr_key;
   Local $click[500];
   Local $money_current = 0;
	  If _FFIsConnected() Then
			if $url <> '' Then
				  _FFOpenURL($url)
				   $time_start = Random(5000,9000);
				   $time_random = 0
				   ConsoleWrite('time chờ: '&$time_start)
				   Sleep($time_start)
				   $flag = True

				   If _FFXPath('//*[@id="right_content"]/div[1]/ul/li[2]/span', "", 9) Then
					  _FFXPath('//*[@id="right_content"]/div[1]/ul/li[2]/span', "", 9)
					  $source = _FFObj("xpath.innerText");;
					  $click = StringRegExp($source, '([0-9]{1,3})(.*)',$STR_REGEXPARRAYFULLMATCH)
					  If Not @error Then
						 $click = $click[1];
					  EndIf
				   EndIf
				  If _FFXPath('//*[@id="navbar"]/ul[2]/li[1]/a/span', "", 9) Then
					 _FFXPath('//*[@id="navbar"]/ul[2]/li[11111]/a/span', "", 9);
					 $source = _FFObj("xpath.innerText");;
					  $money = StringRegExp($source, '([0-9,\.]+)(.*)',$STR_REGEXPARRAYFULLMATCH)
					  If Not @error Then
						 ;$click = $click[1];
						 $money = $money[1];
					  EndIf
				   EndIf
				  Send('{PGDN 4}')
				  $index = 5
				  if _FFXPath('//*[@id="main"]/div[3]/div/div['&$index&']/div/div[2]/div[3]/a', '', 9) Then
					 _FFXPath('//*[@id="main"]/div[3]/div/div['&$index&']/div/div[2]/div[3]/a', '', 9)
					 $source = _FFObj("xpath.innerHTML");;
					 $check_money = StringRegExp('aaaa', '<span (.*)</span>([0-9,\.]+)(.*)',$STR_REGEXPARRAYFULLMATCH)
					 if Not @error Then
						$check_money = StringReplace($check_money[2], ',', '.');
						if($check_money > 0.005) Then
						   MsgBox(1, 'thong bao', 'lon hon')
						Else
						   MsgBox(1, 'thong bao', 'nho hon')
						EndIf
					 Else
						MsgBox(1, 'thong bao', 'loi')
					 EndIf
				  Else
				  EndIf
				  _FFQUIT()
				   Exit(0)



				   While ($flag)
					  $arr_key = RandomSend(Random(2, 6));
					 For $key In $arr_key
						AutoItSetOption('SendKeyDownDelay', Random(400, 780))
						Send($key);
						Sleep(700)
					 Next
					 if _FFCmd(".getElementById('skip_button').style.display") <> 'none' or _FFCmd(".getElementById('skip_button').style.display") == '' Then
						_FFClick(_FFXPath("//img[@id='skip_ad_button']", '', 9));
						$result[$i] = $url;
						$i += 1
						$time_random = Random(8000,50000)
						Sleep($time_random)
						ConsoleWrite('random sau khi thoat: '&$time_random)
						_FFTabCloseAll()
						$flag = False;
					 Else
						$time_random = Random(100,1000)
						ConsoleWrite('random do chua ton tai: '&$time_random)
						Sleep($time_random)
					 EndIf
				  WEnd
		 EndIf
   EndIf
_FFQuit()
_ArrayDisplay($result)
EndFunc

Func checkIp_whatismyipaddress()
   Local $arr[5][2]
   _FFOpenURL('http://whatismyipaddress.com/')
   _FFXPath('//div[@id="section_left"]/div[3]/table/tbody/tr[1]/td', '', 9);
   $arr[0][0] = 'isp' ;
   $arr[0][1] = _FFObj("xpath.innerText");;
   _FFXPath('//div[@id="section_left"]/div[3]/table/tbody/tr[2]/td', '', 9);
   $arr[1][0] = 'city' ;
   $arr[1][1] = _FFObj("xpath.innerText");;
   _FFXPath('//div[@id="section_left"]/div[3]/table/tbody/tr[3]/td', '', 9);
   $arr[2][0] = 'region' ;
   $arr[2][1] = _FFObj("xpath.innerText");;
   ;$region = _FFObj("xpath.innerText");
   _FFXPath('//div[@id="section_left"]/div[3]/table/tbody/tr[4]/td', '', 9);
   $arr[3][0] = 'country' ;
   $arr[3][1] = _FFObj("xpath.innerText");;
   _FFXPath('//*[@id="section_left"]/div[2]/a', '', 9);
   $arr[4][0] = 'ip' ;
   $arr[4][1] = _FFObj("xpath.innerText");;
   return $arr
EndFunc

Func checkIp_iplocation()
   Local $arr[5][2]
   _FFOpenURL('https://www.iplocation.net/')
   _FFXPath('//*[@id="wrapper"]/section/div/div/div[1]/div[7]/div/table/tbody[2]/tr/td[2]', '', 9);
   $arr[0][0] = 'isp' ;
   $arr[0][1] = _FFObj("xpath.innerText");;
   _FFXPath('//*[@id="wrapper"]/section/div/div/div[1]/div[7]/div/table/tbody[1]/tr/td[4]', '', 9);
   $arr[1][0] = 'city' ;
   $arr[1][1] = _FFObj("xpath.innerText");;
   _FFXPath('//*[@id="wrapper"]/section/div/div/div[1]/div[7]/div/table/tbody[1]/tr/td[3]', '', 9);
   $arr[2][0] = 'region' ;
   $arr[2][1] = _FFObj("xpath.innerText");;
   ;$region = _FFObj("xpath.innerText");
   _FFXPath('//*[@id="wrapper"]/section/div/div/div[1]/div[7]/div/table/tbody[1]/tr/td[2]/text()', '', 9);
   $arr[3][0] = 'country' ;
   $arr[3][1] = _FFObj("xpath.innerText");;
   _FFXPath('//*[@id="wrapper"]/section/div/div/div[1]/div[7]/div/table/tbody[1]/tr/td[1]', '', 9);
   $arr[4][0] = 'ip' ;
   $arr[4][1] = _FFObj("xpath.innerText");;
   return $arr
EndFunc

Func adfly($urls)
   Local $result[15], $i = 0;
   Local $arr_key;
   if(IsArray($urls)) Then
	  If _FFIsConnected() Then
		 For $url In $urls
			if $url <> '' Then
				; add a new tab with an URL
				  _FFOpenURL($url)
				;$sObj = _FFXpath("//div[id='main']", "", 10);
				;MsgBox(1, 'thong bao', $sObj)
				;MsgBox(64, "Number of password fields:", _FFXPath( "//div[@id='main']/div[@class='starter-template']/div[@class='grid']/div[4]/", "", 10))
				   $time_start = Random(5000,9000);
				   $time_random = 0
				   ConsoleWrite('time chờ: '&$time_start)
				   Sleep($time_start)
				   $flag = True
				   While ($flag)
					  $arr_key = RandomSend(Random(2, 6));

					 For $key In $arr_key
						AutoItSetOption('SendKeyDownDelay', Random(400, 780))
						Send($key);
						Sleep(700)
					 Next
					 if _FFCmd(".getElementById('skip_button').style.display") <> 'none' or _FFCmd(".getElementById('skip_button').style.display") == '' Then
						_FFClick(_FFXPath("//img[@id='skip_ad_button']", '', 9));
						$result[$i] = $url;
						$i += 1
						$time_random = Random(8000,50000)
						Sleep($time_random)
						ConsoleWrite('random sau khi thoat: '&$time_random)
						_FFTabCloseAll()
						$flag = False;
					 Else
						$time_random = Random(100,1000)
						ConsoleWrite('random do chua ton tai: '&$time_random)
						Sleep($time_random)
					 EndIf
				  WEnd
		 EndIf
	  Next
   EndIf

   EndIf
_FFQuit()
_ArrayDisplay($result)
EndFunc

Func test_func_cmd()
   If _FFIsConnected() Then
	   ; href of the current page
	   $sHref = _FFCmd(".location.href")
	   If Not @error Then MsgBox(64,"Current href:",$sHref)

	   _FFOpenURL("http://ff-au3-example.thorsten-willert.de/")
	   ; href from an image link
	   $sHref = _FFCmd(".images[0].parentNode.href")
	   If Not @error Then MsgBox(64,"Href of the first image-link:",$sHref)

	   ; title of the current page
	   $sTitle = _FFCmd( ".title")
	   If Not @error Then MsgBox(64,"Title of the current page:",$sTitle)

	   ; browser version
	   $sVersion = _FFCmd("navigator.userAgent")
	   If Not @error Then MsgBox(64,"Browser version:",$sVersion)
   Else
	   MsgBox(64,"Error:","Can't conncect to FireFox")
   EndIf
EndFunc

Func test_func_cmd2()
   If _FFIsConnected() Then
	  _FFOpenURL($check_ip);
	  ;$ips = _FFCmd('.div[@id="section_left"]/div[3]/table/tbody/tr[1]/td');
	  ;$xpath = "/html/body/div[2]/div/div[1]/div[3]/div[8]/a";
	  $xpath = "//html/body/div[2]/div/div[1]/div[4]/div[3]/div[1]/div[3]/table/tbody/tr[1]/td";
	  ;_FFXPath($xpath, '', 9)
	  ;_FFCmd("FFau3.xpath.click()");
	  _FFXPath($xpath, '', 9)
	  $city = _FFObj("xpath.innerText");_FFObj("xpath.innerText");
	  _ArrayDisplay($city)
	  Return
   EndIf

   _FFTabAdd( "http://ff-au3-example.thorsten-willert.de/")

	; counting the number of results from the Xpath query
	MsgBox(64, "Number of password fields:", _FFXPath( "//input[@type='password']", "", 10))

	; the textContent from the query result
	MsgBox(64, "Fieldset-Legend:", _FFXPath( "//form[1]/fieldset/legend"))

	; the textContent from option 2
	MsgBox(64, "Text from 0ption 5:", _FFXPath( "//option[2]"))

	; Method and action of the first form
	$vTmp = "Method: " & _FFXPath( "//form[1]/@method") & @crlf
	$vTmp &= "Action: " & _FFXPath( "//form[1]/@action")
	MsgBox(64, "Form 2", $vTmp)

	; array with the textContent of all options
	$aArray = _FFXPath("//option","value",7)
	_ArrayDisplay($aArray)

	; working with the object returned from the query
	_FFXPath("//form[1]//input[@type='checkbox' and position()=2]","",9)
	MsgBox(64,"", _FFObj("xpath.type") & @crlf & _FFObj("xpath.value"))
	_FFObj("xpath.checked=true")

EndFunc

Func RandomSend($count = 2)
   If IsDeclared($count) And $count <> 2 Then
	  $count = Random(1, 10)
   EndIf
   Local $result[$count];
   Local $random_key_local[22] = $random_key
   For $i = 0 to $count-1 Step +1
	  local $key1 = Random(0, 21);
	  local $key2 = Random(0, 21);
	  $result[$i] = $random_key_local[$key1]&$random_key_local[$key2]
   Next
   Return $result
EndFunc
