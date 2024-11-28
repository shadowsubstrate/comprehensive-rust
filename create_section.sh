#!/bin/bash

# Check if a section name is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <section-name>"
    exit 1
fi

# Get the section name from the first argument
SECTION_NAME=$1

# Ensure the script is run from the workspace root
if [ ! -f Cargo.toml ] || ! grep -q "[workspace]" Cargo.toml; then
    echo "Error: This script must be run from the root of a Rust workspace."
    exit 1
fi

# Create the sections directory if it doesn't exist
if [ ! -d "sections" ]; then
    mkdir sections
    echo "Created sections/ directory"
fi

# Check if the section already exists
if [ -d "sections/$SECTION_NAME" ]; then
    echo "Error: Section $SECTION_NAME already exists."
    exit 1
fi

# Create the new binary crate
cargo new $SECTION_NAME --bin
mv $SECTION_NAME sections/

# Add a notes.md file
touch sections/$SECTION_NAME/notes.md
echo "# Notes for $SECTION_NAME" > sections/$SECTION_NAME/notes.md

# Print success message
echo "Created new section: $SECTION_NAME"
echo "- Rust binary at sections/$SECTION_NAME"
echo "- Notes file at sections/$SECTION_NAME/notes.md"