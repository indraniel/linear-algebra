#!/bin/sh
# make_lab.sh
#  Bash shell script to regenerate the lab from source.
# 2012-Dec-20 JH

# generate the asy graphics
cd asy
asy -render=0 -f pdf -noprc ellipsoid
asy -render=0 -f pdf -noprc ellipsoid1
asy -render=0 -f pdf -noprc ellipsoid2
cd ..

# generate the lab proper
xelatex --shell-escape lab
bibtex lab
xelatex --shell-escape lab

# improve on some of the auto-generated graphics
sage lab.sagetex.sage
xelatex --shell-escape lab
