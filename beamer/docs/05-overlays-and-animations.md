# 5. Overlays and Animations

Overlays reveal content step by step inside one frame. The PDF contains one page
per step.

## Overlay specifications
```latex
\begin{itemize}
  \item<1-> Visible from step 1
  \item<2-> Visible from step 2
  \item<3-> Visible from step 3
\end{itemize}
```
`<2->` means "from step 2 onward"; `<2>` means only step 2; `<2-3>` means steps 2 to 3.

## Commands
| Command | Effect |
|---------|--------|
| `\pause` | Stops; everything after appears on the next step |
| `\only<2>{text}` | Shows text only at step 2 (takes no space otherwise) |
| `\uncover<2->{text}` | Reveals text but always reserves its space |
| `\visible<2->{text}` | Similar to `\uncover` |
| `\alt<2>{A}{B}` | Shows A at step 2, B otherwise |
| `\textbf<2>{text}` | Applies formatting only at step 2 |

## Automatic bullet reveal
```latex
\begin{itemize}[<+->]
  \item First
  \item Second
\end{itemize}
```

## Notes
Overlays only work in PDF viewers that step through pages (presentation mode).
Do not overuse them; they inflate the page count.

Example: [`examples/slides.tex`](../examples/slides.tex)
