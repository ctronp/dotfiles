fenv source ~/.profile
if status is-interactive
    starship init fish | source
end

thefuck --alias | source
