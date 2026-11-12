# 1. Beamer Basics

Beamer is a LaTeX class for creating slide presentations. The source is plain text
and the output is a PDF.

## Minimal presentation
```latex
\documentclass{beamer}
\usetheme{Madrid}

\title{My Talk}
\author{Name}
\date{\today}

\begin{document}

\begin{frame}
  \titlepage
\end{frame}

\begin{frame}{First Slide}
  Hello, Beamer!
\end{frame}

\end{document}
```

## Key ideas
| Item | Meaning |
|------|---------|
| `\documentclass{beamer}` | Selects the slide class |
| `frame` environment | One frame (slide) |
| `\begin{frame}{Title}` | Frame with a title |
| `\titlepage` | Generates the title slide from `\title`, `\author`, `\date` |
| Preamble | Themes, packages and metadata, as in normal LaTeX |

## Options
- `aspectratio=169` for widescreen: `\documentclass[aspectratio=169]{beamer}`
- `10pt`, `11pt`, `12pt` for font size.

## Compile
```bash
pdflatex slides.tex
pdflatex slides.tex     # second run for outline and navigation
```

Example: [`examples/slides.tex`](../examples/slides.tex)
