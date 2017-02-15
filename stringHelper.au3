#include <StringConstants.au3>
#include <MsgBoxConstants.au3>
#Region string constant Global
   Global $reg_ip = '([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})';
   Global $reg_port = '([0-9]{1,4})';
   Global $reg_user = '([a-zA-Z0-9_\.]{1,10})';
   Global $reg_pass = '(.+)';
   Global Enum $file_type_ini, $file_type_sock

#EndRegion
