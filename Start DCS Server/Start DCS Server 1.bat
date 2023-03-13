@echo off
setlocal
set script_dir=%~dp0
set script_dir=%script_dir:~0,-1%

echo Starting DCS Server 1...
start "DCS.server1" /d "C:\Program Files\Eagle Dynamics\DCS World OpenBeta Server" /min /abovenormal /affinity 0x4 "C:\Program Files\Eagle Dynamics\DCS World OpenBeta Server\bin\DCS.exe" --server --norender -w DCS.server1