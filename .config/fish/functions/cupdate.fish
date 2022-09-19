function cupdate --wraps='cargo install-update -a' --description 'alias cupdate cargo install-update -a'
  cargo install-update -a -g $argv; 
end
