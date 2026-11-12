# 9. Page Layout

## Margins and paper size
```latex
\documentclass[12pt,a4paper]{report}
\usepackage[margin=2.5cm]{geometry}
% or: \usepackage[left=3cm,right=2cm,top=2.5cm,bottom=2.5cm]{geometry}
```

## Headers and footers (fancyhdr)
```latex
\usepackage{fancyhdr}
\setlength{\headheight}{15pt}
\pagestyle{fancy}
\fancyhf{}                    % clear defaults
\fancyhead[L]{My Document}
\fancyhead[R]{\leftmark}      % current chapter title
\fancyfoot[C]{\thepage}
```
`L`, `C`, `R` are left, center, right; `E`/`O` are even/odd pages.

## Line spacing and paragraphs
```latex
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{6pt}
```

## Columns
```latex
\documentclass[twocolumn]{article}
% or in the middle of a document:
\usepackage{multicol}
\begin{multicols}{2} text \end{multicols}
```

## Page numbering
`\pagenumbering{roman}` then `\pagenumbering{arabic}`; `\thispagestyle{empty}`
removes the header and footer on one page.

## Orientation
Use `\usepackage[landscape]{geometry}` or the `lscape`/`pdflscape` package for single pages.

Example: [`examples/main.tex`](../examples/main.tex)
