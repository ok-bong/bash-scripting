#!/bin/bash

# for Debian/Ubuntu based systems
# no need [  ] because this is not test command
if command -v apt-get &> /dev/null; then
    sudo apt-get update
    sudo apt-get upgrade -y

# for Red Hat based systems
elif command -v dnf &> /dev/null; then
    sudo dnf check-update
    sudo dnf upgrade -y

# for Arch-based systems
elif command -v pacman &> /dev/null; then
    sudo pacman -Syu

# Add more package managers as needed...

else
    echo "Unsupported distribution. Please update your system manually."
    exit 1
fi

echo "Update completed successfully."
