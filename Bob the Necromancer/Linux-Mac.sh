#!/usr/bin/env bash
# run.sh — Mac / Linux launcher wrapper
# Place this next to GameLauncher.jar
# Make executable: chmod +x run.sh

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

if ! command -v java &> /dev/null; then
    echo "Java is not installed. Please install Java 17+ from https://adoptium.net"
    exit 1
fi

java -jar "$SCRIPT_DIR/GameLauncher.jar" &
