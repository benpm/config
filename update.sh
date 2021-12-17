#!/usr/bin/env bash

set -e
echo $BASH_SOURCE

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
pushd 
while IFS= read -r line; do
    cp -uv "$HOME/$line" "$line"
done <<< `find . -type f`;
popd