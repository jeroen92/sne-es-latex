FILENAME = ./huiswerk

PDFLATEX = /usr/bin/pdflatex --shell-escape
EVINCE = /usr/bin/evince

CLEANEXTS = aux,dvi,out,blg,bbl,*.xml,toc,bcf,log,glg,glo,gls,glsdefs,pyg,xdy,hst,ver

all:
	make build
	make clean
	make view

build:
	$(PDFLATEX) $(FILENAME).tex
	$(PDFLATEX) $(FILENAME).tex

view:
	$(EVINCE) $(FILENAME).pdf

clean:
	rm -f $(FILENAME).{$(CLEANEXTS)}
