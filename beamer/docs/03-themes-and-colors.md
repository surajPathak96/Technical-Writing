# 3. Themes, Colors and Fonts

## Presentation themes
```latex
\usetheme{Madrid}
```
Common themes: `default`, `Madrid`, `Berlin`, `Warsaw`, `Copenhagen`, `Boadilla`,
`CambridgeUS`, `Singapore`, `AnnArbor`, `Frankfurt`.

## Color themes
```latex
\usecolortheme{beaver}
```
Examples: `default`, `beaver`, `crane`, `dolphin`, `seahorse`, `wolverine`.

## Font themes
```latex
\usefonttheme{professionalfonts}
\usefonttheme{serif}
```

## Custom colors
```latex
\setbeamercolor{structure}{fg=blue!70!black}
\setbeamercolor{title}{bg=red!70!black,fg=white}
```

## Navigation symbols
Remove the small navigation icons in the corner:
```latex
\setbeamertemplate{navigation symbols}{}
```

## Footer
```latex
\setbeamertemplate{footline}[frame number]
```

Try several themes quickly by changing one line, recompiling and comparing the result.
