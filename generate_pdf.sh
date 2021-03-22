#!/bin/bash

pandoc -s $@ \
	-f gfm \
	-H template.tex \
	-o output.pdf \
	--pdf-engine=xelatex \
	-V mainfont="DejaVu Serif" \
	-V monofont="DejaVu Sans Mono" \
	-V linkcolor:blue \
	-V fontsize=12pt \
	--toc \
	--include-before-body cover.tex \
	--highlight-style pygments.theme 

