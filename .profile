#!/bin/bash

export PATH="$PATH:$HOME/bin"
if [ -f $HOME/.cargo/env ]
then
    . "$HOME/.cargo/env"
fi

# intel oneapi
if [ -f /opt/intel/oneapi/setvars.sh ];
then
    source /opt/intel/oneapi/setvars.sh
fi

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# gpg tty
export GPG_TTY=$(tty)

# Added by Toolbox App
export PATH="$PATH:/home/ctronp/.local/share/JetBrains/Toolbox/scripts"
