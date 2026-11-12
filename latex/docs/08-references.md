# 8. Cross-references, Citations and Bibliography

## Cross-references
```latex
\section{Intro}\label{sec:intro}
See Section~\ref{sec:intro} on page~\pageref{sec:intro}.
```
Use `~` (non-breaking space) before `\ref`. Labels work for sections, figures,
tables and equations. Compile **twice** to resolve them.

## BibTeX workflow
1. Create `references.bib`:
```bibtex
@book{lamport1994,
  author    = {Leslie Lamport},
  title     = {LaTeX: A Document Preparation System},
  publisher = {Addison-Wesley},
  year      = {1994}
}
```
2. Cite in the text: `\cite{lamport1994}` (several: `\cite{a,b}`).
3. Place at the end of the document:
```latex
\bibliographystyle{plain}
\bibliography{references}
```
4. Compile in this order:
```bash
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

## Entry types
`@article`, `@book`, `@inproceedings`, `@misc`, `@phdthesis`, `@techreport`.

## Styles
`plain`, `unsrt` (order of citation), `alpha`, `ieeetr`.

## Links and footnotes
```latex
\usepackage{hyperref}
\url{https://www.latex-project.org/}
\href{https://www.overleaf.com}{Overleaf}
Text.\footnote{A footnote.}
```

Example: [`examples/chapters/ch4-refs-code.tex`](../examples/chapters/ch4-refs-code.tex),
[`examples/references.bib`](../examples/references.bib)
