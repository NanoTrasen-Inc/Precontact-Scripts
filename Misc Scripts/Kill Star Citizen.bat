@echo off

:: Kill Star Citizen
taskkill /f /im "StarCitizen.exe" > nul 2>&1
echo Star Citizen has been killed

timeout 1