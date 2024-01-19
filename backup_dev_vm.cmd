@echo off
@REM Taken from https://andydunkel.net/2019/03/16/virtualbox-backup-im-laufenden-betrieb-durchfuehren/

"C:\Program Files\Oracle\VirtualBox\vboxmanage.exe" snapshot Ubuntu take Backup -description "%DATE%_%TIME%"
"C:\Program Files\7-Zip\7z.exe" a B:\VMs\Ubuntu\%date%\vm.7z F:\virtualbox\Ubuntu\* -xr!*Snapshots* -mx1
"C:\Program Files\Oracle\VirtualBox\vboxmanage.exe" snapshot Ubuntu delete Backup