# 4. The Doxyfile (Configuration)

The `Doxyfile` controls what Doxygen reads and what it produces.

## Generate one
```bash
doxygen -g Doxyfile        # full template with all options and comments
```
Our example keeps only the important options: [`example/Doxyfile`](../example/Doxyfile).

## Important options
| Option | Meaning |
|--------|---------|
| `PROJECT_NAME` | Name shown at the top of the output |
| `OUTPUT_DIRECTORY` | Where the generated files go |
| `INPUT` | Files or folders to scan |
| `FILE_PATTERNS` | Which file types to read (`*.h *.cpp`) |
| `RECURSIVE` | Scan sub-folders |
| `EXTRACT_ALL` | Document everything, even without comments |
| `EXTRACT_PRIVATE` | Include private members |
| `GENERATE_HTML` / `GENERATE_LATEX` | Choose output formats |
| `SOURCE_BROWSER` | Add source code listings |
| `HAVE_DOT` | Use Graphviz for diagrams |
| `USE_MDFILE_AS_MAINPAGE` | Use a markdown file as the front page |

Settings are written as `NAME = value`; lines starting with `#` are comments.

## Update an old Doxyfile
```bash
doxygen -u Doxyfile
```
