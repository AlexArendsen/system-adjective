#!/bin/bash

# First, install the system if necessary
./system.sh

# Link in dotfiles first so that yaourt will be properly configured
./link-dots.sh
./resources.sh

# Then link in all of the dot files and scripts
./link-scripts.sh
./link-configs.sh

# Do some application-specific config
./bar.sh
./vim.sh
./zsh.sh
./systemd.sh

# Be done
echo "Installation complete!"
