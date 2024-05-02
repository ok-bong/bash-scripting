#!/bin/bash

# Check if all required positional parameters are provided
if [ $# -ne 3 ]; then
echo "Usage: $0 USERNAME PASSWORD MOUNT_POINT"
exit 1
fi

USERNAME=$1
PASSWORD=$2
MOUNT_POINT=$3

# Replace "NETWORK_PATH" with the path of the network folder you want to map
NETWORK_PATH="//server/share"

# Mount the network drive 
sudo mount -t cifs -o username=$USERNAME,password=$PASSWORD $NETWORK_PATH $MOUNT_POINT