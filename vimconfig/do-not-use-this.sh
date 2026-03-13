#!/bin/bash
srcdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
srcvim="$srcdir/.vimrc"
srcidea="$srcdir/.ideavimrc"

if [ ! -f "$srcvim" ]; then
  echo "warning: "$srcvim" not find"
  exit 1
fi
if [ ! -f "$srcidea" ]; then
  echo "warning: "$srcidea" not find"
  exit 1
fi

echo "from $srcvim $srcidea to /mnt/......."
cp -a "$srcvim" /mnt/c/Users/Master/.vimrc
cp -a "$srcidea" /mnt/c/Users/Master/.ideavimrc

