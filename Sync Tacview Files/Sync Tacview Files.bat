@echo off
robocopy "C:\Users\server\Documents\Tacview\Server 1" "T:\Server 1" *.zip.acmi /mir /NFL /NDL /np /compress /min:1 > nul
robocopy "C:\Users\server\Documents\Tacview\Server 2" "T:\Server 2" *.zip.acmi /mir /NFL /NDL /np /compress /min:1 > nul
robocopy "V:\Users\server\Documents\Tacview\Server 3" "T:\Server 3" *.zip.acmi /mir /NFL /NDL /np /compress /min:1 > nul
robocopy "V:\Users\server\Documents\Tacview\Server 4" "T:\Server 4" *.zip.acmi /mir /NFL /NDL /np /compress /min:1 > nul
robocopy "V:\Users\server\Documents\Tacview\Server 5" "T:\Server 5" *.zip.acmi /mir /NFL /NDL /np /compress /min:1 > nul
robocopy "V:\Users\server\Documents\Tacview\Server 6" "T:\Server 6" *.zip.acmi /mir /NFL /NDL /np /compress /min:1 > nul