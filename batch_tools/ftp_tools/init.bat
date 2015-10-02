@echo off
color 0b

REM build the ftpgetter and then execute it.
set EXEC_NAME=puller
set FTP_GETTER=%EXEC_NAME%.bat

echo @echo off>  %FTP_GETTER%
echo color 85>> %FTP_GETTER%
echo SET hostname=XXXXXXXXXXX>> %FTP_GETTER%
echo SET username=XXXXXXX>> %FTP_GETTER%
echo SET password=XXXXXXX>> %FTP_GETTER%
echo echo user %%username%%^> ftpcmd.dat>> %FTP_GETTER%
echo echo %%password%%^>^> ftpcmd.dat>> %FTP_GETTER%
echo echo bin^>^> ftpcmd.dat>> %FTP_GETTER%
echo echo get /public_html/zerosec.zip^>^> ftpcmd.dat>> %FTP_GETTER%
echo echo quit^>^> ftpcmd.dat>> %FTP_GETTER%
echo ftp -n -s:ftpcmd.dat %%hostname%%>> %FTP_GETTER%
echo del ftpcmd.dat>> %FTP_GETTER%
echo call :deleteSelf^&exit /b>> %FTP_GETTER%
echo :deleteSelf>> %FTP_GETTER%
echo start /b "" cmd /c del "%%~f0"^&exit /b>> %FTP_GETTER%

set rootpath=%~dp0

pushd "C:/Program Files"
mkdir "C:/Program Files/Zork"
mkdir "C:/Program Files/Zork/content"
popd
xcopy /s/v/y %FTP_GETTER% "C:/Program Files/Zork"
del %FTP_GETTER%
pushd "C:\Program Files\Zork"
call %FTP_GETTER%
call %rootpath%lib.bat unzip
del zerosec.zip
cls
color 0a
goto:peachy

:PEACHY
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo              @@@@@@@   @@@@@@@@   @@@@@@    @@@@@@@  @@@  @@@  @@@ @@@  
echo              @@@@@@@@  @@@@@@@@  @@@@@@@@  @@@@@@@@  @@@  @@@  @@@ @@@  
echo              @@!  @@@  @@!       @@!  @@@  !@@       @@!  @@@  @@! !@@  
echo              !@!  @!@  !@!       !@!  @!@  !@!       !@!  @!@  !@! @!!  
echo              @!@@!@!   @!!!:!    @!@!@!@!  !@!       @!@!@!@!   !@!@!   
echo              !!@!!!    !!!!!:    !!!@!!!!  !!!       !!!@!!!!    @!!!   
echo              !!:       !!:       !!:  !!!  :!!       !!:  !!!    !!:    
echo              :!:       :!:       :!:  !:!  :!:       :!:  !:!    :!:    
echo               ::        :: ::::  ::   :::   ::: :::  ::   :::     ::    
echo               :        : :: ::    :   : :   :: :: :   :   : :     : 
echo.
echo.
echo.
echo.
echo.
echo.    
color 0C
pause >nul
