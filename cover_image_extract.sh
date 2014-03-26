#!/bin/bash
# Extract the cover page of Linear Algebra into bookcover.png
# The resolution of 160 pixels/in I got by fiddling
gs -sDEVICE=png16m -dNOPAUSE -dBATCH -dSAFER \
       -dFirstPage=1 -dLastPage=1 \
       -r160 \
       -sOutputFile=bookcover.png book.pdf

