function gita --wraps='git add .' --wraps='git add' --description 'alias gita git add'
  git add $argv; 
end
