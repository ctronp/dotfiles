fenv source ~/.profile
if status is-interactive
    starship init fish | source
end
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
