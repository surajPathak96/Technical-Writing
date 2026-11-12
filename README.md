# Technical Writing: Documentation Repository

Documentation of the topics covered in the Technical Writing (TW) class:
**LaTeX, Beamer, Doxygen, Google Docs, and Git/GitHub**.

**Author:** Suraj Pathak, B.Tech CSE, MNIT Jaipur

## Contents

| Topic | Folder | What it contains |
|-------|--------|------------------|
| LaTeX | [`latex/`](latex/) | 12 topic pages, a multi-chapter example project, compiled PDF |
| Beamer | [`beamer/`](beamer/) | 8 topic pages, an example presentation and its PDF |
| Doxygen | [`doxygen/`](doxygen/) | 7 topic pages, a documented C++ project and a `Doxyfile` |
| Google Docs | [`google-docs/`](google-docs/) | 4 topic pages, link to a shared example document |
| Git and GitHub | [`git-github/`](git-github/) | Command notes covering the Git and GitHub lecture |

Each folder has its own `README.md` with an index of its pages.

## Repository structure
```
Technical-Writing/
├── README.md
├── .gitignore
├── latex/
│   ├── README.md
│   ├── docs/        (01-basics.md ... 12-compiling-and-tools.md)
│   └── examples/    (main.tex, chapters/, references.bib, main.pdf)
├── beamer/
│   ├── README.md
│   ├── docs/
│   └── examples/    (slides.tex, slides.pdf)
├── doxygen/
│   ├── README.md
│   ├── docs/
│   └── example/     (src/, mainpage.md, Doxyfile)
├── google-docs/
│   ├── README.md
│   ├── docs/
│   └── screenshots/
└── git-github/
    └── README.md
```

## How to use this repository
```bash
git clone https://github.com/surajPathak96/Technical-Writing.git
cd Technical-Writing
```

Build the examples:

| Topic | Command |
|-------|---------|
| LaTeX | `cd latex/examples && pdflatex main.tex && bibtex main && pdflatex main.tex && pdflatex main.tex` |
| Beamer | `cd beamer/examples && pdflatex slides.tex && pdflatex slides.tex` |
| Doxygen | `cd doxygen/example && doxygen Doxyfile` |

## Git workflow used for this repository
Each topic was written on its own branch, committed in logical steps, pushed to
GitHub and merged through a pull request:

```
edit -> git add -> git commit -> git push -> pull request -> merge
```
The history can be inspected with `git log --oneline --graph --all`.

## Tools required
- Git
- A LaTeX distribution (TeX Live, MacTeX or BasicTeX), or Overleaf
- Doxygen (and optionally Graphviz)
- A Google account for the Google Docs example
