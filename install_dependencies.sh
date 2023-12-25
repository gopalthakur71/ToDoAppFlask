#!/bin/bash

# Change directory to the deployed location
cd /todo-app || exit

# Activate virtual environment if you're using one
# Example: source venv/bin/activate

# Install dependencies using pip
pip install -r requirements.txt

# Add any additional commands needed for dependency installation

# Print a message indicating the script has run
echo "Dependencies installed successfully."
