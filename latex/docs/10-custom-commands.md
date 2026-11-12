# 10. Custom Commands and Environments

## New commands
```latex
\newcommand{\name}[number of arguments]{definition}

\newcommand{\hello}{Hello, world}
\newcommand{\tool}[1]{\textbf{\textcolor{blue}{#1}}}
\newcommand{\vect}[1]{\mathbf{#1}}
```
Usage: `\hello`, `\tool{Git}`, `$\vect{x}$`. Arguments are referred to as `#1`, `#2`, ...

Redefine an existing command with `\renewcommand`.

## Optional argument
```latex
\newcommand{\greet}[2][World]{Hello, #2 and #1}
```

## New environments
```latex
\newenvironment{note}
  {\begin{center}\begin{tabular}{|p{0.8\textwidth}|}\hline}
  {\\ \hline\end{tabular}\end{center}}
```

## Counters
```latex
\newcounter{mycount}
\stepcounter{mycount}
\themycount
```

## Why use them?
- Avoid repeating long code.
- Change the look in one place.
- Keep notation consistent (for example, vectors).

Put definitions in the preamble, or in a separate file loaded with `\input{macros}`.

Example: [`examples/main.tex`](../examples/main.tex)
