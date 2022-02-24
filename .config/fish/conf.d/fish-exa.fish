# Check if exa is installed
if type -q exa
    alias ls "exa --group-directories-first"
    alias ll "ls -l --git"
    alias l "ll -a"
end
