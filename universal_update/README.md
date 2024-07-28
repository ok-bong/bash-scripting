# Universal System Update Bash Script

This bash script automates the process of updating system packages on various Linux distributions. It detects the distribution type and uses the appropriate package manager to perform the update, making it a universal solution for system maintenance.

## Usage

1. **Make it executable**: 

   ```bash
   chmod +x universal_update.sh
   ```

2. **Run the script**: Execute the script to update the system packages:

   ```bash
   ./universal_update.sh
   ```

   The script will automatically detect the distribution type and use the appropriate package manager to perform the update.

## Supported Distributions

- **Debian/Ubuntu based systems**: Uses `apt-get` for package management.
- **Red Hat based systems**: Uses `dnf` for package management.
- **Arch-based systems**: Uses `pacman` for package management.


## Author

Created by Jade Hoang.
