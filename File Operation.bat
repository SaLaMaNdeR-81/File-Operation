@echo off

Title File Operation

echo ##====================##
echo Your Program is Run ...
echo ##====================##

::==========================

:main

echo Do you Want Create New Folder ?
set /p answer= (y/n) :

if %answer%==y (echo =======================) else ( if %answer%==n (echo =======================) else (goto Invalid) )


echo Enter File Name .
set /p filename=--- Name :
echo =======================

if %answer%==y ( goto create_file )


:main_part2


echo Enter Files Format .
set /p fileformat=--- Format :
echo =======================

goto move_files

pause 
cls
goto main

::=================>

:create_file

if exist %filename% ( echo File is Exist & pause & goto main ) else ( md %filename% & echo [%filename%] is created. & echo ======================= )
goto main_part2

:move_files

move *.%fileformat% %filename%

echo =======================
echo All %fileformat% Moved.

pause
cls
goto main

:invalid

echo %answer% is Not Invalid Answer.
pause
cls
goto main

::==========================

pause