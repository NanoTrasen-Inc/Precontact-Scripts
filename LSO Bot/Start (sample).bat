@echo off
setlocal
setlocal EnableExtensions
setlocal EnableDelayedExpansion

set script_dir=%~dp0
set script_dir=%script_dir:~0,-1%

taskkill /f /im lso.exe
del /f /q "%temp%\LSO-*"

start "LSO Bot #1" /d "%script_dir%" /min /belownormal "%script_dir%\lso.exe" run -o "%temp%" --uri http://127.0.0.1:50011 --discord-webhook <Discord webhook URL>
start "LSO Bot #2" /d "%script_dir%" /min /belownormal "%script_dir%\lso.exe" run -o "%temp%" --uri http://127.0.0.1:50021 --discord-webhook <Discord webhook URL>
start "LSO Bot #3" /d "%script_dir%" /min /belownormal "%script_dir%\lso.exe" run -o "%temp%" --uri http://127.0.0.1:50031 --discord-webhook <Discord webhook URL>