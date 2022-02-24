function gomodu --wraps='go get -u && go mod tidy' --description 'alias gomodu go get -u && go mod tidy'
  go get -u && go mod tidy $argv; 
end
