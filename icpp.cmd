@echo off
chcp 65001 > nul 2>&1

title %1% -- Interpreted C++ - program

set spth=%cd%
set /a pth=%random%

mkdir "%~dp0/temp/%pth%" > nul 2>&1
copy "%1" "%~dp0/temp/%pth%/main.cpp" > nul 2>&1

cd /d "%~dp0/temp/%pth%"

g++ main.cpp -o main.exe > nul 2>&1

main.exe

cd /d "%~dp0/temp" > nul 2>&1
rmdir /s /q "%pth%" > nul 2>&1

cd %spth% > nul 2>&1