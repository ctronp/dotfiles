#!/bin/bash

cd ~/godot

printf "
module_mono_enable = \"yes\"
deprecated = \"no\"
" > custom.py

scons platform=linuxbsd target=release_debug bits=64
