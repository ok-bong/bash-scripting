# Rsync Backup Bash Script

This bash script performs backups using `rsync`. It allows you to synchronise files and directories from a source directory to a target directory.

**NOTE:** This script uses `rsync --dry-run` by default. If you want to perform a real backup, remove the `--dry-run` option.

## Usage

1. **Make it executable**:

   ```bash
   chmod +x backup_rsync.sh
   ```

2. **Run the script**:

   ```bash
   ./backup_rsync.sh <source_directory> <target_directory>
   ```

   Replace `<source_directory>` with the directory containing the files you want to back up, and `<target_directory>` with the directory where you want to store the backup files.

## Requirements

- This script requires `rsync` to be installed on your system. If `rsync` is not installed, you can use your distribution's package manager to install it. For example, on Debian-based systems, you can run:

  ```bash
  sudo apt-get install rsync
  ```

## Options

- The script uses the following `rsync` options:
  - `-a`: Archive mode, preserves permissions and other attributes.
  - `-v`: Verbose output, shows the files being copied.
  - `-b`: Backup mode, creates backups of files before replacing them.
  - `--backup --backup-dir=<dir>`: Specifies the directory where backup copies of **replaced** files will be stored.
  - `--delete`: Deletes extraneous files from the target directory.
  - `--dry-run`: Performs a dry run, showing what would be done without actually copying any files.
  - `--mkpath`: Creates the destination directories if they don't exist.

## Output

- After running the script, a log file named `backup_<current_date>.log` will be created in the current directory, containing the output of the `rsync` command.

## Example

To perform a backup of the `/home/user/documents` directory to the `/backup` directory, you can use the following command:

```bash
./backup_rsync.sh /home/user/documents /backup
```

## Author

Created by Jade Hoang.
