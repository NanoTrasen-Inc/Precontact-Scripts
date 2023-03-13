@echo off
setlocal
setlocal EnableExtensions
setlocal EnableDelayedExpansion

:: Environment variables. Do not touch
set script_dir=%~dp0
set script_dir=%script_dir:~0,-1%
:: File paths
set yt-dlp=%script_dir%\yt-dlp.exe
set mp3file=%temp%\srs-player.mp3
set srs-ext=C:\Program Files\DCS-SimpleRadio-Standalone\DCS-SR-ExternalAudio.exe
:: Default settings
set port=
set freq=305.0
set modulation=AM
set volume=0.25
set displayname=Igla Dude


:: Handle parameters
:loop
if not "%1"=="" (
    if "%1"=="-port" (
        set user=%2
        shift
    )
    if "%1"=="-otheroption" (
        set other=%2
        shift
    )
    shift
    goto :loop
)


:: 
set servernumber=%1
set video_url=%~2
echo DEBUG: srs_port: %1
echo DEBUG: video_url: %2

if "%servernumber%" == "" (
	echo Please make sure you typed the parameters correctly. Type .srs to view usage.
	exit /b 1
)


:: Download video url
del /f /q "%mp3file%" 2>nul
"%yt-dlp%" -x --audio-format mp3 -o "%mp3file%" "%video_url%"

if "%ERRORLEVEL%" == "1" (
	echo [ERROR] Something fucked up while downloading the video
	exit /b 1
)


:: Play audio
"%srs-ext%" --file="%mp3file%" -f %freq% -m "%modulation%" -c 2 -n "%displayname%" -v %volume% -p 50%servernumber%2


exit /b