# 5. Generating and Viewing Documentation

## Run Doxygen
```bash
cd example
doxygen Doxyfile
```
Output goes to `docs_output/html/`. Open the front page:
```bash
open docs_output/html/index.html      # macOS
xdg-open docs_output/html/index.html  # Linux
```

## What you get
- **Main page** from `mainpage.md`.
- **Classes**: list, hierarchy and members of `Calculator`.
- **Files**: `calculator.h`, `calculator.cpp`, `main.cpp`.
- **Search box** and source browser.
- Diagrams if Graphviz is enabled (`HAVE_DOT = YES`).

## PDF output
Set `GENERATE_LATEX = YES`, run Doxygen, then:
```bash
cd docs_output/latex
make          # produces refman.pdf
```

## Warnings
Doxygen prints warnings for undocumented parameters or members. Fix them to get
complete documentation. Set `QUIET = NO` to see all messages.

## Publishing
Commit the generated `html/` folder, or enable GitHub Pages and point it at the
output, so the documentation can be browsed online.
