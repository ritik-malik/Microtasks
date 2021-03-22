# CHAOSS Microtasks 2021

This repository contains implementation of Microtasks mentioned in the issue : **[Automate Metrics Release and Process Improvement #537](https://github.com/chaoss/website/issues/537)**

## Microtask 1

Attending the weekly community meeting and monthly web content meeting atleast once

* Meetings attended :
    * Weekly community meeting : [March 16 2021](https://docs.google.com/document/d/1PMDWc6xMe0fNE7shxTK5_HE_ykRBG5w55_Zx5hvzsEY/edit)
    * Weekly community meeting : March 23 2021 *(to be attended)*
    * Monthly web content : April 5 2021 *(to be attended)*

Note : *This microtask will be updated accordingly*

## Microtask 2

PRs made so far :

|   PR  |   Result  |
|-------|-----------|
| [Fixed typos in About page #566](https://github.com/chaoss/website/pull/566) | merged |
| [Automated Typo fixer #574](https://github.com/chaoss/website/pull/574) | in review |

*Will be updated accordingly*

## Microtask 3

The task is to generate an automated PDF using 2 github style markdown files

### Markdown files

2 markdown files were randomly chosen from [CHAOSS Evolution Working Group](https://github.com/chaoss/wg-evolution/tree/master/metrics)

### PDF generation

[Pandoc](https://pandoc.org/) has been used to generate [LaTeX PDF](https://www.latex-project.org/) from the markdown files. The reason to choose LaTeX is the vast amount of
flexibility it provides in the document, despite its steep learning curve it is a terrific payback. Also, since the task
is based purely on automation, it makes sense to apply best effort beautification to the document & LaTeX serves as the best
candidate for it.

Custom `.tex` files and themes have been used to achieve a sophisticated PDF. The process can be further automated to pull markdowns
directly from Github. The improvement of this PDF over the default PDF print style is cutting all the manual labour and immense customization which helps to achieve a
more professional looking document.

**Features added so far :**
* Instead of generating single PDFs and then manually combining, this process generates a single PDF automatically
* Any number of markdown files can be combined dynamically to generate a single PDF
* Replicated the cover page in LaTeX
* Improved table of content
* Added headers with section and subsection references
* Added color scheme for different section/subsections
* Added background to differentiate code snippets

### Process

The repository contains various files, each of them is explained below in order :

* `Issue_Response_Time.md` : CHAOSS input markdown file 1, taken from [here](https://github.com/chaoss/wg-evolution/tree/master/metrics)
* `New_Contributors.md` :  CHAOSS input markdown file 2, taken from [here](https://github.com/chaoss/wg-evolution/tree/master/metrics)
* `generate_pdf.sh` : This is the main bash script used for generating PDF from the markdown files, which are provided as command line arguments.
It uses pandoc with flags such as `fontsize`, `linkcolor`, `table-of-content` and references to other template files as explained below. The PDF engine used is [xelatex](https://www.overleaf.com/learn/latex/XeLaTeX)
because it allows us to use any font installed in the system.
* `template.tex` : This is a custom .tex template fed as an argument to `generate_pdf.sh`. It is responsible for headers, theme, color,
section, fonts, etc.
* `cover.tex` : Best level effort has been made to replicate the cover page of [Original Metrics Release](https://chaoss.github.io/website/release/release-pdfs/CHAOSS-Metrics-Release-2021-03.pdf) using this file
* `pygments.theme` : This file contains theme for sections, text, code snippets
* `output.pdf` : This is the **[final PDF](output.pdf)** generated from the 2 markdown files

### Usage

* `./generate_pdf.sh Issue_Response_Time.md New_Contributors.md` 
* This will create the PDF from the markdown files given as arguments. `n` number of files can be given as command line argument,
it will automatically combine all of them in the given order

### Link to [Final PDF generated](output.pdf)

### Additional info

Since the issue also involves the use of other languages, so I would like to point out that :
* I've previously worked with automated translation of documents using [Google translate API](https://pypi.org/project/googletrans/),
as a part of contribution to [hacktober fest](https://hacktoberfest.digitalocean.com/) under the org [Python world](https://github.com/Python-World).
The repo can be found [here](https://github.com/Python-World/Python_and_the_Web/tree/master/Scripts/API/Google-Py%20Translator), and the PR can be found [here](https://github.com/Python-World/Python_and_the_Web/pull/542)
* I also know basic spanish, (learned last year in the pandemic as an extra activity) might be of some help to me during the automated translations

### References

* https://pt.overleaf.com/learn/latex/How_to_Write_a_Thesis_in_LaTeX_(Part_5):_Customising_Your_Title_Page_and_Abstract
* https://learnbyexample.github.io/customizing-pandoc/
* https://github.com/Wandmalfarbe/pandoc-latex-template/blob/master/README.md
* https://tex.stackexchange.com/questions/265/fonts-larger-than-huge/269
* https://www.overleaf.com/learn/latex/Font_sizes,_families,_and_styles
