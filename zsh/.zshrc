source $HOME/Dropbox/dotfiles/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle atom
antigen bundle battery
antigen bundle brew
antigen bundle brew-cask
antigen bundle command-not-found
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle sublime
antigen bundle z

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle history-substring-search

# Load the theme.
antigen theme robbyrussell

# Tell antigen that you're done.
antigen apply

alias s='subl .'
