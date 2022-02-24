function pdstart --wraps='podman system service --time tcp::0.0.0.0::2979' --description 'alias pdstart podman system service --time tcp::0.0.0.0::2979'
  podman system service --time tcp::0.0.0.0::2979 $argv; 
end
