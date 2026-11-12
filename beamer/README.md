# Beamer Documentation

Notes on creating presentations with LaTeX Beamer, with a compiled example deck.

## Topics
| # | Page | Covers |
|---|------|--------|
| 1 | [Basics](docs/01-basics.md) | document class, frames, title page, compiling |
| 2 | [Frames and structure](docs/02-frames-and-structure.md) | titles, sections, outline, frame options |
| 3 | [Themes and colors](docs/03-themes-and-colors.md) | themes, color themes, fonts, footer |
| 4 | [Lists, blocks, columns](docs/04-lists-blocks-columns.md) | itemize, blocks, columns |
| 5 | [Overlays](docs/05-overlays-and-animations.md) | `\pause`, `\only`, `\uncover`, `<1->` |
| 6 | [Math, tables, code](docs/06-math-tables-code.md) | formulas, booktabs, listings, links |
| 7 | [Graphics](docs/07-graphics-and-tikz.md) | images and TikZ |
| 8 | [Tips](docs/08-tips-and-handouts.md) | handouts, notes, common errors |

## Example
- [`examples/slides.tex`](examples/slides.tex): source of a 13-page demo presentation
- [`examples/slides.pdf`](examples/slides.pdf): compiled output

## Build
```bash
cd examples
pdflatex slides.tex
pdflatex slides.tex
```
