#!/bin/bash

SOURCE_DIR="/path/to/source_directory"
BACKUP_DIR="/path/to/backup_directory"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"

tar -czvf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
    echo "Backup created successfully: $BACKUP_DIR/$BACKUP_NAME"
else
    echo "Backup failed"
fi