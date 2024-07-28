#!/bin/bash

usage() {
    echo "Usage: $0 [install|update|remove] [package]"
    echo "Options:"
    echo "  install [package]: Install a new package"
    echo "  update [package]: Update an existing package"
    echo "  remove [package]: Remove an existing package"
    exit 1
}

install_package() {
    package=$1
    sudo apt-get install $package -y
    echo "Package $package installed successfully."
}

update_package() {
    package=$1
    sudo apt-get update
    sudo apt-get upgrade $package -y
    echo "Package $package updated successfully."
}

remove_package() {
    package=$1
    sudo apt-get remove $package -y
    echo "Package $package removed successfully."
}

# Main 
if [ $# -ne 2 ]; then # if the number of arguments is not equal to 2
    usage 
fi

case $1 in 
    install)
        install_package $2
        ;;
    update)
        update_package $2 
        ;;
    remove)
        remove_package $2
        ;;
    *)
        usage # display usage information for invalid cmds
        ;;
esac   

exit 0 # exit the script with a success status
