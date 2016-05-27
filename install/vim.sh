#!/bin/bash

echo "Installing Vundle..."
if [[ -e "$HOME/.vim/bundle/Vundle.vim" ]]; then
  echo "Vundle appears to already be installed. Remove $HOME/.vim/bundle/Vundle.vim to force reinstallation"
  exit 1
fi

if [[ ! -e "$HOME/.vimrc" ]]; then
  echo "$HOME/.vimrc does not exist, please create it first before installing."
  exit 1
fi

here="$(pwd)"

mkdir -p "$HOME/.vim/bundle"
cd "$HOME/.vim/bundle"
git clone https://github.com/VundleVim/Vundle.vim.git
vim +PluginInstall +qall

cd "${here}"
