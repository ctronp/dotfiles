function gitpu --wraps='git pull --depth 1' --description 'alias gitpu git pull --depth 1'
  git pull --depth 1 $argv; 
end
