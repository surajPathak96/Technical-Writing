# 2. Documentation Comment Styles

Doxygen only processes comments marked as documentation blocks.

## Block styles
```cpp
/**
 * Detailed description.
 */

/*!
 * Qt style description.
 */
```

## Single-line styles
```cpp
/// Brief description
//! Brief description
```

## Comments placed after a member
```cpp
int count;      ///< Number of items
double lastResult_; //!< Last result
```
`///<` documents the item that comes **before** it on the same line.

## Brief and detailed descriptions
```cpp
/**
 * @brief One-line summary.
 *
 * Longer detailed description that can span several lines
 * and paragraphs.
 */
```
The first sentence also becomes the brief description if `JAVADOC_AUTOBRIEF` is on.

## Where to put comments
Place the comment **immediately before** the item it describes (file, class,
function, enum, variable). Normal comments (`//` and `/* */`) are ignored.

Example: [`example/src/calculator.h`](../example/src/calculator.h)
