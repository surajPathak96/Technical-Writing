# LaTeX Documentation

A topic-by-topic guide to LaTeX, with working examples. All example files compile
into one PDF.

## Topics
| # | Page | Covers |
|---|------|--------|
| 1 | [Basics](docs/01-basics.md) | what LaTeX is, preamble, packages, syntax |
| 2 | [Text formatting](docs/02-text-formatting.md) | fonts, sizes, alignment, spacing, special characters |
| 3 | [Document structure](docs/03-document-structure.md) | sections, title page, contents, appendix, classes |
| 4 | [Lists](docs/04-lists.md) | itemize, enumerate, description |
| 5 | [Mathematics](docs/05-mathematics.md) | inline and display math, align, matrices, cases |
| 6 | [Tables](docs/06-tables.md) | tabular, multicolumn, multirow, booktabs |
| 7 | [Figures](docs/07-figures.md) | graphicx, subfigures, TikZ |
| 8 | [References](docs/08-references.md) | labels, citations, BibTeX, hyperlinks |
| 9 | [Page layout](docs/09-page-layout.md) | geometry, headers and footers, spacing, columns |
| 10 | [Custom commands](docs/10-custom-commands.md) | newcommand, environments, counters |
| 11 | [Code listings](docs/11-code-listings.md) | verbatim, listings package |
| 12 | [Compiling and tools](docs/12-compiling-and-tools.md) | build steps, Overleaf, errors |

## Examples
- [`examples/main.tex`](examples/main.tex): master file
- [`examples/chapters/`](examples/chapters/): one chapter per topic group
- [`examples/references.bib`](examples/references.bib): bibliography
- [`examples/main.pdf`](examples/main.pdf): compiled output

## Build
```bash
cd examples
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```
Or upload the `examples` folder to Overleaf.
