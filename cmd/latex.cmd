@ECHO off
latex %1
dvipdfm %~n1.dvi
rm %~n1.dvi
rm %~n1.log
rm %~n1.aux
