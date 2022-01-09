#!/usr/bin/env bash

set -e
cd $( dirname "${BASH_SOURCE[0]}" )
shopt -s dotglob

###############################################################################
# import.sh | Import the saved config files
###############################################################################

git submodule update --init --recursive
git pull

cp -urv ./config/* "$HOME/.config/"
cp -urv ./home/* "$HOME/"
./keybindings.pl -i keybinds.csv

# Copy refind config
sudo test -e /boot/efi/EFI/refind
sudo mkdir -p /boot/efi/EFI/refind/themes/refind-theme-regular
sudo cp -ruv refind/*.conf /boot/efi/EFI/refind
sudo cp -ruv refind/themes/theme.conf /boot/efi/EFI/refind/themes
sudo cp -ruv \
    refind/themes/refind-theme-regular/{fonts,icons,theme.conf} \
    /boot/efi/EFI/refind/themes/refind-theme-regular
sudo chmod -R 700 /boot/efi/EFI/refind
sudo chown -R root /boot/efi/EFI/refind
sudo chgrp -R root /boot/efi/EFI/refind