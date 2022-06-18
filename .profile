#!/bin/bash

. "$HOME/.cargo/env"
export PATH="$PATH:$HOME/bin"

# intel oneapi
[ -f /opt/intel/oneapi/setvars.sh ] && source /opt/intel/oneapi/setvars.sh
