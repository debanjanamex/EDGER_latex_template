
f1= edger_example
ftex=$(f1).tex
faux=$(f1).aux



help:
	@echo "Available makes:"
	@echo "all abs  clean cleanall"

all:
	make abs
	make clean

abs:
	pdflatex $(ftex)
	pdflatex $(ftex)
	pdflatex $(ftex)
	bibtex   $(faux)
	pdflatex $(ftex)
	pdflatex $(ftex)
	bibtex   $(faux)
	pdflatex $(ftex)
	pdflatex $(ftex)



clean:
	rm *.aux *.bbl *.blg *.log

cleanall:
	rm *.aux *.bbl *.blg *.log *.pdf
