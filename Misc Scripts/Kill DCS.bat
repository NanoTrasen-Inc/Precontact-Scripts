@echo off

:: Kill DCS
taskkill /f /im "dcs.exe" > nul 2>&1
echo DCS has been killed
:: Kill SRS
taskkill /f /im "SR-ClientRadio.exe" > nul 2>&1
echo SRS has been killed

timeout 1