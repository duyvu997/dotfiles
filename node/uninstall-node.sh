#!/bin/bash

# Uninstall Node.js
nvm uninstall --lts

# Uninstall NVM (Node Version Manager)
rm -rf ~/.nvm

# Remove NVM-related lines from the shell configuration file (e.g., ~/.bashrc)
sed -i '/nvm/d' ~/.bashrc

# Remove NVM-related lines from the shell profile file (e.g., ~/.profile)
sed -i '/nvm/d' ~/.profile

# Remove NVM-related lines from the shell configuration file (e.g., ~/.bash_profile)
sed -i '/nvm/d' ~/.bash_profile

# Refresh the shell environment
source ~/.bashrc
