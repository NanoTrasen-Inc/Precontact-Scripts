@echo off
setlocal
setlocal EnableExtensions
setlocal EnableDelayedExpansion

set dcs_data_dir=%USERPROFILE%\Saved Games\DCS.openbeta

rmdir /s /q "%dcs_data_dir%\fxo" "%dcs_data_dir%\metashaders2"

timeout 2