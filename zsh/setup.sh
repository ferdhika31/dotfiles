#!/usr/bin/env sh

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

echo "Executing zsh: $TIMESTAMP"

if ! command -v zsh >/dev/null; then
    echo "zsh not found; skipping..."
    return
fi

echo "zsh found; configuring..."

rm -f ~/.zshrc

cp ./zsh/zshrc ~/.zshrc