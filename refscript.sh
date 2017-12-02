TEX='edger_test'
pdflatex $TEX.tex
pdflatex $TEX.tex
pdflatex $TEX.tex
bibtex $TEX.aux
pdflatex $TEX.tex
pdflatex $TEX.tex
bibtex $TEX.aux
pdflatex $TEX.tex
pdflatex $TEX.tex

