# ZSH

## Instalacion
## borrar esta linea

1. bajar zsh: ``` sudo apt install zsh```
2. configurar terminal: ```chsh```
3. seleccional: ```/usr/bin/zsh```
4. instalar zimfw desde su [pagina oficial](https://github.com/zimfw/zimfw)
5. modificar ```.zimrc```:
    1. remover asciiship
    2. anadir  [spaceship](https://github.com/spaceship-prompt/spaceship-prompt)
    3. anadir ```zmodule exa```
    4. anadir ```zmodule fzf```
6. ejecutar ```zimfw install```
7. ejecutar ```zimfw uninstall```
8. (opcional) ejecutar ```zimfw update```
9. instalar ripgrep: ```sudo apt install ripgrep```
10. instalar exa desde su [pagina oficial](https://github.com/ogham/exa)

## aliases

```.zshrc```
```
alias please="sudo"
alias sins="sudo apt install"
alias suns="sudo apt remove"
alias supt="sudo apt update"
alias gita="git add"
alias gitm="git commit -m"
alias gitp="git push"
alias gitpp="git pull"
alias gitd="git diff"
alias gits="git status"
alias untar="tar -zxvf"
alias untarb="tar -jxvf"
alias open="zdg-open"
```
