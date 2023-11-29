#!/usr/bin/env sh

if ! command -v brew >/dev/null; then
    echo "brew not found; skipping..."
    return
fi

if ! command -v git >/dev/null; then
    echo "installing git..."

    brew install git
    return
fi

echo "git found; skipping..."