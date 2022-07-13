#!/bin/bash

set -xe

cp -f /usr/share/applications/google-chrome.desktop "$HOME"/.local/share/applications/

sed_var="s|Exec=/usr/bin/google-chrome-stable\
|Exec=/usr/bin/google-chrome-stable --force-dark-mode|"

sed -i "$sed_var" "$HOME"/.local/share/applications/google-chrome.desktop
