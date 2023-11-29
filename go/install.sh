#!/usr/bin/env sh

if ! command -v brew >/dev/null; then
    echo "brew not found; skipping..."
    return
fi

if ! command -v go >/dev/null; then
    echo "installing go..."

    brew install go
    return
fi

echo "go found; skipping..."