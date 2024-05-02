# Network Drive Mapping Script

This script allows you to map a network drive on your system using either Bash or PowerShell.

## Bash Script (map_drive.sh)

### Prerequisites

- This script requires the `cifs-utils` package to be installed on your system.
- You need sudo privileges to mount the network drive.

### Usage

1. Save the script as `map_drive.sh`.
2. Make it executable by running `chmod +x map_drive.sh`.
3. Run the script with the following command:

   ```bash
   sudo ./map_drive.sh USERNAME PASSWORD MOUNT_POINT
   ```

Replace `USERNAME`, `PASSWORD`, and `MOUNT_POINT` with your actual credentials and desired mount point (e.g., `/mnt/network_drive`).

## PowerShell Script (map_drive.ps1)

### Usage

1. Save the script as `map_drive.ps1`.
2. Run the script in PowerShell by executing:

   ```PowerShell
   .\map_drive.ps1 USERNAME PASSWORD DRIVE_LETTER
   ```

Replace `USERNAME`, `PASSWORD`, and `DRIVE_LETTER` with your actual credentials and desired drive letter.

## Important Note

- Replace `"//server/share"` or `"\\server\share"` with the actual path of the network folder you want to map in both scripts.
  
## Author

Created by Jade Hoang.
