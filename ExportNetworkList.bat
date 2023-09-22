::Developer: Louis Bersine::
::Date 5/6/2018::
::Network List Export::

::Turn off echo
@echo off
::Clear console
CLS
echo Exporting Network List to a text file...
::Add the title to the top of the .bat file
echo Network List > networklist.txt
::Add network names to the text file
FOR /f "tokens=5 skip=5" %%G IN ('netsh wlan show profiles') DO echo [%%G] >> networklist.txt

::This loop captures the last value from the list into var1 (assuming that's your intent)
FOR /f "tokens=5" %%I IN ('findstr "[" networklist.txt') DO set "var1=%%I"

if defined var1 echo %var1%

::Add the pause so the user can read the console
pause

