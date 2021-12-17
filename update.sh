#!/usr/bin/env bash

set -e
cd $( dirname "${BASH_SOURCE[0]}" )

###############################################################################
# update.sh | Update the saved config files
###############################################################################

# Copy .config files
pushd config
while IFS= read -r line; do
    cp -uv "$HOME/.config/$line" "$line"
done <<< `find . -type f`;
popd

# Copy home files
pushd home
while IFS= read -r line; do
    cp -uv "$HOME/$line" "$line"
done <<< `find . -type f`;
popd

# Copy gnome-control-center files
pushd gnome-control-center
while IFS= read -r line; do
    cp -uv "/usr/share/gnome-control-center/$line" "$line"
done <<< `find . -type f`;
popd