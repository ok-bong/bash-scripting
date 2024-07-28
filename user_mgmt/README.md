# User Management Bash Script

This bash script simplifies user account management tasks, such as adding, modifying, or deleting users on a Linux system.

## Usage

1. **Make it executable**: Ensure the script is executable by running the following command:
   ```
   chmod +x user_management.sh
   ```

2. **Run the script**:
   ```
   ./user_management.sh [add|modify|delete] [username]
   ```
   - `add [username]`: Add a new user.
   - `modify [username]`: Modify an existing user by adding the user to the sudo group for administrative privileges
   - `delete [username]`: Delete an existing user.


## Example Usages

- To add a new user:
  ```
  ./user_management.sh add john
  ```

- To modify an existing user:
  ```
  ./user_management.sh modify jane
  ```

- To delete an existing user:
  ```
  ./user_management.sh delete bob
  ```


## Author

Created by Jade Hoang.