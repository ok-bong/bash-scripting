# Package Management Bash Script

This bash script simplifies package installation, updates, and removal on a Linux system using the APT package manager.

## Usage

1. **Download the Script**: Download the `package_management.sh` script to your Linux system.

2. **Make it Executable**: Ensure the script is executable by running the following command:

   ```bash
   chmod +x package_management.sh
   ```

3. **Run the Script**: Execute the script with the desired options:

   ```bash
   ./package_management.sh [install|update|remove] [package_name]
   ```
  
   - `install [package_name]`: Install a new package.
   - `update [package_name]`: Update an existing package.
   - `remove [package_name]`: Remove an existing package.

   Replace `[package_name]` with the name of the package you want to install, update, or remove.

4. **Run with Sudo**: Make sure to run the script with sudo or as root to perform package management tasks that require elevated privileges.

## Example Usages

- To install a new package:

  ```bash
  ./package_management.sh install firefox
  ```

- To update an existing package:

  ```bash
  ./package_management.sh update firefox
  ```

- To remove an existing package:

  ```bash
  ./package_management.sh remove firefox
  ```

## Note

- This script is designed for use on Debian-based Linux distributions (e.g., Ubuntu) that use the APT package manager.
- Use caution when performing package management tasks, especially when removing packages, as it can affect system functionality.
- Always ensure you have appropriate permissions before running the script, especially when using sudo.

## Author

Created by Jade Hoang.
