#! /bin/sh
#FILENAME=milestone
#xelatex -shell-escape -interaction=nonstopmode -file-line-error $FILENAME.tex | grep ".*:[0-9]*" 
#check for double compile if 
#TOC is not existed already
baseName=`echo "$1" | awk -F "." '{print $1}'`
if [ ! -e "$baseName.toc" ]; then
	echo "Generating ToC"
	xelatex -shell-escape -interaction=nonstopmode -file-line-error "$1" > /dev/null 2>&1
fi

xelatex -shell-escape -interaction=nonstopmode -file-line-error "$1" | grep ".*:[0-9]*" | grep -vwE "Package"

