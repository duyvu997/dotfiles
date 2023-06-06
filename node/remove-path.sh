#!/bin/bash

path_to_remove="/home/ubuntu/.volta/bin"

# Split the PATH variable into an array using the ':' delimiter
IFS=':' read -ra path_array <<< "$PATH"

# Create a new array to store the updated paths
updated_path_array=()

# Iterate over the path_array and exclude the path to be removed
for path in "${path_array[@]}"; do
    if [[ "$path" != "$path_to_remove" ]]; then
        updated_path_array+=("$path")
    fi
done

# Join the updated_path_array elements with ':' delimiter to form the updated PATH
updated_path=$(IFS=':'; echo "${updated_path_array[*]}")

# Update the PATH variable in ~/.bashrc
sed -i 's|^export PATH=.*|export PATH='"$updated_path"'|' ~/.bashrc

# Reload the ~/.bashrc file
source ~/.bashrc

# Output the updated PATH variable
echo "Updated PATH:"
echo "$PATH"
