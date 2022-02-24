function sins --wraps='sudo dnf in' --description 'alias sins sudo dnf in'
  sudo dnf in $argv; 
end
