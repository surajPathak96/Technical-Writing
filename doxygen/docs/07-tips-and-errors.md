# 7. Best Practices and Common Problems

## Good documentation habits
- Document every public class, function and parameter.
- Start with a clear one-line `@brief`.
- Describe **why** and what to expect, not just the name again.
- Mention exceptions, units and valid ranges.
- Keep comments updated when the code changes.

## Common problems
| Problem | Cause and fix |
|---------|---------------|
| Nothing documented | Wrong `INPUT` path, or comments are not `/** */` or `///` |
| Members missing | Set `EXTRACT_ALL = YES`; check `EXTRACT_PRIVATE` for private ones |
| No diagrams | Graphviz not installed or `HAVE_DOT = NO` |
| `warning: argument 'x' not found` | The `@param` name does not match the code |
| Markdown page missing | File not in `INPUT` or wrong `USE_MDFILE_AS_MAINPAGE` |
| Old option warning | Run `doxygen -u Doxyfile` |

## Using Doxygen with Git
- Commit the source, `Doxyfile` and `mainpage.md`.
- Add generated output to `.gitignore` unless you want to publish it.
- Mention the command in your README so others can rebuild the documentation.
