@echo off
chcp 65001 > nul 2>&1

echo EXECUTING ARCHIVE
title %1% -- Interpreted archived program

set spth=%cd%
set /a pth=%random%

mkdir "%~dp0/temp/%pth%" > nul 2>&1
copy "%1" "%~dp0/temp/%pth%/a.rar" > nul 2>&1

cd /d "%~dp0/temp/%pth%"
%~dp0\7z\7z e a.rar  > nul 2>&1


cd %spth%
echo test
call %~dp0/temp/%pth%/main.cmd
echo test

cd /d "%~dp0/temp" > nul 2>&1
echo test
echo pth: %pth%

rmdir /s /q %pth%

cd %spth% > nul 2>&