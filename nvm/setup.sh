#!/usr/bin/env sh

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

echo "Executing nvm: $TIMESTAMP"

if test -e ~/.nvm; then
    echo "nvm found and configured already;"

    # Setup path nvm
    . $HOME/dotfiles/nvm/export_path

    echo "installing version 16;"
    nvm install 16
    echo "installing version 18;"
    nvm install 18

    echo "nvm done; skipping..."
    return
fi

if [ -d "$HOME/.nvm" ]; then
    echo "nvm folder not found; creating..."

    mkdir ~/.nvm

    echo "nvm folder created;"
    return
fi

echo "nvm found and configured;"