#!/usr/bin/env bash
# Place this next to GameLauncher.jar
# Make executable: chmod +x run.sh (first time only)
# On mac: double click this file to open game
# On Linux: open terminal and type "./Linux-Mac.sh" to open game

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

if ! command -v java &> /dev/null; then
    echo "Java is not installed. Please install Java 17+ from https://adoptium.net"
    exit 1
fi

java -jar "$SCRIPT_DIR/GameLauncher.jar" &
