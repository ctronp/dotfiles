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
    source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
    source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


    # User Configs
    . "$HOME/.funciones"
    . "$HOME/.aliases"
    . "$HOME/.flags"
    setopt autocd
    ```

9. actualizar e instalar exa, alacritty y nerdfonts.
10. ejecutar ```cupdate```
