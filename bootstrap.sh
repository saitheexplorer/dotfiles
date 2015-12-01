#!/usr/bin/env bash
git clone --recursive https://github.com/sorin-ionescu/prezto.git $HOME/.zprezto

DIR=$HOME/Dropbox/dotfiles

DOTFILES=$DIR/dots
ZSHFILES=$DIR/zsh

ZSHDIR=$HOME

for file in `ls -A $DOTFILES`; do
  rm -rf $HOME/.$file
  echo "Linking .$file..."
  ln -s $DOTFILES/$file $HOME/.$file
done

$HOME/.osx
$HOME/.brew
$HOME/.cask
$HOME/.npm
