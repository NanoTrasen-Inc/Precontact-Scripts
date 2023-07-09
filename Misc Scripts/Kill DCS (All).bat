@echo off

:: Kill DCS
taskkill /f /im "dcs.exe" > nul 2>&1
echo DCS has been killed
:: Kill SRS
taskkill /f /im "SR-ClientRadio.exe" > nul 2>&1
echo SRS has been killed
:: Kill TrackIR
taskkill /f /im "TrackIR5.exe" > nul 2>&1
echo TrackIR5 has been killed
:: Kill SimAppPro
taskkill /f /im "SimAppPro.exe" > nul 2>&1
echo SimAppPro has been killed
:: Kill VoiceAttack
taskkill /f /im "VoiceAttack.exe" > nul 2>&1
echo VoiceAttack has been killed
:: Kill TheWay
taskkill /f /im "TheWay.exe" > nul 2>&1
echo TheWay has been killed


timeout 1