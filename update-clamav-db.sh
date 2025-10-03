#!/bin/sh
# Exit immediately if a command fails
set -ex

# Define the directory inside the task's workspace to save the database
DB_PATH="/var/workdir/source/clamav-db"
mkdir -p "$DB_PATH"

echo "Starting ClamAV database update..."

# Run freshclam and tell it where to store the database files
freshclam --datadir="$DB_PATH"

echo "ClamAV DB update complete."
