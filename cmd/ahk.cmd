@ECHO off
set ahkc=C:\Program Files\AutoHotkey\Compiler\ahk2exe.exe
"%ahkc%" /in %1 /out %~n1.exe
