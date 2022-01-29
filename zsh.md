# ZSH

## Instalacion

1. bajar zsh: ```sins zsh```
2. configurar terminal: ```chsh```
3. seleccional: ```/usr/bin/zsh```
4. instalar [rustup](https://rustup.rs/)
5. ejecutar ```cargo install cargo-update```
6. ejecutar ```cargo install starship```
7. ejecutar ```sins zsh-autosuggestions zsh-syntax-highlighting```
8. anadir a ```.zshrc``` el siguiente codigo:

    ```zsh
    eval "$(starship init zsh)"
    ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion)
    source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
    source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


    # User Configs
    . "$HOME/.funciones"
    . "$HOME/.aliases"
    . "$HOME/.flags"
    setopt autocd

    bindkey "^[[1;5C" forward-word
    bindkey "^[[1;5D" backward-word


    HISTFILE=~/.histfile
    HISTSIZE=2000
    SAVEHIST=2000
    setopt appendhistory
    ```

9. actualizar e instalar exa, alacritty y nerdfonts.
10. ejecutar ```cupdate```
