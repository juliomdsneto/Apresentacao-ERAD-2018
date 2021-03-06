# Julio`s presentation makefile
FILE=main
PDFLATEXOPTS=-synctex=1 -interaction=nonstopmode

$(FILE).pdf: beamerthemeAmsterdam.sty $(FILE).tex 
	pdflatex $(PDFLATEXOPTS) $(FILE).tex 
	pdflatex $(PDFLATEXOPTS) $(FILE).tex 
	pdflatex $(PDFLATEXOPTS) $(FILE).tex
	rm *.aux *.bbl *.blg *.log *.nav *.out *.snm *.toc

clean:
	rm *.aux *.bbl *.blg *.log *.nav *.out *.snm *.toc *.pdf
