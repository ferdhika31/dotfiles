#!/usr/bin/env sh

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

echo $TIMESTAMP

if ! command -v git >/dev/null; then
    echo "git not found; skipping..."
    return
fi

CONFIG_HOME=~/

if test ~/dotfiles/git/config -ef $CONFIG_HOME; then
    echo "git found and configured already; skipping..."
    return
fi

echo "git found and not configured; configuring..."

rm -f $CONFIG_HOME.gitconfig
cp ./git/config $CONFIG_HOME.gitconfig

echo "git found and configured;"