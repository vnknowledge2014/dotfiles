#!/bin/bash

# Define the source and destination directories
SRC_DIR="./configs"
DEST_DIR="$HOME"

# List of files to copy
FILES=(".zshrc" ".zsh_aliases" ".zsh_variables" "starship.toml" ".tmux.conf")

# Copy each file
for file in "${FILES[@]}"; do
    if [ -f "$SRC_DIR/$file" ]; then
        cp "$SRC_DIR/$file" "$DEST_DIR/$file"
        echo "Copied $file to $DEST_DIR"
    else
        echo "Warning: $file not found in $SRC_DIR"
    fi
done

# Create .config directory if it doesn't exist
mkdir -p "$DEST_DIR/.config"

# Copy starship.toml to .config directory
if [ -f "$SRC_DIR/starship.toml" ]; then
    cp "$SRC_DIR/starship.toml" "$DEST_DIR/.config/starship.toml"
    echo "Copied starship.toml to $DEST_DIR/.config"
else
    echo "Warning: starship.toml not found in $SRC_DIR"
fi

echo "Configuration files copied successfully!"
