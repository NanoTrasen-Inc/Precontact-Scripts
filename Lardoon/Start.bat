@echo off
setlocal
setlocal EnableExtensions
setlocal EnableDelayedExpansion

set script_dir=%~dp0
set script_dir=%script_dir:~0,-1%

start "Lardoon" /d "%script_dir%" /min /belownormal "%script_dir%\lardoon.exe" serve --bind 0.0.0.0:3883