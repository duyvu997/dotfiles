#!/bin/bash

# Install NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Activate NVM in the current shell session
source ~/.nvm/nvm.sh

# Install the latest LTS version of Node.js
nvm install --lts

# Set the installed LTS version as the default
nvm alias default 'lts/*'

# Verify Node.js installation
node -v
npm -v
