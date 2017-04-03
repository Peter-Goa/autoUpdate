D:
cd D:\Workspace\myWeb\Peter-Goa.github.io
make
mkdir ..\copy_temp
xcopy /E/Y .\_site ..\copy_temp
git checkout master
xcopy /E/Y/I .\.git ..\copy_temp\.git
cd ..\
del /F/S/Q .\Peter-Goa.github.io
rd /S/Q .\Peter-Goa.github.io
mkdir Peter-Goa.github.io
xcopy /E/Y .\copy_temp .\Peter-Goa.github.io
xcopy /E/Y/I .\copy_temp\.git .\Peter-Goa.github.io\.git
copy /Y .\makefile .\Peter-Goa.github.io\makefile
copy /Y .\readme.md .\Peter-Goa.github.io\readme.md
cd .\Peter-Goa.github.io
make
del /F/S/Q ..\copy_temp
rd /S/Q ..\copy_temp
..\alarmComplete