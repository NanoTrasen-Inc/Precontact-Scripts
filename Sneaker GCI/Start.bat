@echo off
setlocal
setlocal EnableExtensions
setlocal EnableDelayedExpansion

set script_dir=%~dp0
set script_dir=%script_dir:~0,-1%

:start
start "Sneaker GCI" /wait /belownormal "%script_dir%\sneaker.exe" --bind 0.0.0.0:7788 --config "%script_dir%\config.json"
timeout 5

goto :start