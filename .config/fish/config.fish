# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /usr/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

if status is-interactive
    starship init fish | source
end
