# 6. Markdown, Main Page and Groups

## Markdown in comments
Doxygen supports Markdown inside comments:
```cpp
/**
 * Supports **bold**, *italic* and `code`.
 *
 * - bullet one
 * - bullet two
 */
```

## Main page
A markdown file can become the front page:
```
USE_MDFILE_AS_MAINPAGE = mainpage.md
```
Start the file with `# Title {#mainpage}`. Add other pages with `\page` or by listing
more `.md` files in `INPUT`.

## Groups
Group related functions together:
```cpp
/**
 * @defgroup math Math functions
 * @{
 */
double add(double a, double b);
double subtract(double a, double b);
/** @} */
```
Groups appear as separate "Modules" in the output.

## Lists of tasks
`@todo`, `@bug` and `@deprecated` create global lists in the generated site.

## Cross-references
Write the name of a documented class or function and Doxygen links it
automatically, or use `@ref Calculator`.

Example: [`example/mainpage.md`](../example/mainpage.md)
