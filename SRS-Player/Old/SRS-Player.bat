@echo off
setlocal
setlocal EnableExtensions
setlocal EnableDelayedExpansion

set script_dir=%~dp0
set script_dir=%script_dir:~0,-1%

set yt-dlp=%script_dir%\yt-dlp.exe
set mp3file=%temp%\srs-player.mp3
set servernumber=1
set freq=305.0
set modulation=AM
set volume=0.25
set displayname=Igla Dude

:: Prompt for variables
set /p "video_url=Video URL: "
set /p "servernumber=Server number: [%servernumber%] "
set /p "freq=Frequency: [%freq%] "
set /p "modulation=Modulation: [%modulation%] "
set /p "volume=Volume: [%volume%] "
set /p "displayname=Display name: [%displayname%] "


:: Download video url
del /f /q "%mp3file%" 2>nul
"%yt-dlp%" -x --audio-format mp3 -o "%mp3file%" "%video_url%"


if "%ERRORLEVEL%" == "1" (
	echo [ERROR] Something fucked up while downloading the video
	pause
	exit /b 1
)

:replay

:: Play audio
"C:\Program Files\DCS-SimpleRadio-Standalone\DCS-SR-ExternalAudio.exe" --file="%mp3file%" -f %freq% -m "%modulation%" -c 2 -n "%displayname%" -v %volume% -p 50%servernumber%2


set replay=n
set /p "replay=Replay? y/n [%replay%] "
if "%replay%" == "y" goto :replay

exit /b
