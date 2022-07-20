PAPER_OBJ=paper

PAPER_PDF=$(PAPER_OBJ).pdf
PAPER_PS=$(PAPER_OBJ).ps
PAPER_DVI=$(PAPER_OBJ).dvi

PAPER_SRCS=$(wildcard *.tex) $(wildcard *.bib) $(wildcard figures/*.*)

BIB=bibtex
PDFLTX=pdflatex --interaction=nonstopmode -synctex=1 -output-directory=out

.PHONY: all clean

all: paper

paper: $(PAPER_PDF)

$(PAPER_PDF): DIR $(PAPER_SRCS)
	$(PDFLTX) $(PAPER_OBJ)
	$(BIB) $(PAPER_OBJ)
	$(PDFLTX) $(PAPER_OBJ)
	$(PDFLTX) $(PAPER_OBJ)

DIR: 
	mkdir -p out

clean:
	rm -rf out/
