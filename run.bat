@echo off

REM read configuration file
FOR /F "tokens=2 delims==" %%a IN ('find "phpPath" ^<run.ini') DO SET phpPath=%%a

IF _%phpPath%==_ SET phpPath="php.exe"

%phpPath% bootstrapper.php %*

if %errorlevel% NEQ 0 pause