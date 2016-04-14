#! /bin/sh
FILENAME=milestone
if [ ! -e preamble.fmt ]; then
	xelatex -ini -jobname="packages" "&xelatex packages.tex\dump"
fi
#xelatex -shell-escape -interaction=nonstopmode -file-line-error -fmt preamble.fmt $FILENAME.tex | grep ".*:[0-9]*" 
xelatex -shell-escape -interaction=nonstopmode -file-line-error $FILENAME.tex | grep ".*:[0-9]*" 
if [ -e $FILENAME.pdf ]; then
	evince $FILENAME.pdf
else
	exit 10
fi
