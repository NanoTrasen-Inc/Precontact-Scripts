@echo off
setlocal EnableDelayedExpansion
set script_dir=%~dp0
set script_dir=%script_dir:~0,-1%

cd /d "%script_dir%"
git pull
timeout 2