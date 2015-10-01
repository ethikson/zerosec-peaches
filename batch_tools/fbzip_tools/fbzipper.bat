REM //This file is to be accompanied by FBZip.exe and FBZip.bin
REM //See this link for them -> http://www.freebyte.com/fbzip/
@echo off
color 0b
title fbzipper
cls
echo ******----------------Welcome to a shitty zipper
echo.
echo ******---The current settings don't preserve directory structure
echo ******---all paths are based in the working directory...........
echo ******---Please define something to zip and archive name........
echo.
echo.
set /p fpath="Filename/Directory to zip: "
echo.
set /p zipname="Archive name: "
echo.
fbzip.exe -a -r "%~dp0%zipname%.zip" "%~dp0%fpath%"
dir %~dp0
echo.
echo Zip has completed successfully!(Hopefully!)
pause