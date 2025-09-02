#!/bin/bash
# log-archive.sh - A simple tool to archive logs
# Usage: ./log-archive.sh <log-directory>

# Checking if the log folder argument and Exit if no argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <log-directory>"
    exit 1
fi

LOG_DIR="$1"
ARCHIVE_DIR="./archives"

# Check if the log directory exists
if [ ! -d "$LOG_DIR" ]; then
    echo "Error: Directory $LOG_DIR does not exist."
    exit 1
fi

# Create archive directory if it doesn't exist
mkdir -p "$ARCHIVE_DIR"

# Create timestamp for archive filename
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_FILE="logs_archive_${TIMESTAMP}.tar.gz"

# Compress logs
tar -czf "$ARCHIVE_DIR/$ARCHIVE_FILE" -C "$LOG_DIR" .

# Log archive details
echo "[$(date +"%Y-%m-%d %H:%M:%S")] Archived $LOG_DIR to $ARCHIVE_DIR/$ARCHIVE_FILE" >> archive.log

# Success message
echo "Logs from $LOG_DIR archived successfully to $ARCHIVE_DIR/$ARCHIVE_FILE"
echo "Details logged in archive.log"
