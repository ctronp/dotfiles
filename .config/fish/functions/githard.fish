function githard --wraps='git reset --hard' --description 'alias githard git reset --hard'
  git reset --hard $argv; 
end
