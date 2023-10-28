@echo off
rem This batch file is responsible of preparing a workspace for editing Windows 95.

if exist WORKSPACE goto NOPREPARE

if not exist EXTRACTED goto NOEXTRACTED

if not exist MAKECAB\makecab.exe goto DOMAKECAB
if exist MAKECAB\makecab.exe goto STANDARDRUN

:DOMAKECAB

echo Will have to extract makecab.exe from Windows XP SP3 update file.
if not exist UPDATE\sp3.exe goto NOUPDATE

start /wait UPDATE\sp3.exe /quiet /extract:SP3FLS
extrac32 /A /E /L MAKECAB SP3FLS\i386\makecab.ex_
rmdir /S /Q SP3FLS

:STANDARDRUN

mkdir WORKSPACE
mkdir WORKSPACE\MINI
mkdir WORKSPACE\PRECOPY
mkdir WORKSPACE\WIN95
mkdir WORKSPACE\CDADD

xcopy /E EXTRACTED WORKSPACE\CDADD

rmdir /S /Q WORKSPACE\CDADD\WIN95

extrac32 /A /E /L WORKSPACE\MINI EXTRACTED\WIN95\MINI.CAB
extrac32 /A /E /L WORKSPACE\PRECOPY EXTRACTED\WIN95\PRECOPY1.CAB
extrac32 /A /E /L WORKSPACE\WIN95 EXTRACTED\WIN95\WIN95_02.CAB

rem We shouldn't have to deal with it. It will be rebuilt later.
del WORKSPACE\PRECOPY\LAYOUT.INF

goto END

:NOPREPARE
echo The folder WORKSPACE is already existing. Please remove it before running this script.
goto END

:NOUPDATE
echo No MAKECAB\makecab.exe file has been located and no update has been located in UPDATE\sp3.exe.
goto END

:NOEXTRACTED
echo You have not extracted the files of Windows 95 into the EXTRACTED folder. Please follow the instructions in README.TXT
goto END

:END
pause
