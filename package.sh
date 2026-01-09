#!/bin/bash

# Package script for creating the Alfred Chord Lookup workflow file
# Usage: ./package.sh

# Get the workflow directory
WORKFLOW_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$WORKFLOW_DIR"

# Set the output filename
OUTPUT_FILE="alfred-musicians-toolkit.alfredworkflow"

# Remove existing workflow file if it exists
if [ -e "$OUTPUT_FILE" ]; then
    echo "Removing existing workflow file..."
    rm -f "$OUTPUT_FILE"
fi

# Make the chord lookup script executable
echo "Making chord lookup script executable..."
chmod +x chord-lookup.js

# Create the zip file
echo "Creating Alfred workflow package..."
zip -r "$OUTPUT_FILE" \
    info.plist \
    icon.png \
    chord-lookup.js \
    node_modules/ \
    README.md

# Check if the package was created successfully
if [ $? -eq 0 ]; then
    echo "Alfred workflow package created successfully: $OUTPUT_FILE"
    echo "You can now import this file into Alfred."
else
    echo "Error creating the workflow package."
    exit 1
fi

echo "Done!"