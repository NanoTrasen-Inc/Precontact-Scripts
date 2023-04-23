@echo off
setlocal
setlocal EnableExtensions
setlocal EnableDelayedExpansion

set script_dir=%~dp0
set script_dir=%script_dir:~0,-1%

call "%script_dir%\..\Sync Tacview Files\Sync.bat"

echo Importing Tacview files into lardoon...
start "Lardoon" /d "%script_dir%" /wait /min /low "%script_dir%\lardoon.exe" import -p "C:\users\server\Documents\Tacview"
echo Purging database...
start "Lardoon" /d "%script_dir%" /wait /min /low "%script_dir%\lardoon.exe" prune --no-dry-run
echo Done