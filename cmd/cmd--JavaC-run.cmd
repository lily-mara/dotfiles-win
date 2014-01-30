@ECHO OFF
cd %~dp1
IF EXIST %~n1.class (
  ECHO Running %~n1...
  ECHO -----------------------------------------------
  java %~n1
  ECHO -----------------------------------------------
)
pause