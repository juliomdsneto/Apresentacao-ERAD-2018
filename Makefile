# Julio`s presentation makefile
FILE=main
PDFLATEXOPTS=-synctex=1 -interaction=nonstopmode

$(FILE).pdf: beamerthemeAmsterdam.sty $(FILE).tex 
	pdflatex $(PDFLATEXOPTS) $(FILE).tex 
	bibtex $(FILE).aux
	pdflatex $(PDFLATEXOPTS) $(FILE).tex 
	pdflatex $(PDFLATEXOPTS) $(FILE).tex
	make clean

clean:
	rm *.aux *.bbl *.blg *.log *.nav *.out *.snm *.toc
