# 7. Graphics and TikZ

## Images
```latex
\usepackage{graphicx}
\begin{frame}{Figure}
  \centering
  \includegraphics[width=0.6\textwidth]{images/diagram.png}
\end{frame}
```
Place images in a folder and keep file names simple.

## TikZ diagrams
```latex
\usepackage{tikz}
\begin{tikzpicture}[node distance=2.5cm]
  \node[draw,rounded corners,fill=blue!15] (a) {Edit};
  \node[draw,rounded corners,fill=green!15,right of=a] (b) {Commit};
  \draw[->,thick] (a) -- (b);
\end{tikzpicture}
```
- `\node` places text or shapes; `\draw` draws lines and arrows.
- Name nodes with `(a)` to connect them.

## Tips
- Prefer vector images (PDF) over low-resolution PNGs.
- Use `[plain]` frames for full-slide pictures.

Example: [`examples/slides.tex`](../examples/slides.tex)
