#!/usr/bin/env sh

if ! command -v brew >/dev/null; then
    echo "brew not found; skipping..."
    return
fi

if ! command -v redis-cli >/dev/null; then
    echo "installing redis-cli..."

    brew install redis
    return
fi

echo "redis found; skipping..."