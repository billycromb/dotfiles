#!/bin/bash
# spin only

if [[ $(uname) == 'Darwin' ]]; then
  echo "Run this on spin only"
  exit 1
fi

ln -sf ~/dotfiles/bashrc ~/.bashrc
ln -sf ~/dotfiles/vimrc ~/.vimrc
ln -sf ~/dotfiles/.vim ~/.vim

# Install dein and vim plugins
~/dotfiles/dein_install.sh ~/dein_plugins
vim -c 'call dein#install()' +qall

cat zshrc >> ~/.zshrc

if [[ "$HOST" == 'spin' ]]; then
  sudo apt-get install ripgrep
end
