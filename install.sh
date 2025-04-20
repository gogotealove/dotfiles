#!/bin/sh

DOT_DIR="$HOME/dotfiles"

ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.config ~/.config

ln -sf $DOT_DIR/.zshrc ~/.zshrc

. ~/.zshrc
