@echo off
chcp 65001 > nul 2>&1

title %1% -- Interpreted archived program

set spth=%cd%
set /a pth=%random%

mkdir "%~dp0/temp/%pth%" > nul 2>&1
copy "%1" "%~dp0/temp/%pth%/a.rar" > nul 2>&1

cd /d "%~dp0temp\%pth%"
%~dp0\7z\7z e a.rar  > nul 2>&1


cd %spth%
call %~dp0temp\%pth%\main.cmd

cd /d "%~dp0/temp"
cd %spth%