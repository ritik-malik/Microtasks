# CHAOSS Microtasks 2021

This repository contains implementation of Microtasks mentioned in the issue : [Automate Metrics Release and Process Improvement #537](https://github.com/chaoss/website/issues/537)

## Microtask

The task is to generate an automated PDF using 2 github style markdown files

### Markdown files

The markdown files are randomly chosen from [CHAOSS Evolution Working Group](https://github.com/chaoss/wg-evolution/tree/master/metrics)

### PDF generation

Pandoc has been used to generate LaTeX PDF from the markdown files. The reason to choose LaTeX is the vast amount of
flexibilty it provides in the document, despite it's steep learning curve it is a terrific payback. Also, since the task
is based purely on automation, it makes sense to apply best effort beautification to the document & LaTeX serves as the best
candidate for it.

Custom `.tex` files and themes have been used to achieve a sophisticated PDF. The process can be further automated to pull markdowns
directly from Github. The improvement of this PDF over the default PDF print style is immense customization which helps to achieve a
more professional looking document.

#### Process

The repository contains various files, each of them is explained below in order :

* `Issue_Response_Time.md` : CHAOSS input markdown file 1, taken from [here](https://github.com/chaoss/wg-evolution/tree/master/metrics)
* `New_Contributors.md` :  CHAOSS input markdown file 2, taken from [here](https://github.com/chaoss/wg-evolution/tree/master/metrics)
* `generate_pdf.sh` : This is the main bash script used for generating PDF from the markdown files. It uses pandoc with flags such as
`fontsize`, `linkcolor`, and references to other template files explained below. The PDF engine used is xelatex
* `template.tex` : This is a custom .tex template fed as an argument to `generate_pdf.sh`. It is responsible for headers, theme, color,
section, fonts, etc.
* `cover.tex` : Best level effort has been made to replicate the cover page of [Original Metrics Release](https://chaoss.github.io/website/release/release-pdfs/CHAOSS-Metrics-Release-2021-03.pdf) using this file
* `pygments.theme` : This file contains theme for sections, text, code snippets
* `output.pdf` : This is the final PDF generated from the 2 markdown files


#### Doubts :
1. Addition/deletion in above text
2. Should I add other microtasks & link to them
3. Should I add a section for `Useful links`
4. What next?

