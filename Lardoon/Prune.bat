@echo off
setlocal
setlocal EnableExtensions
setlocal EnableDelayedExpansion

set script_dir=%~dp0
set script_dir=%script_dir:~0,-1%

start "Lardoon" /d "%script_dir%" /min /low "%script_dir%\lardoon.exe" prune