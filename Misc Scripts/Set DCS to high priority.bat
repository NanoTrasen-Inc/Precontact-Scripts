@echo off

wmic process where name="dcs.exe" CALL setpriority "high priority" > nul 2>&1

timeout 1