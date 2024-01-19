@echo off
@REM Taken from https://andydunkel.net/2018/02/18/backup-von-virtualbox-vms-automatisieren/

"C:\Program Files\Oracle\VirtualBox\vboxmanage.exe" controlvm Ubuntu savestate
xcopy "F:\virtualbox\Ubuntu\*" B:\VMs\Ubuntu\%date%\* /Y /S
"C:\Program Files\Oracle\VirtualBox\vboxmanage.exe" startvm Ubuntu