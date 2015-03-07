#!/usr/bin/env bash

DIR=$HOME/Dropbox/dotfiles

DOTFILES=$DIR/dots
ZSHFILES=$DIR/zsh
FISHFILES=$DIR/fish

OHMYFISH=$HOME/.oh-my-fish
OHMYZSH=$HOME/.oh-my-zsh

FISHDIR=$HOME/.config/fish
ZSHDIR=$HOME

# remove the old directories
rm -rf {$OHMYFISH,$OHMYZSH}

# clone to .oh-my-zsh and .oh-my-fish
git clone https://github.com/bpinto/oh-my-fish $OHMYFISH --quiet
git clone https://github.com/robbyrussell/oh-my-zsh $OHMYZSH --quiet

for file in `ls -A $DOTFILES`; do
  rm -rf $HOME/$file
  ln -s $DOTFILES/$file $HOME/$file
done

for file in `ls -A $FISHFILES`; do
  rm -rf $FISHDIR/$file
  ln -s $FISHFILES/$file $FISHDIR/$file
done

for file in `ls -A $ZSHFILES`; do
  rm -rf $ZSHDIR/$file
  ln -s $ZSHFILES/$file $ZSHDIR/$file
done
