@echo off

rem Tool responsible for building the CD-ROM.

call SETENV.bat

%OSCDIMG_EXE% -o -l%VOL_NAME% PRODUCTION %TARGET_ISO%

pause
