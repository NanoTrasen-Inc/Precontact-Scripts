@echo off
setlocal EnableDelayedExpansion

set script_dir=%~dp0
set script_dir=%script_dir:~0,-1%

set srs-exe=C:\Program Files\DCS-SimpleRadio-Standalone\ExternalAudio\DCS-SR-ExternalAudio.exe
set port=5012
set freq=140.0
set modulation=AM
set volume=1
set displayname=JSchlatt - A Very 1999 Christmas


:loop
:: For each file in the current directory that doesn't end with .bat
for %%f in ("%script_dir%\*.mp3") do (
	echo Found file: %%~nxf
	if /I not "%%~xf"==".bat" (
		echo Playing %%~nxf...

		:: Play audio
		if not exist "%srs-exe%" (
			echo [ERROR] SRS External Audio executable not found at "%srs-exe%"
			pause
			exit /b 1
		)
		"%srs-exe%" --file="%%f" -f %freq% -m "%modulation%" -c 2 -n "%displayname%" -v %volume% -p %port% -R

		goto :replay_file
	)
)
goto :loop