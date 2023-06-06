#!/bin/bash

# Install Node.js
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Volta
curl https://get.volta.sh | bash

# Add Volta to the current shell session
source ~/.volta/bin/volta

# Verify installations
node -v
npm -v
volta --version
