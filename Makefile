# Julio`s presentation makefile
FILE=main

$(FILE).pdf: beamerthemeAmsterdam.sty $(FILE).tex 
	pdflatex $(FILE).tex 
	bibtex $(FILE).aux
	pdflatex $(FILE).tex 
	pdflatex $(FILE).tex 

clean:
	rm *.aux *.bbl *.blg *.log *.nav *.out *.snm *.toc
