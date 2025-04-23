#!/bin/bash

# Configuration
APP_NAME="devops-midterm"
BASE_DIR="/opt"
CURRENT_LINK="$BASE_DIR/$APP_NAME-current"
BLUE_DIR="$BASE_DIR/$APP_NAME-blue"
GREEN_DIR="$BASE_DIR/$APP_NAME-green"

# Function to check if a directory exists
check_dir() {
    if [ ! -d "$1" ]; then
        echo "Error: Directory $1 does not exist"
        exit 1
    fi
}

# Function to create symlink
create_symlink() {
    ln -sfn "$1" "$CURRENT_LINK"
    echo "Created symlink: $CURRENT_LINK -> $1"
}

# Determine current and target directories
if [ -L "$CURRENT_LINK" ]; then
    CURRENT_TARGET=$(readlink "$CURRENT_LINK")
    if [ "$CURRENT_TARGET" = "$BLUE_DIR" ]; then
        TARGET_DIR="$GREEN_DIR"
    else
        TARGET_DIR="$BLUE_DIR"
    fi
else
    TARGET_DIR="$BLUE_DIR"
fi

# Check if target directory exists
check_dir "$TARGET_DIR"

# Create symlink to target directory
create_symlink "$TARGET_DIR"

# Restart the application
echo "Restarting application..."
systemctl restart $APP_NAME || echo "Warning: Could not restart service"

echo "Deployment completed successfully!" 