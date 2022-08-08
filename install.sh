#!/bin/bash

set -xe

cd

if [[ ! -d $HOME/go ]]; then
    mkdir go
fi

# minimal install packages
sudo dnf install git clang lld binutils-gold gcc xclip binutils python-devel

# replace gcc with clang and ld with lld
sudo rm -rf /usr/bin/cc /usr/bin/c++ /usr/bin/ld

sudo update-alternatives --remove-all cc || :
sudo update-alternatives --install /usr/bin/cc cc /usr/bin/gcc 100
sudo update-alternatives --install /usr/bin/cc cc /usr/bin/clang 50

sudo update-alternatives --remove-all c++ || :
sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++ 100
sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++ 50

sudo update-alternatives --remove-all ld || :
sudo update-alternatives --install /usr/bin/ld ld /usr/bin/ld.gold 100
sudo update-alternatives --install /usr/bin/ld ld /usr/bin/ld.lld 50
sudo update-alternatives --install /usr/bin/ld ld /usr/bin/ld.bfd 25

# Select default compiler
sudo update-alternatives --config cc
sudo update-alternatives --config c++
sudo update-alternatives --config ld


# clone repos

printf "\n\ndownloading repos\n\n"

cd $HOME/github

git clone --single-branch -b master git@github.com:ctronp/alacritty.git &
git clone --single-branch -b stable git@github.com:flutter/flutter.git &
git clone --single-branch -b master git@github.com:ryanoasis/nerd-fonts.git &

wait

echo done
