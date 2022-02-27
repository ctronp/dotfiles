function pdstart --wraps='podman system service --time=0 tcp::0.0.0.0::2979' --wraps='podman system service --time=0 tcp:0.0.0.0:2979' --description 'alias pdstart podman system service --time=0 tcp:0.0.0.0:2979'
  podman system service --time=0 tcp:0.0.0.0:2979 $argv; 
end
