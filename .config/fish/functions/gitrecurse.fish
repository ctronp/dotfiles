function gitrecurse --wraps='git submodule update --init --recursive' --description 'alias gitrecurse git submodule update --init --recursive'
  git submodule update --init --recursive $argv; 
end
