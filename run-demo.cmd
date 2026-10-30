@echo off
setlocal
set "PATH=C:\Qt\6.8.3\mingw_64\bin;C:\Qt\Tools\mingw1310_64\bin;%PATH%"
set "QT_PLUGIN_PATH=C:\Qt\6.8.3\mingw_64\plugins"
set "QML_IMPORT_PATH=%~dp0build-local\qml;C:\Qt\6.8.3\mingw_64\qml"
if not exist "%~dp0build-local\Responsive_ScadaApp.exe" (
    echo Build the application with build-demo.cmd first.
    pause
    exit /b 1
)
start "" /D "%~dp0build-local" "%~dp0build-local\Responsive_ScadaApp.exe"
