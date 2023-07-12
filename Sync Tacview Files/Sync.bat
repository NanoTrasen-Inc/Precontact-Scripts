@echo off
echo Syncing Tacview files...
robocopy "V:\Users\server\Documents\Tacview\Server 3" "D:\Tacview\Server 3" *.acmi /mir /NFL /NDL /np /compress > nul
robocopy "V:\Users\server\Documents\Tacview\Server 4" "D:\Tacview\Server 4" *.acmi /mir /NFL /NDL /np /compress > nul
robocopy "V:\Users\server\Documents\Tacview\Server 5" "D:\Tacview\Server 5" *.acmi /mir /NFL /NDL /np /compress > nul
robocopy "V:\Users\server\Documents\Tacview\Server 6" "D:\Tacview\Server 6" *.acmi /mir /NFL /NDL /np /compress > nul