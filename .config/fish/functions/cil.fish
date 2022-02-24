function cil --wraps='cargo install --path .' --description 'alias cil cargo install --path .'
  cargo install --path . $argv; 
end
