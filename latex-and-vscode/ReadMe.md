# Latex and VS Code
This installation/configuration guide is a based on [Visual Studio Code with LaTeX](https://mjcb.io/blog/2020/01/23/visual-studio-code-with-latex/)

## Installation
1. Install VS Code
2. Install MikTex
    - Settings:
        - Preferred Paper Size: `Letter`
        - Install missing packages on the fly `Yes`
3. Update MikTex

## Latex Build Files
The following files are generated during the Latex Build process and can be added to the `.gitignore` file.
```
    *.fdb_latexmk
    *.fls
    *.log
    *.lof
    *.pdf
    *.synctex.gz
    *.toc
    *.aux
```