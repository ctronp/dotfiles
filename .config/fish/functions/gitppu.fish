function gitpu --wraps='git fetch --depth 1' --wraps='git pull --rebase --depth 1' --description 'alias gitppu git pull --rebase --depth 1'
  git pull --rebase --depth 1 $argv; 
end
