@echo off
setlocal
setlocal EnableExtensions
setlocal EnableDelayedExpansion

set script_dir=%~dp0
set script_dir=%script_dir:~0,-1%

start "Lardoon" /wait /low "%script_dir%\lardoon.exe" prune