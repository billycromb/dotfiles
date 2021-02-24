#!/bin/bash
# spin only

if [[ $(uname) == 'Darwin' ]]; then
  echo "Run this on spin only"
  exit 1
fi

# ln -sf ~/dotfiles/bashrc ~/.bashrc
# ln -sf ~/dotfiles/vimrc ~/.vimrc
# ln -sf ~/dotfiles/.vim ~/.vim
