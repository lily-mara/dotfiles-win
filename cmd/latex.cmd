@ECHO off
latex %~n1.tex
dvipdfm %~n1.dvi
rm %~n1.dvi
rm %~n1.log
rm %~n1.aux
