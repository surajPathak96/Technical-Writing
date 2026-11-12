# 1. LaTeX Basics

## What is LaTeX?
LaTeX is a document preparation system built on TeX. You write plain text with
commands, and a compiler produces a PDF. It separates **content** from
**formatting**, and is widely used for reports, theses and research papers.

## Minimal document
```latex
\documentclass{article}
\begin{document}
Hello, \LaTeX{}!
\end{document}
```

## Anatomy
| Part | Description |
|------|-------------|
| `\documentclass[options]{class}` | Sets the type: `article`, `report`, `book`, `beamer` |
| Preamble | Everything before `\begin{document}`: packages, settings, title |
| Body | Everything between `\begin{document}` and `\end{document}` |

## Packages
Load extra features in the preamble:
```latex
\usepackage{amsmath}     % advanced math
\usepackage{graphicx}    % images
\usepackage{hyperref}    % clickable links
```

## Syntax rules
- Commands start with a backslash: `\textbf{bold}`.
- Braces `{}` group arguments; square brackets `[]` hold optional arguments.
- `%` starts a comment.
- Environments: `\begin{name} ... \end{name}`.
- Blank line = new paragraph; extra spaces are ignored.

## Common mistakes
- Missing `\end{...}` or a closing brace.
- Using `_`, `%`, `&`, `#`, `$` without escaping (write `\_`, `\%`, ...).
- Compiling once only when references or the table of contents are used (compile twice).

Example: [`examples/main.tex`](../examples/main.tex)
