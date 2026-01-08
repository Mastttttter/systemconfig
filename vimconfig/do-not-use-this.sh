#!/bin/bash
srcdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd )"
srcvim="$srcdir/.vimrc"
srcidea="$srcdir/.ideavimrc"

if [ ! -f "$srcvim" ] ; then 
    echo "warning: "$srcvim" not find"
    exit 1
fi
if [ ! -f "$srcidea" ] ; then 
    echo "warning: "$srcidea" not find"
    exit 1
fi

echo "from $srcvim $srcidea to /mnt/......."
cp -rf "$srcvim" /mnt/c/Users/Master/.vimrc
cp -rf "$srcidea" /mnt/c/Users/Master/.ideavimrc