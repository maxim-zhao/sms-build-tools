@echo off
rem :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
rem ::             WLA DX compiling batch file v4              ::
rem :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
rem :: Do not edit anything unless you know what you're doing! ::
rem :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

set WLAPATH=%~dp0

rem Cleanup to avoid confusion
if exist object.o del object.o

rem Compile
"%WLAPATH%wla-z80.exe" -o "%~dpn1.o" "%1"
if errorlevel 1 goto :error

rem Make linkfile
echo [objects]>linkfile
echo "%~dpn1.o">>linkfile

rem Link
"%WLAPATH%wlalink.exe" -d -r -v -S -A linkfile "%~dpn1"
if errorlevel 1 goto :error

rem Cleanup to avoid mess
if exist linkfile del linkfile
if exist "%~dpn1.o" del "%~dpn1.o"

goto :eof

:error
echo Build failed!