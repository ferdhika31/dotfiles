#!/usr/bin/env sh

# Note: install brew first!!

for app in ./*; do
    if test -d $app && test -f $app/install.sh; then
        . $app/install.sh
    fi
done