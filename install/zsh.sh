#!/bin/bash

echo "Configuring zsh..."

if [[ -e "$HOME/.zsh/" ]]; then
  echo "$HOME/.zsh/ already exists. Remove it to force reinstallation."
  exit 1
fi

here=$(pwd)

mkdir -p "$HOME/.zsh"
cd "$HOME/.zsh"
echo "Installing git-flow-completion"
git clone https://github.com/bobthecow/git-flow-completion.git

cd "${here}"

echo "Setting user login shell to zsh"
chsh -s $(which zsh) $(whoami)
