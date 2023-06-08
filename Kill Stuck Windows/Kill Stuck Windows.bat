@echo off
setlocal
setlocal EnableExtensions
setlocal EnableDelayedExpansion

:: Set environment Variables
set script_dir=%~dp0
set script_dir=%script_dir:~0,-1%

:: Goto main function at the bottom
goto :Main


:: Kill window function
:KillWindow
set window_title=%~1

:: Find windows that have the matching title
echo Checking for windows with title: !window_title!
for /f "tokens=1,2" %%a in ('tasklist /v /fi "WINDOWTITLE eq !window_title!" /fo table /nh 2^>nul') do (
	set image=%%a
	set pid=%%b
	
	@REM If no windows found
	if "!pid!" == "No" (
		@REM echo [INFO] No windows found with title: !window_title!
	@REM If window found, check to make sure it's a DCS.exe process
	) else if "!image!" == "DCS.exe" (
		@REM Kill the window process
		echo Killing window "!window_title!" with PID !pid!...
		taskkill /f /PID !pid!

		@REM If killing the process succeeded or failed
		if !ERRORLEVEL! equ 0 (
			echo Killed window "!window_title!" with pid !pid!
		) else (
			echo [ERROR] Failed to kill window "!window_title!" with pid !pid! 1>&2
		)
	) else (
		@REM General error handler, shound never be reached.
		echo [ERROR] Failed to determine PID of !window_title! 1>&2
	)
)
exit /b


:: Main function - Add window titles here
:Main
echo Checking for stuck DCS Server windows...

:: Kill processes that failed to start due because an instance was already running
call :KillWindow "Can't run"
:: Kill processes that failed to login
call :KillWindow "Login Failed"
:: Kill processes that failed to login
call :KillWindow "Authorization failed"
:: Kill processes stuck on the login screen. Probably best not to though, as servers normally don't get stuck here unless there's an actual problem with the credentials
call :KillWindow "DCS Login"

exit /b