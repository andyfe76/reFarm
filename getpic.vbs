
'Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = wscript.createobject("wscript.shell")
txt="c:\inetpub\wwwroot\refarm\CommandCam.exe /devnum 1 /filename c:\inetpub\wwwroot\refarm\pic\1_"
txt=txt+CStr(Day(Now()))+"_"
txt=txt+CStr(Month(Now()))+"_"
txt=txt+CStr(Year(Now()))+"_"
txt=txt+CStr(Hour(Now()))+"_"
txt=txt+CStr(Minute(Now()))+"_"
txt=txt+CStr(Second(Now()))+".bmp"
WScript.Echo(txt)
shell.Run txt,1,True

txt="c:\inetpub\wwwroot\refarm\CommandCam.exe /devnum 2 /filename c:\inetpub\wwwroot\refarm\pic\2_"
txt=txt+CStr(Day(Now()))+"_"
txt=txt+CStr(Month(Now()))+"_"
txt=txt+CStr(Year(Now()))+"_"
txt=txt+CStr(Hour(Now()))+"_"
txt=txt+CStr(Minute(Now()))+"_"
txt=txt+CStr(Second(Now()))+".bmp"
WScript.Echo(txt)
shell.Run txt,1,True 

txt="c:\inetpub\wwwroot\refarm\CommandCam.exe /devnum 3 /filename c:\inetpub\wwwroot\refarm\pic\3_"
txt=txt+CStr(Day(Now()))+"_"
txt=txt+CStr(Month(Now()))+"_"
txt=txt+CStr(Year(Now()))+"_"
txt=txt+CStr(Hour(Now()))+"_"
txt=txt+CStr(Minute(Now()))+"_"
txt=txt+CStr(Second(Now()))+".bmp"
WScript.Echo(txt)
shell.Run txt,1,True 

txt="c:\inetpub\wwwroot\refarm\CommandCam.exe /devnum 4 /filename c:\inetpub\wwwroot\refarm\pic\4_"
txt=txt+CStr(Day(Now()))+"_"
txt=txt+CStr(Month(Now()))+"_"
txt=txt+CStr(Year(Now()))+"_"
txt=txt+CStr(Hour(Now()))+"_"
txt=txt+CStr(Minute(Now()))+"_"
txt=txt+CStr(Second(Now()))+".bmp"
WScript.Echo(txt)
shell.Run txt,1,true
