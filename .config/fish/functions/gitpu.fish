function gitpu --wraps='git fetch --depth 1' --wraps='git pull --rebase --depth 1' --description 'alias gitpu git pull --rebase --depth 1'
  git pull --rebase --depth 1 $argv; 
end
