#!/bin/bash

# Remove Node.js
sudo apt-get remove -y nodejs

# Remove Volta
curl https://get.volta.sh | bash -- --uninstall -y

# Remove Volta environment variables
sed -i '/^# Added by Volta$/d' ~/.bashrc
sed -i '/^export VOLTA_HOME/d' ~/.bashrc
sed -i '/^export PATH=\$VOLTA_HOME\/bin:\$PATH$/d' ~/.bashrc

# Remove Volta from the current shell session
unset VOLTA_HOME
source ~/.bashrc

echo "Node.js and Volta have been uninstalled."
