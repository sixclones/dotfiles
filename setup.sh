#!/bin/bash

# Symbolic links for vim & zsh
sh ./scripts/create-symlinks.sh

# Aliases for neovim
alias v=vim

if command -v nvim &> /dev/null; then
  alias vim=nvim
fi
