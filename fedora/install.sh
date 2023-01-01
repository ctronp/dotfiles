#!/bin/bash

set -xe

cd

if [[ ! -d $HOME/go ]]; then
	mkdir go
fi
if [[ ! -d $HOME/jdk ]]; then
	mkdir jdk
fi

# minimal install packages
sudo dnf install -y git clang clang-tools-extra ninja-build lld binutils-gold gcc binutils python-devel glib2-static shfmt micro cmake openssl openssl-devel libEGL-devel wl-clipboard autocorr-es aspell-es ranger

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

if [[ ! -d alacritty ]]; then
	git clone --depth 1 --single-branch -b master git@github.com:ctronp/alacritty.git &
fi

if [[ ! -d flutter ]]; then
	git clone --depth 1 --single-branch -b stable git@github.com:flutter/flutter.git &
fi

if [[ ! -d nerd-fonts ]]; then
	git clone --depth 1 --single-branch -b master git@github.com:ryanoasis/nerd-fonts.git &
fi

wait

echo "done"
