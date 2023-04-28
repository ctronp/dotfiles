fenv source ~/.profile
if status is-interactive
    starship init fish | source
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/ctronp/miniconda3/bin/conda
    eval /home/ctronp/miniconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

