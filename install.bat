@echo off
setlocal EnableDelayedExpansion enableextensions
setlocal

title install Tinah Libraries

set /p Arduino= What Directory would you like?

if not exist "!Arduino!\hardware" mkdir "!Arduino!\hardware"

echo %cd%/libraries

xcopy /y /s %cd%\libraries "!Arduino!\libraries"
xcopy /y /s %cd%\hardware "!Arduino!\hardware"

pause
