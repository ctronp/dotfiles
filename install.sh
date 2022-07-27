#!/bin/bash

set -xe

# minimal install packages
sudo dnf install git clang lld binutils-gold gcc xclip

# replace gcc with clang and ld with lld
sudo rm -rf /usr/bin/cc /usr/bin/c++ /usr/bin/ld

sudo update-alternatives --install /usr/bin/cc cc /usr/bin/gcc 100
sudo update-alternatives --install /usr/bin/cc cc /usr/bin/clang 50

sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++ 100
sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++ 50

sudo update-alternatives --install /usr/bin/ld ld /usr/bin/ld/ld.gold 100
sudo update-alternatives --install /usr/bin/ld ld /usr/bin/ld/ld.lld 50

# Select default compiler
sudo update-alternatives --config cc
sudo update-alternatives --config c++
sudo update-alternatives --config ld
