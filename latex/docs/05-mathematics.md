# 5. Mathematics

Load `\usepackage{amsmath,amssymb}`.

## Math modes
| Mode | Syntax |
|------|--------|
| Inline | `$E = mc^2$` |
| Display (unnumbered) | `\[ ... \]` |
| Display (numbered) | `\begin{equation} ... \end{equation}` |

## Common constructs
| Need | Code |
|------|------|
| Superscript / subscript | `x^2`, `x_i`, `x_{ij}^2` |
| Fraction | `\frac{a}{b}` |
| Square root | `\sqrt{x}`, `\sqrt[3]{x}` |
| Sum / product | `\sum_{i=1}^{n}`, `\prod_{i=1}^{n}` |
| Integral / limit | `\int_0^\infty`, `\lim_{x\to 0}` |
| Greek letters | `\alpha \beta \gamma \pi \theta \Omega` |
| Operators | `\leq \geq \neq \approx \times \pm \infty` |
| Text inside math | `\text{if } x > 0` |

## Aligned equations
```latex
\begin{align}
  (a+b)^2 &= a^2 + 2ab + b^2 \\
  (a-b)^2 &= a^2 - 2ab + b^2
\end{align}
```
`&` marks the alignment point. Use `align*` for no numbers.

## Matrices
```latex
\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}   % [ ]
\begin{pmatrix} x \\ y \end{pmatrix}           % ( )
```

## Piecewise functions
```latex
f(x) = \begin{cases} x^2 & x \ge 0 \\ -x & x < 0 \end{cases}
```

## Labels
```latex
\begin{equation}\label{eq:quad} x = \frac{-b\pm\sqrt{b^2-4ac}}{2a} \end{equation}
See Equation~\ref{eq:quad}.
```

Example: [`examples/chapters/ch2-lists-math.tex`](../examples/chapters/ch2-lists-math.tex)
