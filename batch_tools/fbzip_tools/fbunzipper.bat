REM //This file is to be accompanied by FBZip.exe and FBZip.bin
REM //See this link for them -> http://www.freebyte.com/fbzip/
@echo off
color 0b
title fbzipper
cls
echo ******---------------Welcome to a shitty unzipper
echo.
echo ******---all paths are based in the working directory...........
echo ******---Please define something to unzip and where it should go!
echo.
echo.
set /p zipname="Archive to extract: "
echo.
set /p fpath="Where to extract?: "
echo.
fbzip.exe -e -p "%~dp0%zipname%.zip" "%~dp0%fpath%"
dir %~dp0%fpath%
echo.
echo Extraction has completed successfully!(Hopefully!)
pause