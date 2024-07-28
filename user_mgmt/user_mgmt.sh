#!/bin/bash

# function to display usage information
usage() {
    echo "Usage: $0 [add|modify|delete] [username]"
    echo "Options:"
    echo "  add [username]: Add a new user"
    echo "  modify [username]: Modify an existing user - add that user to sudo group"
    echo "  delete [username]: Delete an existing user"
    exit 1
}

add_user() {
    local username=$1
    sudo useradd -m "$username"  # Create a new user with the given username
    
    if [ $? -eq 0 ]; then # checking exit code
        sudo passwd "$username" # Set a password for the new user - can change this by introducing another passwd variable
        if [ $? -eq 0 ]; then
            echo "User $username added successfully."
        else
            echo "Failed to set password for $username."
            exit 1
        fi
    else
        echo "Failed to add user $username."
        exit 1
    fi
}

# function to modify an existing user
modify_user() {
    local username=$1 # this is local positional parameter (i.e., value of the first argument passed to the function NOT script)
    
    sudo usermod -aG sudo $username # Add the user to the sudo group for administrative privileges

     if [ $? -eq 0 ]; then
        echo "User $username modified and added to sudo group successfully."
    else
        echo "Failed to modify user $username."
        exit 1
    fi
}

# function to delete an existing user
delete_user() {
    local username=$1
    sudo userdel -r $username # Delete the user and remove its home directory (-r option)
    
    if [ $? -eq 0 ]; then
        echo "User $username deleted successfully."
    else
        echo "Failed to delete user $username."
        exit 1
    fi
}


# Main script
if [ $# -ne 2 ]; then # check if the number of arguments is not equal to 2
    usage 
fi

case $1 in 
    add)
        add_user $2 
        ;;
    modify)
        modify_user $2 
        ;;
    delete)
        delete_user $2 
        ;;
    *)
        usage # display usage information for invalid command
        ;;
esac

exit 0 # Exit script with a success status
