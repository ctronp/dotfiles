#!/bin/bash

set -xe

cd

echo "--force-dark-mode
--enable-features=WebUIDarkMode" > $HOME/.var/app/com.google.Chrome/config/chrome-flags.conf
