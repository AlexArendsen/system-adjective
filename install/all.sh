#!/bin/bash

# First, install the system if necessary
./system.sh

# Then link in all of the dot files and scripts
./link-dots.sh
./link-scripts.sh
./link-configs.sh

# Install resource software
./resources.sh

# Do some application-specific config
./bar.sh
./vim.sh
./zsh.sh
./systemd.sh

# Be done
archey3
echo "Installation complete!"
