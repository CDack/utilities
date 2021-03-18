# Latex and VS Code
This installation/configuration guide is a based on [Visual Studio Code with LaTeX](https://mjcb.io/blog/2020/01/23/visual-studio-code-with-latex/)

## Installation
1. Download and Install [VS Code](https://code.visualstudio.com/)
2. Download and Install [MiKTeX](https://miktex.org/download)
    - Copying Conditions:
        1. Check the `I Accept` Box
        2. Click `Next`
    - Installation Scope:
        1. Select the Installation Scope - I used the `for anyone` option
        2. Click `Next`
    - Installation Directory:
        1. I left this as default but it can be install anywhere. The only requirement is that MiKTeX is on the system path.
        2. Click `Next`
    - Settings:
        1. Preferred Paper Size: `Letter`
        2. Install missing packages on the fly `Yes`
        3. Click `Next`
    - Click `Start`
    - When it is done installing, click `Next
    - Update Check:
        1. Select `Check for udpateds now`
        2. Click `Next`
    - Click `Close`
3. Update `MiKTeX`
    - Windows will provide a notification that there are updates available for `MiKTeX`
        - Click on this notification or launch the `MikTeX Console` from the Start Menu
    - Click on the `Updates` Tab on the Left
    - Select `Update Now` - The close will prompt you to close it once it is complete
4. Download and Install [Strawberry Perl](https://strawberryperl.com/)
    - Follow the installer prompts using the default locations
5. Check the `System Path`
    1. In the Windows Search Bar, type `Path` and Select `Edit the system environment variables`
    2. Select the `Environment Variables` Button
    3. Under the System Variables Tab, scroll down to `Path`, Select it, and click `Edit...`
    4. Verify that `MiKTeX` and `Strawberry Perl` are on the path
        - Add `MiKTeX` to the Path
            1. Click `Browse`
            2. Browse to the location of `MiKTeX` - Default: `C:\Program Files\MiKTeX\miktex\bin\x64\`
        - Add `Strawberry Perl` to the Path - Default Locations:
            - `C:\Strawberry\c\bin`
            - `C:\Strawberry\perl\site\bin`
            - `C:\Strawberry\perl\bin`
6. Reboot your Computer
7. Launch `VS Code` and Install the following Extensions
    1. [Latex Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
    2. [Latex Utilities](https://marketplace.visualstudio.com/items?itemName=tecosaur.latex-utilities)

## Test the Installation with the Included Latex Files
1. Open `hello_world.tex`
2. Generate the PDF by using `CTRL+ALT+B` or `CTRL+S`: Note this will take a couple seconds depending on computer
3. Open the generated PDF

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
