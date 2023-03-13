@echo off
setlocal
setlocal EnableExtensions
setlocal EnableDelayedExpansion

set script_dir=%~dp0
set script_dir=%script_dir:~0,-1%

:start
start "Lardoon" /wait /belownormal "%script_dir%\lardoon.exe" --bind 0.0.0.0:3883
timeout 5

goto :start