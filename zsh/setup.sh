#!/usr/bin/env sh

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

echo "Executing zsh: $TIMESTAMP"

if ! command -v zsh >/dev/null; then
    echo "zsh not found; skipping..."
    return
fi

if test -f ./git/zshrc && test -f ~/.zshrc; then
    echo "zsh found and configured already, skipping..."
    return
fi

echo "zsh found and not configured; configuring..."

rm -f ~/.zshrc

cp ./zsh/zshrc ~/.zshrc