@echo off
setlocal

cd /d "%~dp0"
set "APP_DIR=%~dp0."
set "NW_EXE=%~dp0..\nwjs-v0.80.0-win-x64\nw.exe"

if not exist "%NW_EXE%" set "NW_EXE=%~dp0nwjs-v0.80.0-win-x64\nw.exe"

if not exist "%NW_EXE%" (
	echo Could not find nw.exe.
	echo Expected it in either:
	echo   "%~dp0..\nwjs-v0.80.0-win-x64\"
	echo   "%~dp0nwjs-v0.80.0-win-x64\"
	pause
	exit /b 1
)

start "Lucky Draw" "%NW_EXE%" "%APP_DIR%"