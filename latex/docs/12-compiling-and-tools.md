# 12. Compiling, Tools and Common Errors

## Compiling
```bash
pdflatex main.tex            # basic
pdflatex main.tex            # again, for the table of contents and references
bibtex main                  # only if you use BibTeX
```
Full build with citations: `pdflatex` → `bibtex` → `pdflatex` → `pdflatex`.
`latexmk -pdf main.tex` automates all of this.

## Tools
| Tool | Notes |
|------|-------|
| Overleaf | Online editor, no installation |
| TeX Live / MacTeX / BasicTeX | Local distributions |
| TeXstudio, VS Code + LaTeX Workshop | Editors |

On macOS with BasicTeX, missing packages are installed with
`sudo tlmgr install booktabs multirow subcaption fancyhdr listings`.

## Common errors
| Message | Likely cause |
|---------|--------------|
| `Undefined control sequence` | Typo in a command, or the package is not loaded |
| `Missing $ inserted` | Math symbol used outside math mode |
| `File 'x.sty' not found` | Package not installed |
| `Missing } inserted` / `Runaway argument` | Unbalanced braces |
| `\begin{x} ended by \end{y}` | Mismatched environments |
| `Citation undefined` / `Reference undefined` | Run `bibtex` and compile again |

## Using LaTeX with Git
- Commit `.tex`, `.bib` and image sources; they are plain text, so `git diff` works well.
- Ignore build files in `.gitignore`: `*.aux *.log *.out *.toc *.bbl *.blg`.
- Commit the final PDF if you want it visible on GitHub.
