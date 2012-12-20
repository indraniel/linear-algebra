#!/bin/sh
# make_lab.sh
#  Bash shell script to regenerate the lab from source.
# 2012-Dec-20 JH

xelatex --shell-escape lab
bibtex lab
xelatex --shell-escape lab
# improve on some of the auto-generated graphics
sage lab.sagetex.sage
xelatex --shell-escape lab
