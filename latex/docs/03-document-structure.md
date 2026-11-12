# 3. Document Structure

## Sectioning commands
| Command | Available in |
|---------|--------------|
| `\part` | report, book |
| `\chapter` | report, book |
| `\section` | all |
| `\subsection`, `\subsubsection` | all |
| `\paragraph` | all |

Add `*` for an unnumbered heading: `\section*{Notes}`.

## Title page
```latex
\title{My Report}
\author{Name\\Institute}
\date{\today}
\begin{document}
\maketitle
```

## Abstract, contents, appendix
```latex
\begin{abstract} Short summary. \end{abstract}
\tableofcontents        % also \listoffigures, \listoftables
\appendix
\chapter{Extra material}
```

## Splitting a large document
Keep each chapter in its own file and include it from the main file:
```latex
\input{chapters/ch1}
\include{chapters/ch2}   % starts on a new page
```

## Document classes
| Class | Use |
|-------|-----|
| `article` | short papers, no chapters |
| `report` | longer reports with chapters |
| `book` | books (two-sided layout) |
| `beamer` | slide presentations |

Compile twice so that the table of contents and page numbers update.

Example: [`examples/main.tex`](../examples/main.tex)
