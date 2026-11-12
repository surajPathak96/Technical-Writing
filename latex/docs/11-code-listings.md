# 11. Code Listings

## Short verbatim text
`\verb|text|` prints literal text, for example `\verb|\newpage|`.
Blocks:
```latex
\begin{verbatim}
printf("Hello");
\end{verbatim}
```

## The listings package
```latex
\usepackage{listings}
\usepackage{xcolor}
\lstset{basicstyle=\ttfamily\small, frame=single, numbers=left,
        breaklines=true, keywordstyle=\color{blue}}

\begin{lstlisting}[language=Python, caption={Add function}]
def add(a, b):
    return a + b
\end{lstlisting}
```

## Useful options
| Option | Effect |
|--------|--------|
| `language=C++` | syntax highlighting for a language |
| `numbers=left` | line numbers |
| `frame=single` | box around the code |
| `caption={...}` | caption below the listing |
| `breaklines=true` | wrap long lines |

Inline code: `\lstinline|int x = 0;|`.
Include a source file directly: `\lstinputlisting[language=C++]{main.cpp}`.

Example: [`examples/chapters/ch4-refs-code.tex`](../examples/chapters/ch4-refs-code.tex)
