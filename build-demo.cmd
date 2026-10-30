@echo off
setlocal
set "PATH=C:\Qt\Tools\mingw1310_64\bin;C:\Qt\6.8.3\mingw_64\bin;%PATH%"
"C:\Qt\Tools\CMake_64\bin\cmake.exe" -S "%~dp0." -B "%~dp0build-local" -G Ninja -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=C:/Qt/6.8.3/mingw_64 -DCMAKE_MAKE_PROGRAM=C:/Qt/Tools/Ninja/ninja.exe -DLINK_INSIGHT=OFF
if errorlevel 1 exit /b 1
"C:\Qt\Tools\CMake_64\bin\cmake.exe" --build "%~dp0build-local" --parallel 8
exit /b %errorlevel%
