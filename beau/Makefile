LATEX=xelatex
BIBTEX=bibtex -terse
SOURCEFILE=texfinal
CLEANFILES= *.fmt *.aux *.log _*.prv *.out *.nav *.snm *.dvi *.toc *.lof *.idx *.lot *.bbl *.blg
TARGET=$(SOURCEFILE:.tex=.pdf)

.PHONY:all

all:$(TARGET) clean

$(TARGET):
	$(LATEX) $(SOURCEFILE)
	-$(BIBTEX) $(SOURCEFILE)
	$(LATEX) $(SOURCEFILE)
	$(LATEX) $(SOURCEFILE)

.PHONY:clean

clean:
	rm -rf $(CLEANFILES)

.PHONY:distclean
distclean:
	rm -rf $(CLEANFILES) $(TARGET)
