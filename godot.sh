#!/bin/bash

cd ~/godot

set -xe

printf "
module_mono_enable = \"yes\"
deprecated = \"no\"
" > custom.py


git pull
scons platform=linuxbsd target=release_debug module_mono_enabled=yes mono_glue=no bits=64
bin/godot.linuxbsd.opt.tools.64.mono --generate-mono-glue modules/mono/glue
scons platform=linuxbsd target=release_debug module_mono_enabled=yes bits=64
