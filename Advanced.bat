@echo off
cls 
MODE 100,15
chcp 65001 >nul
title Multi-Tool
color D

rem Set your password/key here
set "password=simpleKEY"

:login
cls
echo                [38;2;255;182;193m███╗   ███╗██╗   ██╗██╗  ████████╗██╗   ████████╗ ██████╗  ██████╗ ██╗     
echo                [38;2;255;192;203m████╗ ████║██║   ██║██║  ╚══██╔══╝██║   ╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo                [38;2;255;182;193m██╔████╔██║██║   ██║██║     ██║   ██║█████╗██║   ██║   ██║██║   ██║██║     
echo                [38;2;255;174;185m██║╚██╔╝██║██║   ██║██║     ██║   ██║╚════╝██║   ██║   ██║██║   ██║██║     
echo                [38;2;255;160;175m██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║      ██║   ╚██████╔╝╚██████╔╝███████╗
echo                [38;2;255;240;245m╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝      ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.
set /p user_input="[38;2;255;182;193mEnter password to access the menu: [92m"[97m

if "%user_input%"=="%password%" (
    goto menu
) else (
    echo Incorrect password. Exiting...
    timeout /t 3 /nobreak >nul
    exit
)

:menu
cls
echo                [38;2;255;182;193m███╗   ███╗██╗   ██╗██╗  ████████╗██╗   ████████╗ ██████╗  ██████╗ ██╗     
echo                [38;2;255;192;203m████╗ ████║██║   ██║██║  ╚══██╔══╝██║   ╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo                [38;2;255;182;193m██╔████╔██║██║   ██║██║     ██║   ██║█████╗██║   ██║   ██║██║   ██║██║     
echo                [38;2;255;174;185m██║╚██╔╝██║██║   ██║██║     ██║   ██║╚════╝██║   ██║   ██║██║   ██║██║     
echo                [38;2;255;160;175m██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║      ██║   ╚██████╔╝╚██████╔╝███████╗
echo                [38;2;255;240;245m╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝      ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.
echo                                     [97m┌────────────────────────────┐
echo                                     │ 1. [92mIP config               [97m│
echo                                     │                            │
echo                                     │ 2. Locate IP               │
echo                                     │                            │ 
echo                                     │ 3. Discord Channel Spammer │
echo                                     │                            │
echo                                     │ 4. Nuker                   │
echo                                     └────────────────────────────┘

rem Get the username
for /f "tokens=2 delims==" %%u in ('echo %USERNAME%') do set "username=%%u"

<nul set /p "=┌─── (Multi-Tool) "
echo.
<nul set /p "=└─# "
set /p choice=

if %choice%==1 goto ip_lookup
if %choice%==2 goto locate_ip
if %choice%==3 goto spammer
if %choice%==4 goto nuker

pause
goto menu

:ip_lookup
cls
echo Hostname:
hostname
echo.
echo IP Address:
ipconfig | findstr /i "IPv4"
pause
cls
goto menu

:locate_ip
cls
echo [92mEnter the hostname you want to look up[97m
set /p hostname="[38;2;255;182;193mHostname: [97m"

rem Fetch IP address using nslookup
for /f "tokens=2 delims=:" %%i in ('nslookup %hostname% ^| findstr /C:"Address" ^| findstr /V /C:"Aliases"') do (
    set "ip=%%i"
)

rem Display the result
echo.
if defined ip (
    echo The IP address for hostname %hostname% is: %ip:~1%
) else (
    echo Could not find IP address for hostname %hostname%.
)
echo.

pause
cls
goto menu

:nuker
echo [Succesfully Nuked Channel]
time 1
echo [Succesfully Nuked Channel]
time 1
echo [Succesfully Nuked Channel]
time 1
echo [Succesfully Nuked Channel]
echo [Succesfully Nuked Channel]
echo [Succesfully Nuked Channel]
echo [Succesfully Nuked Channel]
echo [Succesfully Nuked Channel]
echo [Succesfully Nuked Channel]
echo [Succesfully Nuked Channel]
echo [Succesfully Nuked Channel]
