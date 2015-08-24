#!/usr/bin/env bash

DIR=$HOME/Dropbox/dotfiles

DOTFILES=$DIR/dots
ZSHFILES=$DIR/zsh

ZSHDIR=$HOME

for file in `ls -A $DOTFILES`; do
  rm -rf $HOME/$file
  ln -s $DOTFILES/$file $HOME/$file
done

for file in `ls -A $ZSHFILES`; do
  rm -rf $ZSHDIR/$file
  ln -s $ZSHFILES/$file $ZSHDIR/$file
done
