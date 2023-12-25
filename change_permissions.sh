#!/bin/bash

# Change directory to the deployed location
cd /todo-app || exit

# Adjust permissions for directories
find . -type d -exec chmod 755 {} \;

# Adjust permissions for files
find . -type f -exec chmod 644 {} \;

# Add execute permission to scripts if needed
find . -type f -name "*.sh" -exec chmod +x {} \;

# Add any additional permission adjustments as needed

# Print a message indicating the script has run
echo "Permissions changed successfully."
