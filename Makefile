# General makefile for managing LaTeX documents
# Written by Jabir Ali Ouassou <teletubbi(at)gmail.com>

DOCUMENT	= master
DVIOUT		= master.dvi
PDFOUT		= master.pdf
SRCS		= *.tex
TMPS		= *~ *.aux *.bbl *.blg *.log *.toc *.idx *.ps *.dvi

MAKEFILE	= Makefile
LATEX		= latex -file-line-error
DVIPDF		= dvipdf

$(DOCUMENT):	$(MAKEFILE)	
	@$(LATEX)  $(DOCUMENT)
	@$(LATEX)  $(DOCUMENT)
	@$(DVIPDF) $(DVIOUT)

clean:
	@rm -f *~ *.aux *.bbl *.blg *.log *.toc *.idx *.ps *.dvi *.out *.bm
