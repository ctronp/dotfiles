#!/bin/bash

# minimal install packages
sudo dnf install git git-lfs clang clang lld

# replace gcc with clang and ld with lld
sudo update-alternatives --install /usr/bin/cc cc /usr/bin/clang 100
sudo update-alternatives --install /usr/bin/cc cc /usr/bin/gcc 50

sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++ 100
sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++ 50

sudo ln -sf /usr/bin/ld.lld /usr/bin/ld
