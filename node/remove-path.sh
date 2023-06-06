#!/bin/bash

path_to_remove="$HOME/.volta/bin"

# Remove the specific path from PATH variable in ~/.bashrc
sed -i "s|:$path_to_remove||g" ~/.bashrc

# Reload the ~/.bashrc file
source ~/.bashrc

# Output the updated PATH variable
echo "Updated PATH:"
echo "$PATH"
