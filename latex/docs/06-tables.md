# 6. Tables

## Basic table
```latex
\begin{table}[h]
\centering
\begin{tabular}{|l|c|r|}
\hline
\textbf{Left} & \textbf{Center} & \textbf{Right} \\ \hline
A & B & C \\ \hline
\end{tabular}
\caption{A basic table}
\label{tab:basic}
\end{table}
```

## Column specifiers
| Spec | Meaning |
|------|---------|
| `l` `c` `r` | left, center, right aligned |
| `p{3cm}` | fixed-width column with wrapping text |
| `\|` | vertical line |

`&` separates cells, `\\` ends a row, `\hline` draws a horizontal line.

## Merged cells
- `\multicolumn{2}{c}{Title}` merges columns.
- `\multirow{2}{*}{Text}` merges rows (needs `multirow`).

## Professional style: booktabs
```latex
\usepackage{booktabs}
\begin{tabular}{lr}
\toprule
Name & Value \\
\midrule
A & 1 \\
\bottomrule
\end{tabular}
```
Avoid vertical lines; use `\toprule`, `\midrule` and `\bottomrule`.

## Tables across pages
Use the `longtable` package. Wide tables can be scaled with
`\resizebox{\textwidth}{!}{...}`.

## Tips
- `[h]`, `[t]`, `[b]`, `[p]` are float placement hints; `[htbp]` is the safe default.
- Always add `\caption` and `\label`, then use `\ref{tab:basic}`.

Example: [`examples/chapters/ch3-tables-figures.tex`](../examples/chapters/ch3-tables-figures.tex)
