#! /bin/sh

echo "start installing"
mkdir /usr/share/texmf-dist/tex/latex/sherover
cp Source/sherover.sty /usr/share/texmf-dist/tex/latex/sherover
mktexlsr
