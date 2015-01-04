#! /bin/bash
# fix_pdf_error.sh
# If I include more than one of the .pdf graphics on a page then I get:
#  PDF inclusion: multiple pdfs with page group included in a single page
# This fixes that. http://tex.stackexchange.com/a/78009/339
# 2015-Jan-04 Jim Hefferon PD  Written
#  Note that pstopdf does not work (something "mtxrun" error: cannot open ..)
FILES=*.pdf

for fn in $FILES
do
   s=${fn##*/}
   bname=${s%.pdf}
   # echo $bname
   pdf2ps $bname.pdf $bname.ps
   ps2pdf $bname.ps $bname.pdf
   # rm $bname.ps
done