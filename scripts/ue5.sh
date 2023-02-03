#!/bin/bash

set -xe

cd

printf "prefer downloading from https://www.unrealengine.com/en-US/linux if possible\n"

if [[ ! -f $HOME/ue5 ]]
then 
    git clone --depth 1 --single-branch -b release git@github.com:EpicGames/UnrealEngine.git ue5
fi

cd ~/ue5

git pull

./Setup.sh
./GenerateProjectFiles.sh
make
