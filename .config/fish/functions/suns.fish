function suns --wraps='sudo dnf un' --wraps='sudo dnf rm' --description 'alias suns sudo dnf rm'
  sudo dnf rm $argv; 
end
