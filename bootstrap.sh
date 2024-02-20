#!/usr/bin/env bash

DIR=$HOME/dotfiles
DOTFILES=$DIR/dots

for file in "$DOTFILES"/*; do
  echo "Linking .$file..."
  ln -s "$file" "$HOME/.$(basename $file)"
done
