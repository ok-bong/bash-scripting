# Package Management Bash Script

This bash script simplifies package installation, updates, and removal on a Debian-based system using the **APT** package manager.

## Usage

1. **Make it executable**:

   ```bash
   chmod +x package_management.sh
   ```

2. **Run the script**:

   ```bash
   ./package_management.sh [install|update|remove] [package_name]
   ```
  
   - `install [package_name]`: Install a new package.
   - `update [package_name]`: Update an existing package.
   - `remove [package_name]`: Remove an existing package.



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

- This script is designed for use on Debian-based Linux distros (e.g., Ubuntu) that use the APT package manager.

## Author

Created by Jade Hoang.
