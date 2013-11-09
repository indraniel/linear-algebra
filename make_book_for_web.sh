#!/bin/sh
#  Make the book for the web (hyperlinks, PDF, etc.)
mpost dotprod.mp
mpost ch1.mp
mpost ch2.mp
mpost ch3.mp
mpost ch4.mp
mpost ch5.mp
mpost voting.mp
mpost appen.mp
# # pdflatex "\def\dvidrv{pdftex}\def\pbsifont{yes}\def\hrefout{yes}\input book"
pdflatex "\def\hrefout{yes}\input book"
makeindex -s book.isty -p odd book.idx
# # pdflatex "\def\dvidrv{pdftex}\def\pbsifont{yes}\def\hrefout{yes}\input book"
pdflatex "\def\hrefout{yes}\input book"
# # dvips -Pwww -obook.ps book

# edit jhanswer.tex to set \input to bookans
# # pdflatex "\def\dvidrv{pdftex}\def\pbsifont{yes}\def\hrefout{yes}\input jhanswer"
pdflatex "\def\hrefout{yes}\input jhanswer"
# # pdflatex "\def\dvidrv{pdftex}\def\pbsifont{yes}\def\hrefout{yes}\input jhanswer"
pdflatex "\def\hrefout{yes}\input jhanswer"
# dvips -Pwww -ojhanswer.ps jhanswer
