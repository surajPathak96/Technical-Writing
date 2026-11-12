# Doxygen Documentation

How to document source code with Doxygen, with a small C++ example project.

## Topics
| # | Page | Covers |
|---|------|--------|
| 1 | [Introduction](docs/01-introduction.md) | what Doxygen is, install, workflow |
| 2 | [Comment styles](docs/02-comment-styles.md) | `/** */`, `///`, `///<` |
| 3 | [Commands](docs/03-commands.md) | `@brief`, `@param`, `@return`, `@throws`, ... |
| 4 | [Doxyfile](docs/04-doxyfile.md) | configuration options |
| 5 | [Generating output](docs/05-generating-output.md) | running Doxygen, HTML and PDF |
| 6 | [Markdown and groups](docs/06-markdown-and-groups.md) | main page, groups, todo lists |
| 7 | [Tips and errors](docs/07-tips-and-errors.md) | best practices, troubleshooting |

## Example project
- [`example/src/calculator.h`](example/src/calculator.h): fully documented class
- [`example/src/calculator.cpp`](example/src/calculator.cpp), [`main.cpp`](example/src/main.cpp)
- [`example/mainpage.md`](example/mainpage.md): front page
- [`example/Doxyfile`](example/Doxyfile): configuration

## Run it
```bash
brew install doxygen graphviz     # macOS
cd example
g++ -o calc src/main.cpp src/calculator.cpp && ./calc
doxygen Doxyfile
open docs_output/html/index.html
```
