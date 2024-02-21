#!/usr/bin/env bash

DIR=$HOME/dotfiles
DOTFILES=$DIR/dots

for file in "$DOTFILES"/*; do
  filename=$(basename "$file")        # Extract the basename of the file

  rm -f "$HOME/.$filename"            # Remove the existing file or symlink in the home directory, if it exists

  echo "Linking $HOME/.$filename..."
  ln -s "$file" "$HOME/.$filename"    # Create a new symbolic link
done
