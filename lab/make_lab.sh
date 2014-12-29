#!/bin/sh
# make_lab.sh
#  Bash shell script to regenerate the lab from source.
# 2014-Dec-29 JH Make sure you make sagetex known or the graphics won't 
#   come out right-sized.
#     http://www.sagemath.org/doc/installation/sagetex.html
# 2012-Dec-20 JH Written

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
echo "\n\n\n+++++++++++++++++++++"
echo "  LaTeX once more, this time using improved graphics only"
echo "+++++++++++++++++++++"
sage lab.sagetex.sage 2>&1 | tee make_lab_sage.out  # this file is created by Sage from sagesilent envs
xelatex lab
