# 8. Tips, Handouts and Common Errors

## Handout (no overlays)
```latex
\documentclass[handout]{beamer}
```

## Speaker notes
```latex
\begin{frame}{Slide}
  Content
  \note{Remember to explain the diagram.}
\end{frame}
```

## Common errors
| Problem | Fix |
|---------|-----|
| `\verb illegal in argument` | Add `[fragile]` to the frame |
| Content runs off the slide | Shorten it, split frames, or use `[shrink]` |
| Outline or numbers are wrong | Compile twice |
| Missing `beamer.cls` | Install the `beamer` package (`sudo tlmgr install beamer`) or use Overleaf |

## Workflow with Git
- Commit `.tex` files and the final PDF.
- Ignore `*.nav`, `*.snm`, `*.aux`, `*.log`, `*.out`, `*.toc` and `*.vrb` (already in `.gitignore` except `*.vrb`).
