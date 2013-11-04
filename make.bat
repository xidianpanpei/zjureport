@echo off
title ZJU Graduate Report

call "./clean.bat"
del *.pdf /s

echo "===============>BEGAIN<==============="
xelatex report
bibtex report
xelatex report
xelatex report
echo "================>END<================="

echo "*************CLEAN START**************"
call "./clean.bat"
echo "**************CLEAN END***************"

pause