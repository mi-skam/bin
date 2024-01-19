@echo off
@REM Taken from https://andydunkel.net/2018/02/18/backup-von-virtualbox-vms-automatisieren/

"C:\Program Files\Oracle\VirtualBox\vboxmanage.exe" controlvm Ubuntu savestate
"C:\Program Files\7-Zip\7z.exe" a B:\VMs\Ubuntu\%date%\vm.7z F:\virtualbox\Ubuntu\*
"C:\Program Files\Oracle\VirtualBox\vboxmanage.exe" startvm Ubuntun