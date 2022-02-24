function supt --wraps='sudo dnf up && flatpak update' --description 'alias supt sudo dnf up && flatpak update'
  sudo dnf up && flatpak update $argv; 
end
