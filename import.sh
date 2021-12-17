#!/usr/bin/env bash

set -e
cd $( dirname "${BASH_SOURCE[0]}" )

###############################################################################
# import.sh | Import the saved config files
###############################################################################

git pull
cp -urv ./config/* "$HOME/.config/"
cp -urv ./home/.zshrc "$HOME/"
./keybindings.pl -i keybinds.csv