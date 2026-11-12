# 4. Lists

## Bulleted list
```latex
\begin{itemize}
  \item First
  \item Second
\end{itemize}
```

## Numbered list
```latex
\begin{enumerate}
  \item Step one
  \item Step two
\end{enumerate}
```

## Description list
```latex
\begin{description}
  \item[Git] Version control system.
  \item[GitHub] Hosting platform.
\end{description}
```

## Nesting
Lists can be nested up to four levels deep:
```latex
\begin{itemize}
  \item Parent
  \begin{itemize}
    \item Child
  \end{itemize}
\end{itemize}
```

## Custom labels
```latex
\item[$\bullet$] Custom bullet
```
For finer control, load the `enumitem` package:
```latex
\usepackage{enumitem}
\begin{enumerate}[label=(\alph*)]
```

Example: [`examples/chapters/ch2-lists-math.tex`](../examples/chapters/ch2-lists-math.tex)
