@echo off
setlocal enabledelayedexpansion

REM Default profile
set "profile=Fast 1080p30"

REM Parse command line options
:parseOptions
if "%~1" == "" (
    goto :process
)

if /i "%~1" == "/p" (
    shift
    if not "%~1" == "" (
        set "profile=%1"
        shift
        goto :parseOptions
    ) else (
        echo Error: Missing value for option /p
        exit /b 1
    )
)

goto :process

:process
REM Check if the required argument (input file) is provided
if "%~1" == "" (
    echo Usage: %0 input_file [/p profile_name]
    exit /b 1
)

REM Get the name of the input file and save it in a variable (input)
set "filePath=%~1"

REM Extract directory, filename, and extension
set "fileDir=%~dp1"
set "fileName=%~n1"
set "fileExt=%~x1"

set "output=!fileDir!!fileName!.mp4"

echo HandbrakeCLI.exe --preset-import-gui -Z "!profile!" -i "!filePath!" -o "!output!"
HandbrakeCLI.exe --preset-import-gui -Z "!profile!" -i "!filePath!" -o "!output!"

pause

endlocal
