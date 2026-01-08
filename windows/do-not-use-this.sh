#!/bin/bash

tardir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
srcglz="/mnt/c/Users/Master/.glzr"
srcyasb="/mnt/c/Users/Master/.config/yasb"

if [ ! -d "$srcglz" ] ; then 
    echo "warning: "$srcglz" not find"
    exit 1
fi
if [ ! -d "$srcyasb" ] ; then 
    echo "warning: "$srcyasb" not find"
    exit 1
fi

echo "from "$srcglz" "$srcyasb" to "$tardir" "

dir_name="$(basename "$srcglz")"
dest="$tardir/$dir_name"
cp -rf  "$srcglz" "$dest"


dir_name="$(basename "$srcyasb")"
dest="$tardir/$dir_name"
cp -rf "$srcyasb" "$dest"