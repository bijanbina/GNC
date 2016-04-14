#!/bin/sh
xelatex -file-line-error $1 | grep ".*:[0-9]*"
rm *.log *.aux *.out *.fdb_latexmk *.fls >> /dev/null 2>&1
exit 0
