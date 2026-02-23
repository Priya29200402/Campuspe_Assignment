#!/bin/bash

# User Report Script

echo "Total Users:"
wc -l /etc/passwd

echo "Currently Logged In Users:"
who

echo "Users with UID 0 (Root users):"
awk -F: '$3 == 0 {print $1}' /etc/passwd

echo "Last Login Information:"
last | head -5
