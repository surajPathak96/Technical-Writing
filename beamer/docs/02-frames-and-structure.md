# 2. Frames and Structure

## Frame titles
```latex
\begin{frame}{Title}
\begin{frame}{Title}{Subtitle}
\begin{frame}
  \frametitle{Title}
  \framesubtitle{Subtitle}
```

## Sections and outline
```latex
\section{Introduction}
\subsection{Motivation}
\begin{frame}{Outline}
  \tableofcontents
\end{frame}
```
Show the outline at the start of each section with:
```latex
\AtBeginSection[]{
  \begin{frame}{Outline}\tableofcontents[currentsection]\end{frame}
}
```

## Frame options
| Option | Use |
|--------|-----|
| `[fragile]` | Needed when the frame contains `\verb` or `lstlisting` |
| `[plain]` | Removes header and footer (good for full-slide images) |
| `[shrink=10]` | Shrinks content that is slightly too large |
| `[allowframebreaks]` | Splits long content over several frames |

## Title page details
```latex
\title[Short Title]{Full Presentation Title}
\subtitle{Subtitle}
\author[Short Name]{Full Name}
\institute[MNIT]{MNIT Jaipur}
```
The text in `[...]` appears in the footer.

## Good slide design
- One idea per slide.
- Short phrases, not paragraphs.
- Roughly 5 or 6 bullets at most.

Example: [`examples/slides.tex`](../examples/slides.tex)
