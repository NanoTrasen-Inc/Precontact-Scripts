@echo off
setlocal
set script_dir=%~dp0
set script_dir=%script_dir:~0,-1%

:: For process affinity/core restriction, see https://ss64.com/nt/start.html and https://stackoverflow.com/questions/7759948/set-affinity-with-start-affinity-command-on-windows-7

echo Starting DCS Server 2...
start "DCS.server2" /d "C:\Program Files\Eagle Dynamics\DCS World OpenBeta Server" /min /abovenormal "C:\Program Files\Eagle Dynamics\DCS World OpenBeta Server\bin\DCS.exe" --server --norender -w DCS.server2

timeout 2