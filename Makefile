# Makefile for gruposlie.tex
#

IMGSTATICDIR=img/static

FILES =	gruposlie.pkg.sty\
	gruposlie.defs.sty\
	portada/portada.tex\
	tablacontenidos/tablacontenidos.tex\
	texto/grupos.tex\
	texto/gruposlie.tex\
	texto/lorentz.tex\
	texto/so3.tex\
	texto/algebralie.tex\
	texto/sux.tex\
	texto/momangclasico.tex\
	texto/momangcuantico.tex\
	apendices/ap_matrizrotaciongeneral.tex\
	apendices/ap_algebralie.tex\
	$(IMGSTATICDIR)/Cc-by-nc-sa_icon.pfg
	#texto/spin.tex\
	#texto/poincare.tex

gruposlie.pdf: gruposlie.tex $(FILES)

%.pdf:	%.tex
	lualatex --enable-write18 $<
	lualatex --enable-write18 $<

$(IMGSTATICDIR)/%.pdf: $(IMGSTATICDIR)/%.svg
	inkscape $< -o $@ --export-ignore-filters --export-ps-level=3

all: gruposlie.pdf

.PHONY: clean

clean:
	rm -rf *.pdf *.ps *.dvi *.aux *.log *.toc *~ *.dat *.script
	rm -rf texto/*.aux texto/*~
	rm -rf portada/*.aux portada/*~
	rm -rf tablacontenidos/*.aux tablacontenidos/*~
	rm -rf prefacio/*.aux prefacio/*~
	rm -rf apendices/*.aux apendices/*~


