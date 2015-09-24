FILENAME = ./huiswerk

PDFLATEX = /usr/bin/pdflatex --shell-escape
EVINCE = /usr/bin/evince
XINDY = /usr/bin/xindy
BIBER = /usr/bin/biber
LATEXMK = /usr/bin/latexmk
MAKEGLOSSARIES = /usr/bin/makeglossaries
XINDY_OPTS = -t $(FILENAME).glg -o $(FILENAME).gls $(FILENAME).glo

CLEANEXTS = aux,dvi,out,blg,bbl,*.xml,toc,bcf,log,glg,glo,gls,glsdefs,pyg,xdy,hst,ver

all:
	make build
	make view

build:
	$(LATEXMK) -bibtex -pdf -pdflatex='pdflatex -shell-escape'

view:
	$(EVINCE) $(FILENAME).pdf

clean:
	$(LATEXMK) -C
