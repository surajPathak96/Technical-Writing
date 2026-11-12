# 1. Introduction to Doxygen

Doxygen is a documentation generator. It reads **specially formatted comments** in
source code (C, C++, Java, Python and more) and produces documentation as HTML,
PDF (via LaTeX), man pages and other formats.

## Why use it?
- Documentation lives next to the code, so it stays up to date.
- Generates class lists, file lists, call graphs and cross-references automatically.
- Standard in C++ projects.

## Workflow
1. Write documentation comments in your code.
2. Create a configuration file (`Doxyfile`).
3. Run `doxygen Doxyfile`.
4. Open `html/index.html` in a browser.

## Installation
| System | Command |
|--------|---------|
| macOS | `brew install doxygen graphviz` |
| Ubuntu / Debian | `sudo apt install doxygen graphviz` |
| Windows | Installer from doxygen.nl |

Graphviz (`dot`) is optional and is used for diagrams.

## Check
```bash
doxygen --version
```

Example project: [`example/`](../example/)
