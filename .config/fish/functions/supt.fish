function supt --wraps='sudo dnf up --refresh && flatpak update && rustup update && cupdate' --description 'alias supt sudo dnf up --refresh && flatpak update && rustup update && cupdate'
  sudo dnf up --refresh && flatpak update && rustup update && cupdate $argv; 
end
