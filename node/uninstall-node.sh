#!/bin/bash

# Install Node.js
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Volta
curl https://get.volta.sh | bash -s -- --skip-setup

# Set VOLTA_HOME variable if not already set
if [[ -z "${VOLTA_HOME}" ]]; then
  echo 'export VOLTA_HOME="$HOME/.volta"' >> ~/.bashrc
  echo 'export PATH="$VOLTA_HOME/bin:$PATH"' >> ~/.bashrc
fi

# Replace the specified path with VOLTA_HOME/bin in PATH variable
export PATH="${PATH/'$VOLTA_HOME/bin'/}"
# Add Volta to the current shell session
source ~/.bashrc

# Verify installations
node -v
npm -v
volta --version
