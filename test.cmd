@echo off
setlocal enabledelayedexpansion

rem Set the file path
set "filePath=F:\Downloads\Screen-Recorder-Fri-Jan-19-2024-09-27-31-1.avi"

rem Extract directory, filename, and extension
for %%i in ("%filePath%") do (
    set "fileDir=%%~dpi"
    set "fileName=%%~ni"
    set "fileExt=%%~xi"
)
set "output=!fileDir!!fileName!.mp4"


rem Display the results (optional)
echo Directory: %fileDir%
echo Filename:  %fileName%
echo Extension: %fileExt%
echo Output: %output%

rem Your further processing using the variables fileDir, fileName, and fileExt

endlocal
