# 4. Lists, Blocks and Columns

## Lists
```latex
\begin{itemize}
  \item Point one
  \item Point two
\end{itemize}

\begin{enumerate}
  \item Step one
  \item Step two
\end{enumerate}
```

## Blocks
```latex
\begin{block}{Definition} Text \end{block}
\begin{alertblock}{Warning} Text \end{alertblock}
\begin{exampleblock}{Example} Text \end{exampleblock}
```
Beamer also provides the `theorem`, `lemma`, `proof` and `definition` environments.

## Columns
```latex
\begin{columns}
  \column{0.5\textwidth}
  Left side
  \column{0.5\textwidth}
  Right side
\end{columns}
```
Options such as `[T]` align columns at the top.

## Emphasis
`\alert{text}` highlights text in the theme's alert color; `\textbf{}` and `\emph{}` also work.

## Footnotes
`\footnote{text}` appears at the bottom of the frame.

Example: [`examples/slides.tex`](../examples/slides.tex)
