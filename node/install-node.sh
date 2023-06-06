#!/bin/bash

# Install Node.js
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Volta
curl https://get.volta.sh | bash -s -- --skip-setup

# Set VOLTA_HOME variable
echo 'export VOLTA_HOME="$HOME/.volta"' >> ~/.bashrc

# Add VOLTA_HOME/bin to the PATH variable
echo 'export PATH="$VOLTA_HOME/bin:$PATH"' >> ~/.bashrc

# Add Volta to the current shell session
source ~/.bashrc

# Verify installations
node -v
npm -v
volta --version
