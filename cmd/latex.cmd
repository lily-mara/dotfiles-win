@ECHO off
pdflatex %~n1.tex
rm %~n1.dvi
rm %~n1.log
rm %~n1.aux
