@echo off

:: Prompt
SET DIRCMD=/OGNE
PROMPT [$p]$_$g
TITLE cmd

:: Commands

DOSKEY ls=dir /B $*
DOSKEY alias=notepad %USERPROFILE%\bin\alias.cmd
DOSKEY reload=%USERPROFILE%\bin\alias.cmd
DOSKEY _dive=podman run -ti --rm  -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive $*
DOSKEY _node=podman run -ti --rm -v %cd%:/code -w /code node:lts $*
DOSKEY _npm=podman run -ti --rm -v %cd%:/code -w /code node:lts npm $*
DOSKEY _xonsh=podman run -ti --rm -v %cd%:/code -w /code xonsh/xonsh:slim $*
DOSKEY pod=podman $*

:: Common directories

DOSKEY dev=cd "%USERPROFILE%\dev\$*"