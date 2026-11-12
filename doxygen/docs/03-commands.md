# 3. Common Doxygen Commands

Commands start with `@` (or `\`). Both styles are equivalent.

## File and project
| Command | Purpose |
|---------|---------|
| `@file` | Documents the file itself |
| `@brief` | One-line summary |
| `@author` | Author name |
| `@version` | Version |
| `@date` | Date |

## Functions
| Command | Purpose |
|---------|---------|
| `@param name` | Describes a parameter (`@param[in]`, `@param[out]`, `@param[in,out]`) |
| `@return` | Describes the return value |
| `@throws` / `@exception` | Documents an exception |
| `@see` | Reference to related items |
| `@note` | Extra note |
| `@warning` | Warning message |
| `@pre`, `@post` | Pre- and post-conditions |
| `@todo`, `@bug`, `@deprecated` | Appear in generated lists |

## Structure commands
| Command | Purpose |
|---------|---------|
| `@class`, `@struct`, `@enum` | Document a type explicitly |
| `@namespace` | Document a namespace |
| `@defgroup`, `@ingroup` | Group related items |
| `@code ... @endcode` | Example code block |
| `@p name` | Refers to a parameter |
| `@ref name` | Link to another documented element |

## Example
```cpp
/**
 * @brief Divides a by b.
 * @param a Dividend.
 * @param b Divisor, must not be zero.
 * @return The quotient.
 * @throws std::invalid_argument if @p b is zero.
 * @warning Division by zero is not allowed.
 */
double divide(double a, double b);
```

Example: [`example/src/calculator.h`](../example/src/calculator.h)
