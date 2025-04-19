#!/bin/sh

DOT_DIR="$HOME/dotfiles"

git clone https://github.com/gogotealove/dotfiles ${DOT_DIR}

ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.config ~/.config

ln -sf $DOT_DIR/.zshrc ~/.zshrc
