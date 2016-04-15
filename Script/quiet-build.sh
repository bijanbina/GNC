#! /bin/sh
#FILENAME=milestone
#xelatex -shell-escape -interaction=nonstopmode -file-line-error $FILENAME.tex | grep ".*:[0-9]*" 
xelatex -shell-escape -interaction=nonstopmode -file-line-error "$1" | grep ".*:[0-9]*" | grep -vwE "Package"

