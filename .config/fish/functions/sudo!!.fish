function sudo!! --wraps='sudo (history -n 1)' --description 'alias sudo!! sudo (history -n 1)'
  sudo (history -n 1) $argv; 
end
