#!/bin/bash

# Backup Script

read -p "Enter source directory: " source
read -p "Enter destination directory: " destination

if [ ! -d "$source" ]; then
    echo "Source directory does not exist!"
    exit 1
fi

timestamp=$(date +"%Y%m%d_%H%M%S")

backup_name="backup_$timestamp.tar.gz"

tar -czvf $destination/$backup_name $source

echo "Backup created successfully!"
