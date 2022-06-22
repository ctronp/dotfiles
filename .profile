#!/bin/bash

export PATH="$PATH:$HOME/bin"
. "$HOME/.cargo/env"

# intel oneapi
if [ -f /opt/intel/oneapi/setvars.sh ];
then
    source /opt/intel/oneapi/setvars.sh
fi

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
