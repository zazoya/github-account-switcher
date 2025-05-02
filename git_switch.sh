#!/bin/bash

# Step 1: Erase GitHub credentials
echo "Erasing GitHub credentials..."
echo -e "protocol=https\nhost=github.com" | git credential-manager erase
echo "GitHub credentials have been erased."

# Step 2: Set username and token for the new GitHub account
GITHUB_USERNAME=""
GITHUB_TOKEN=""
GITHUB_EMAIL=""


# Step 3: Log in using the new GitHub credentials
echo "Logging in to the new GitHub account..."
echo -e "protocol=https\nhost=github.com\nusername=$GITHUB_USERNAME\npassword=$GITHUB_TOKEN" | git credential-manager store
echo "GitHub login credentials have been stored."

# --- Step 4: Set global Git config for username and email ---
git config --global user.name "$GITHUB_USERNAME"
git config --global user.email "$GITHUB_EMAIL"
echo "Global Git username and email have been set to:"
git config --global user.name
git config --global user.email

echo "✅ Setup complete. You are now using the new GitHub account."