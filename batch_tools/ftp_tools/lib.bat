@echo off
call :%~1
GOTO:EXIT

:UNZIP
	cls
	set pth=%~dp0
	%pth%fbzip.exe -e -p "C:/Program Files/Zork/zerosec.zip" "C:/Program Files/Zork"
GOTO:EOF

:EXIT
exit /b