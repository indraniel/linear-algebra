#!/bin/bash
# LaTeX the Linear Algebra book and answers

usage()
{
cat << EOF
usage: $0 options

Generate book.pdf and jhanswer.pdf.

OPTIONS:
   -h      Show this message
   -n      Do not generate an answer file (used to speed development)
   -r      Regenerating; don't run metapost, etc. (used for development)
   -v      Verbose
EOF
}

REGENERATING=
NOANSWERFILE=
VERBOSE=
while getopts “hrnv” OPTION
do
     case $OPTION in
         h)
             usage
             exit 1
             ;;
         n)
             NOANSWERFILE=1
             ;;
         r)
             REGENERATING=1
             ;;
         v)
             VERBOSE=1
             ;;
         ?)
             usage
             exit
             ;;
     esac
done

# Generate the MetaPost and Asymptote figures, and Sage plots
if [[ -z $REGENERATING ]] 
then
    mpost dotprod.mp
    mpost ch1.mp
    mpost ch2.mp
    mpost ch3.mp
    mpost ch4.mp
    mpost ch5.mp
    mpost voting.mp
    mpost appen.mp
    cd asy
    asy -noprc -fpdf ppiped
    asy axes
    cd ..
    sage bridges.sage
    sage detspeed.sage
    sage mile.sage
    sage moneyball.sage
fi

# Generate the book; run it twice to settle future references
pdflatex "\def\hrefout{yes}\input book"
makeindex -s book.isty -p odd book.idx
pdflatex "\def\hrefout{yes}\input book"

# Generate the answer file
if [[ -z $NOANSWERFILE ]] 
then
    pdflatex "\def\hrefout{yes}\input jhanswer"
    pdflatex "\def\hrefout{yes}\input jhanswer"
fi

# OLD CRUFT BELOW HERE
#!/bin/sh
#  Make the book for the web (hyperlinks, PDF, etc.)
# mpost dotprod.mp
# mpost ch1.mp
# mpost ch2.mp
# mpost ch3.mp
# mpost ch4.mp
# mpost ch5.mp
# mpost voting.mp
# mpost appen.mp
# # # pdflatex "\def\dvidrv{pdftex}\def\pbsifont{yes}\def\hrefout{yes}\input book"
# pdflatex "\def\hrefout{yes}\input book"
# makeindex -s book.isty -p odd book.idx
# # # pdflatex "\def\dvidrv{pdftex}\def\pbsifont{yes}\def\hrefout{yes}\input book"
# pdflatex "\def\hrefout{yes}\input book"
# # # dvips -Pwww -obook.ps book

# # edit jhanswer.tex to set \input to bookans
# # # pdflatex "\def\dvidrv{pdftex}\def\pbsifont{yes}\def\hrefout{yes}\input jhanswer"
# pdflatex "\def\hrefout{yes}\input jhanswer"
# # # pdflatex "\def\dvidrv{pdftex}\def\pbsifont{yes}\def\hrefout{yes}\input jhanswer"
# pdflatex "\def\hrefout{yes}\input jhanswer"
# # dvips -Pwww -ojhanswer.ps jhanswer


