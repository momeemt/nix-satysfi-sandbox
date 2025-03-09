.PHONY: all

all: doc

# SATySFi/Satyrographos rules
%.pdf: %.saty
	satyrographos satysfi -- -o $@ $<
%.pdf.deps: %.saty
	satyrographos util deps -r -p --depfile $@ --mode pdf -o "$(basename $@)" $<


# User rules
doc: main.pdf
-include main.pdf.deps
