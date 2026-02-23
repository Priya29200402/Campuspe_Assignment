#!/bin/bash

# This script displays basic system information

echo " SYSTEM INFORMATION"

# Display hostname
echo "Hostname:"
hostname

# Display current user
echo "Current User:"
whoami

# Display operating system info
echo "Operating System:"
lsb_release -d

# Display kernel version
echo "Kernel Version:"
uname -r


# Display uptime
echo "System Uptime:"
uptime

echo "End"
