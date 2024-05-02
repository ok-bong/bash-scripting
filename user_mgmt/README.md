# User Management Bash Script

This bash script simplifies user account management tasks, such as adding, modifying, or deleting users on a Linux system.

## Usage

1. **Download the Script**: Download the `user_management.sh` script to your Linux system.

2. **Make it Executable**: Ensure the script is executable by running the following command:
   ```
   chmod +x user_management.sh
   ```

3. **Run the Script**: Execute the script with the desired options:
   ```
   ./user_management.sh [add|modify|delete] [username]
   ```
   - `add [username]`: Add a new user.
   - `modify [username]`: Modify an existing user.
   - `delete [username]`: Delete an existing user.

   Replace `[username]` with the desired username in each case.

4. **Run with Sudo**: Make sure to run the script with sudo or as root to perform user management tasks that require elevated privileges.

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

## Note

- This script is designed for use on Linux systems and may not work on other operating systems.
- Use caution when performing user management tasks, especially when deleting users, as it can result in data loss.
- Always ensure you have appropriate permissions before running the script, especially when using sudo.

## Author

Created by Jade Hoang.