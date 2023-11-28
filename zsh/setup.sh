#!/usr/bin/env sh

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

echo "Executing zsh: $TIMESTAMP"

if ! command -v zsh >/dev/null; then
    echo "zsh not found; skipping..."
    return
fi

if test ~/dotfiles/zsh/zshrc -ef ~/.zshrs; then
    echo "zsh found and configured already, skipping..."
    return
fi

echo "zsh found and not configured; configuring..."

rm -f ~/.zshrc
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc