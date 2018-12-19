
SRCS=$(wildcard *.scad)
TARGETS=fabrication-part1.svg fabrication-part2.svg


all: $(TARGETS)

# other SCAD files are mentioned, to have make track their changes, too
%.svg: %.scad $(SRCS)
	openscad $< -o temp.svg
	cat temp.svg \
	  | sed -e "s/fill=\"lightgray\"/fill=\"none\"/" \
		> $@
	@rm temp.svg

clean:
	rm -f $(TARGETS)

