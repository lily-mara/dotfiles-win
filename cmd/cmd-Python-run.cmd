@ECHO OFF
cd %~dp1
ECHO Running %~n1 via python...
ECHO.
ECHO -----------------------------------------------
ECHO.
python %~nx1
ECHO.
ECHO -----------------------------------------------
ECHO.
pause