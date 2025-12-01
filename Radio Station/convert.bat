@echo off
setlocal EnableDelayedExpansion

set script_dir=%~dp0
set script_dir=%script_dir:~0,-1%

set ffmpeg=C:\Users\Conner\Executables\Path\ffmpeg\bin\ffmpeg.exe

cd /d "%script_dir%"
:: Convert all .webm files in the current directory to .mp3
for %%f in ("%script_dir%\*.webm") do (
	echo Converting file: %%~nxf

	:: Convert to mp3
	"%ffmpeg%" -i "%%f" -vn -ar 44100 -ac 2 -b:a 192k "%script_dir%\%%~nf.mp3"

	if "%ERRORLEVEL%" == "1" (
		echo [ERROR] Something fucked up while converting %%~nxf
		pause
		exit /b 1
	)
)