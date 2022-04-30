function gitr --wraps='git reset --hard HEAD' --description 'alias gitr git reset --hard HEAD'
  git reset --hard HEAD $argv; 
end
