#!/bin/bash

# Function to display usage information
usage() {
    echo "Usage: $0 [add|modify|delete] [username]"
    echo "Options:"
    echo "  add [username]: Add a new user"
    echo "  modify [username]: Modify an existing user - add that user to sudo group"
    echo "  delete [username]: Delete an existing user"
    exit 1
}

# Function to add a new user
add_user() {
    username=$1
    sudo useradd -m $username    # Create a new user with the given username
    sudo passwd $username        # Set a password for the new user - can change this by introducing another passwd variable
    echo "User $username added successfully."
}

# Function to modify an existing user
modify_user() {
    username=$1 # this is local positional parameter (i.e., value of the first argument passed to the function NOT script)
    sudo usermod -aG sudo $username    # Add the user to the sudo group for administrative privileges
    echo "User $username modified and added to sudo group successfully."
}

# Function to delete an existing user
delete_user() {
    username=$1
    sudo userdel -r $username    # Delete the user and remove its home directory (-r option)
    echo "User $username deleted successfully."
}

# Main script
if [ $# -ne 2 ]; then    # check if the number of arguments is not equal to 2
    usage    # display usage information if incorrect number of arguments provided
fi

case $1 in    # Start a case statement based on the first argument provided
    add)
        add_user $2    # call add_user function with the second argument (username)
        ;;
    modify)
        modify_user $2    # call modify_user function with the second argument (username)
        ;;
    delete)
        delete_user $2    # call delete_user function with the second argument (username)
        ;;
    *)
        usage    # display usage information for invalid command
        ;;
esac    # end of case statement

exit 0    # Exit the script with a success status
