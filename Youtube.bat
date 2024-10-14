@echo off
color 01
chcp 65001
title Simple Tool Tutorial
:MENU
cls
echo ╔════════════════════════════════╗
echo ║         Multi Tool Menu        ║
echo ╠════════════════════════════════╣
echo ║  1. System Information         ║
echo ║  2. Ping a Website             ║
echo ║  3. List Running Processes     ║
echo ║  4. Check IP Address           ║
echo ║  5. Exit                       ║
echo ╚════════════════════════════════╝
set /p choice="Choose an option: "

if "%choice%"=="1" goto SYSINFO
if "%choice%"=="2" goto PING
if "%choice%"=="3" goto PROCESSES
if "%choice%"=="4" goto IP
if "%choice%"=="5" exit
goto MENU

:SYSINFO
cls
echo ╔════════════════════════════════╗
echo ║     System Information         ║
echo ╚════════════════════════════════╝
systeminfo
pause
goto MENU

:PING
cls
echo ╔════════════════════════════════╗
echo ║        Ping a Website          ║
echo ╚════════════════════════════════╝
set /p url="Enter website URL (e.g., google.com): "
ping %url%
pause
goto MENU

:PROCESSES
cls
echo ╔════════════════════════════════╗
echo ║   List Running Processes       ║
echo ╚════════════════════════════════╝
tasklist
pause
goto MENU

:IP
cls
echo ╔════════════════════════════════╗
echo ║      Check IP Address          ║
echo ╚════════════════════════════════╝
ipconfig
pause
goto MENU
