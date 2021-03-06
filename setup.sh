#!/bin/bash
# spin only

if [[ $(uname) == 'Darwin' ]]; then
  echo "Run this on spin only"
  exit 1
fi

ln -sf ~/dotfiles/vimrc ~/.vimrc
ln -sf ~/dotfiles/.vim ~/.vim
ln -sf ~/dotfiles/inputrc ~/.inputrc

# Install dein and vim plugins
~/dotfiles/dein_install.sh ~/dein_plugins
vim -c "try | call dein#install() | finally | qall! | endtry" \
	-N -u ~/.vimrc -U NONE -i NONE -V1 -e -s

cat zshrc >> ~/.zshrc

if [[ "$USER" == 'spin' ]]; then
  sudo apt-get install ripgrep
fi
