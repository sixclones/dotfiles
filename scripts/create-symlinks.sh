#!/bin/bash

ln -sf ~/.dotfiles/.vimrc ~
ln -sf ~/.dotfiles/.zshrc ~

ln -sf ~/.dotfiles/.vim ~
ln -sf ~/.dotfiles/.vim ~/.config/

mv ~/.config/.vim ~/.config/nvim

echo "Symlinks created"
