@echo off
setlocal
setlocal EnableExtensions
setlocal EnableDelayedExpansion

set script_dir=%~dp0
set script_dir=%script_dir:~0,-1%

start "Lardoon" /wait /belownormal "%script_dir%\lardoon.exe" import -p "C:\users\server\Documents\Tacview"
start "Lardoon" /wait /belownormal "%script_dir%\lardoon.exe" import -p "V:\Users\server\Documents\Tacview"