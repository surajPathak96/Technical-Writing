# 6. Math, Tables and Code

## Math
Everything from LaTeX works:
```latex
\begin{frame}{Formula}
  \[ \int_0^1 x^2\,dx = \frac{1}{3} \]
\end{frame}
```

## Tables
```latex
\usepackage{booktabs}
\begin{tabular}{lr}
\toprule
Tool & Purpose \\
\midrule
Beamer & Slides \\
\bottomrule
\end{tabular}
```

## Code listings
Frames containing code must be marked `[fragile]`:
```latex
\usepackage{listings}

\begin{frame}[fragile]{Code}
\begin{lstlisting}[language=C++]
int main() { return 0; }
\end{lstlisting}
\end{frame}
```
Using `\verb` or `lstlisting` without `[fragile]` causes the error
`\verb illegal in argument`.

## Hyperlinks
```latex
\usepackage{hyperref}
\href{https://www.latex-project.org}{LaTeX project}
```
Internal buttons: `\hyperlink{target}{\beamerbutton{Go}}`.

Example: [`examples/slides.tex`](../examples/slides.tex)
