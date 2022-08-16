#!/bin/bash

set -xe

cd

printf "if you require stable, prefer downloading from steam\n\n"

if [[ ! -f $HOME/godot ]]
then 
    git clone --single-branch -b master git@github.com:godotengine/godot.git godot
fi

cd ~/godot

printf "
module_mono_enable = \"yes\"
deprecated = \"no\"
" > custom.py


git pull
scons platform=linuxbsd target=release_debug module_mono_enabled=yes mono_glue=no bits=64
bin/godot.linuxbsd.opt.tools.64.mono --generate-mono-glue modules/mono/glue
scons platform=linuxbsd target=release_debug module_mono_enabled=yes bits=64
cp -f misc/dist/linux/org.godotengine.Godot.desktop ~/.local/share/applications/

sed -i "s|^Exec=godot|Exec=$HOME/godot/bin/godot.linuxbsd.opt.tools.64.mono|1" ~/.local/share/applications/org.godotengine.Godot.desktop
sed -i "s|^Icon=godot|Icon=$HOME/godot/icon.svg|1" ~/.local/share/applications/org.godotengine.Godot.desktop


if command -v fish
then
  cp -f ~/godot/misc/dist/shell/godot.fish ~/.config/fish/completions 
fi
