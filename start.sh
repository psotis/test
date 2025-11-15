#!/bin/bash
set -e

REPO_URL="https://github.com/psotis/test.git"

# If this is the first run → clone repo into /app
if [ ! -d "/app/.git" ]; then
    echo "Cloning repo for the first time..."
    git clone $REPO_URL /app
else
    echo "Repo exists. Pulling latest changes..."
    cd /app
    git pull
fi

# Move into project folder
cd /app

# Install dependencies
echo "Installing dependencies..."
npm install --production

# Start the app
echo "Starting application..."
npm start
