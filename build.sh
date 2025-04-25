#!/bin/bash

# Build the app
swift build -c release

# Create app bundle structure
mkdir -p "Americano.app/Contents/MacOS"
mkdir -p "Americano.app/Contents/Resources"

# Copy the binary
cp .build/release/Americano "Americano.app/Contents/MacOS/"

# Copy Info.plist
cp Info.plist "Americano.app/Contents/"

# Create a zip file for distribution
zip -r "Americano.zip" "Americano.app"

echo "Build complete! App is available as Americano.zip" 