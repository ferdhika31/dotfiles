#!/usr/bin/env sh

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

echo "Executing git: $TIMESTAMP"

if ! command -v git >/dev/null; then
    echo "git not found; skipping..."
    return
fi

if test -f ./git/config && test -f ~/.gitconfig; then
    echo "git found and configured already; skipping..."
    return
fi

echo "git found and not configured; configuring..."

rm -f ~/.gitconfig
cp ./git/config ~/.gitconfig

echo "git found and configured;"