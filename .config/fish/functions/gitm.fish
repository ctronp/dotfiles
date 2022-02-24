function gitm --wraps='git commit -m' --description 'alias gitm git commit -m'
  git commit -m $argv; 
end
