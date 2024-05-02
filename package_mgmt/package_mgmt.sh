#!/bin/bash

# Function to display usage information
usage() {
    echo "Usage: $0 [install|update|remove] [package]"
    echo "Options:"
    echo "  install [package]: Install a new package"
    echo "  update [package]: Update an existing package"
    echo "  remove [package]: Remove an existing package"
    exit 1
}

# Function to install a new package
install_package() {
    package=$1
    sudo apt-get install $package -y    # Use apt-get to install the specified package with the "-y" flag to automatically answer yes to prompts
    echo "Package $package installed successfully."
}

# Function to update an existing package
update_package() {
    package=$1
    sudo apt-get update    # Update the package list to ensure we have the latest version information
    sudo apt-get upgrade $package -y    # Upgrade the specified package to the latest version
    echo "Package $package updated successfully."
}

# Function to remove an existing package
remove_package() {
    package=$1
    sudo apt-get remove $package -y    # Use apt-get to remove the specified package with the "-y" flag to automatically answer yes to prompts
    echo "Package $package removed successfully."
}

# Main script
if [ $# -ne 2 ]; then    # Check if the number of arguments is not equal to 2
    usage    # Display usage information if incorrect number of arguments provided
fi

case $1 in    # Start a case statement based on the first argument provided
    install)
        install_package $2    # call install_package function with the second argument (package name)
        ;;
    update)
        update_package $2    # call update_package function with the second argument (package name)
        ;;
    remove)
        remove_package $2    # call remove_package function with the second argument (package name)
        ;;
    *)
        usage    # Display usage information for invalid command
        ;;
esac    # end of case statement

exit 0    # exit the script with a success status
