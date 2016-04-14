#! /bin/sh
FILENAME=milestone
xelatex -shell-escape -interaction=nonstopmode -file-line-error $FILENAME.tex | grep ".*:[0-9]*" 
if [ -e $FILENAME.pdf ]; then
	evince $FILENAME.pdf
else
	exit 10
fi
