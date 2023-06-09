@echo off
setlocal
set script_dir=%~dp0
set script_dir=%script_dir:~0,-1%

:: For process affinity/core restriction, see https://ss64.com/nt/start.html and https://stackoverflow.com/questions/7759948/set-affinity-with-start-affinity-command-on-windows-7

:: Start process minimized, and with 'abovenormal' priority level
echo Starting DCS Server 1...
start "DCS.server1" /d "C:\Program Files\Eagle Dynamics\DCS World OpenBeta Server" /min /abovenormal "C:\Program Files\Eagle Dynamics\DCS World OpenBeta Server\bin\DCS.exe" --server --norender -w DCS.server1

timeout 2