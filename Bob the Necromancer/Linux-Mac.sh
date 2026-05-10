#!/usr/bin/env bash

# On MacOS: 
# 1. Drag the whole folder on the Terminal app
# 2. Type chmod +x Linux-Mac.sh (first time only)
# 3. Right click on this file, → Get Info → Open With → Terminal. 
#     You may also click "Change All" if you want all sh. files to be executed instead of opening like .txt files. 
#     IF your system won't open the Linux-Mac.sh as an executable and you see this window again, follow step 4.
# 4. Type xattr -d com.apple.quarantine Linux-Mac.sh
# Bonus step: If you want the extra Terminal that pops up, you need to go to Terminal's settings. 
#     Terminal → Settings → Profiles → Shell tab → set "When the shell exits" to "Close the window"

# On Linux:
# Right click inside this folder, → Open in Terminal
# Type chmod +x Linux-Mac.sh (first time only)
# Then, on the Terminal type "./Linux-Mac.sh" to open the game.
# SOME systems may allow you to open it by just double clicking by doing this:
#     for GNOME (Ubuntu default): Open Files app → top-right menu → Preferences → Behavior → 
#         set "Executable Text Files" to "Run them" or "Ask what to do"
#     for KDE: Right click → Properties → Permissions → check "Is executable"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

if ! command -v java &> /dev/null; then
    echo "Java is not installed. Please install Java 17+ from https://adoptium.net"
    exit 1
fi

java -jar "$SCRIPT_DIR/GameLauncher.jar" &
