@echo off
setlocal
setlocal EnableExtensions
setlocal EnableDelayedExpansion

set dcs_data_dir=%USERPROFILE%\Saved Games\DCS.openbeta

:: Kill DCS
taskkill /f /im "dcs.exe" > nul 2>&1
echo DCS has been killed

:: Clear shaders
rmdir /s /q "%dcs_data_dir%\fxo" "%dcs_data_dir%\metashaders2"
echo Shaders have been cleared

timeout 2