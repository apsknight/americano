# Americano

A simple macOS menu bar app that controls the caffeinate command. When activated, it prevents your Mac from sleeping, dimming the display, or starting the screensaver.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Motivation

I created this project for fun and as an alternative to the Amphetamine app available on the Apple App Store. While Amphetamine offers similar functionality, I wanted to create a solution with a more neutral name that doesn't have drug-related connotations.

## Features

- Toggle caffeinate with a single click
- Menu bar icon changes to reflect the current state

## Future Plans

In future versions, I plan to stop relying on the macOS caffeinate program and rewrite my own caffeinate equivalent in Rust for fun. This will give me more control over the functionality and serve as an interesting learning experience.

## Building and Distribution

### For Developers

1. Make sure you have Xcode installed
2. Clone this repository
3. Open Terminal and navigate to the project directory
4. Make the build script executable:
   ```bash
   chmod +x build.sh
   ```
5. Run the build script:
   ```bash
   ./build.sh
   ```
6. The script will create `Americano.zip` containing the packaged app

### For Users

1. Download the latest release from the releases page
2. Extract `Americano.zip`
3. Move `Americano.app` to your Applications folder
4. Launch the app from Applications
5. The app will appear in your menu bar

## Requirements

- macOS 13.0 or later
- Xcode 13.0 or later

## Distribution Options

1. **Direct Download**: Share the zip file directly with users
2. **GitHub Releases**: Create a release on GitHub and upload the zip file
3. **Homebrew**: Create a Homebrew cask for easy installation
4. **App Store**: Package and submit to the Mac App Store (requires Apple Developer account)

## Security Note

Since this app needs to run the `caffeinate` command, users might need to grant it permission in System Preferences > Security & Privacy > Privacy > Automation.

## Running

To run the app, simply execute the built binary:

```bash
.build/release/Americano
```

To make the app start automatically at login, you can add it to your Login Items in System Preferences. 