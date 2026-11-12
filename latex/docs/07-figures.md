# 7. Figures and Graphics

## Including an image
```latex
\usepackage{graphicx}
...
\begin{figure}[htbp]
\centering
\includegraphics[width=0.6\textwidth]{images/diagram.png}
\caption{System diagram}
\label{fig:diagram}
\end{figure}
```
Supported formats with `pdflatex`: PDF, PNG, JPG. Refer with `Figure~\ref{fig:diagram}`.

## Options for `\includegraphics`
`width=`, `height=`, `scale=0.5`, `angle=90`, `keepaspectratio`.

## Subfigures
```latex
\usepackage{subcaption}
\begin{figure}
  \begin{subfigure}{0.45\textwidth}
    \includegraphics[width=\linewidth]{a.png}
    \caption{First}
  \end{subfigure}
  \begin{subfigure}{0.45\textwidth}
    \includegraphics[width=\linewidth]{b.png}
    \caption{Second}
  \end{subfigure}
  \caption{Two images}
\end{figure}
```

## Drawing with TikZ
```latex
\usepackage{tikz}
\begin{tikzpicture}
  \draw[thick,fill=blue!20] (0,0) rectangle (3,1.5);
  \draw[->] (3,0.75) -- (5,0.75);
  \node at (1.5,0.75) {Source};
\end{tikzpicture}
```
Common commands: `\draw`, `\node`, `\fill`, `\path`; styles such as `thick`, `dashed`, `->`.

## Lists of figures
`\listoffigures` prints an index of all captioned figures.

Example: [`examples/chapters/ch3-tables-figures.tex`](../examples/chapters/ch3-tables-figures.tex)
