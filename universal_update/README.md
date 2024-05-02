# Universal System Update Bash Script

This bash script automates the process of updating system packages on various Linux distributions. It detects the distribution type and uses the appropriate package manager to perform the update, making it a universal solution for system maintenance.

## Usage

1. **Download the Script**: Download the `universal_update.sh` script to your Linux system.

2. **Make it Executable**: Ensure the script is executable by running the following command:

   ```bash
   chmod +x universal_update.sh
   ```

3. **Run the Script**: Execute the script to update the system packages:

   ```bash
   ./universal_update.sh
   ```

   The script will automatically detect the distribution type and use the appropriate package manager to perform the update.

## Supported Distributions

- **Debian/Ubuntu based systems**: Uses `apt-get` for package management.
- **Red Hat based systems**: Uses `dnf` for package management.
- **Arch-based systems**: Uses `pacman` for package management.

## Note

- If your distribution is not supported or if you encounter any issues, the script will display an error message and exit. You may need to update your system manually in such cases.

- Ensure you have appropriate permissions to run the script, especially when using sudo.

## Author

Created by Jade Hoang.
