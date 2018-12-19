
SRCS=$(wildcard *.scad)
TARGET_SRCS=$(wildcard fabrication-*.scad)
SVGS=$(TARGET_SRCS:.scad=.svg)
PDFS=$(TARGET_SRCS:.scad=.pdf)


all: $(PDFS)

# other SCAD files are mentioned, to have make track their changes, too
%.svg: %.scad $(SRCS)
	openscad $< -o temp.svg
	cat temp.svg \
	  | sed \
		-e "s/fill=\"lightgray\"/fill=\"none\"/" \
		 -e "s/svg width=\"[0-9]*mm\" height=\"[0-9]*mm\"/svg width=\"210mm\" height=\"297mm\"/" \
		> $@
	@rm temp.svg

%.pdf: %.svg
	inkscape $^ --export-pdf=$@

clean:
	rm -f $(PDFS) $(SVGS)

