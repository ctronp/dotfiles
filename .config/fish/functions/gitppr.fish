function gitppr --wraps='git pull --recurse-submodules' --description 'alias gitppr git pull --recurse-submodules'
  git pull --recurse-submodules $argv; 
end
