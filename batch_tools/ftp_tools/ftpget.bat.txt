@echo off
REM ftp connect details
SET hostname=animusdeleta.net76.net
SET username=a7165140
SET password=maker12

echo user %username%> ftpcmd.dat
echo %password%>> ftpcmd.dat
echo bin>> ftpcmd.dat
echo get %1>> ftpcmd.dat
echo quit>> ftpcmd.dat
ftp -n -s:ftpcmd.dat %hostname%
del ftpcmd.dat