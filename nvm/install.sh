#!/usr/bin/env sh

if ! command -v brew >/dev/null; then
    echo "brew not found; skipping..."
    return
fi

# Export path
. $HOME/dotfiles/nvm/export_path

if ! command -v nvm >/dev/null; then
    echo "installing nvm..."

    brew install nvm
    return
fi

echo "nvm found; skipping..."