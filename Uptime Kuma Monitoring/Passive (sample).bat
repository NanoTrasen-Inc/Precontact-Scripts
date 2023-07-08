@echo off
setlocal
setlocal EnableExtensions
setlocal EnableDelayedExpansion

set ping_url=1.1.1.1
set push_url=http://uptimekuma.example.com:3001/api/push/SJDFseriF

goto :Main


:Trim
SetLocal EnableDelayedExpansion
set Params=%*
for /f "tokens=1*" %%a in ("!Params!") do EndLocal & set %1=%%b
exit /b


:Ping
set ms=error
for /f "tokens=4 delims==ms" %%i in ('ping -n 1 %ping_url% ^| find "ms"') do set ms=%%i
if "!ms!" == "error" (
	echo [ERROR] Failed to ping !ping_url!>&2
	set ping=
) else (
	call :Trim ping !ms!
)
exit /b


:Main
call :Ping
set url_status=up
set url_msg=%computername%%%20is%%20%url_status%

curl -sS "!push_url!?status=!url_status!&msg=!url_msg!&ping=!ping!" > nul
exit /b !ERRORLEVEL!