#!/bin/bash

# Log Analyzer Script

read -p "Enter log file name: " logfile

if [ ! -f "$logfile" ]; then
    echo "File does not exist!"
    exit 1
fi

echo "Total Lines:"
wc -l $logfile

echo "Number of Errors:"
grep -c "error" $logfile

echo "Number of Warnings:"
grep -c "warning" $logfile
