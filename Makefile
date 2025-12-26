# Makefile for gruposlie.tex
#

FILES =	gruposlie.pkg.sty\
	gruposlie.defs.sty\
	portada/portada.tex\
	tablacontenidos/tablacontenidos.tex\
	texto/grupos.tex\
	texto/gruposlie.tex\
	texto/lorentz.tex\
	texto/so3.tex\
	texto/algebralie.tex\
	apendices/ap_matrizrotaciongeneral.tex\
	apendices/ap_algebralie.tex
	#texto/gl-sux.tex\
	#texto/gl-momangclasico.tex\
	#texto/gl-momangcuantico.tex\
	#texto/gl-spin.tex\
	#texto/gl-poincare.tex

gruposlie.pdf: gruposlie.tex $(FILES)

%.pdf:	%.tex
	lualatex --enable-write18 $<
	lualatex --enable-write18 $<

all: gruposlie.pdf

.PHONY: clean

clean:
	rm -rf *.pdf *.ps *.dvi *.aux *.log *.toc *~ *.dat *.script
	rm -rf texto/*.aux texto/*~
	rm -rf portada/*.aux portada/*~
	rm -rf tablacontenidos/*.aux tablacontenidos/*~
	rm -rf prologo/*.aux prologo/*~
	rm -rf apendices/*.aux apendices/*~


