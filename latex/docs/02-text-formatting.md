# 2. Text Formatting

## Font styles
| Command | Result |
|---------|--------|
| `\textbf{text}` | **bold** |
| `\textit{text}` | *italic* |
| `\underline{text}` | underlined |
| `\texttt{text}` | `typewriter` |
| `\textsc{text}` | Small Caps |
| `\emph{text}` | emphasis (italic in normal text) |

## Font sizes (smallest to largest)
`\tiny \scriptsize \footnotesize \small \normalsize \large \Large \LARGE \huge \Huge`
```latex
{\large This is large text.}
```

## Alignment
```latex
\begin{center} centered \end{center}
\begin{flushleft} left \end{flushleft}
\begin{flushright} right \end{flushright}
```

## Spacing and breaks
| Command | Effect |
|---------|--------|
| blank line | new paragraph |
| `\\` | line break |
| `\newpage` | new page |
| `\noindent` | no paragraph indent |
| `\hspace{1cm}` / `\vspace{1cm}` | horizontal / vertical space |

## Special characters
Escape reserved characters: `\$ \% \& \# \_ \{ \}`.
Use `\textbackslash` for a backslash and `\verb|text|` for literal text.

## Quotes and dashes
`` `single' `` and ` ``double'' `, hyphen `-`, en dash `--`, em dash `---`.

Example: [`examples/chapters/ch1-structure-text.tex`](../examples/chapters/ch1-structure-text.tex)
