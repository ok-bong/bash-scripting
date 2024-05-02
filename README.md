# Linux Administration Bash Scripts

A collection of practical Bash scripts for Linux system administration. These scripts are designed to streamline common tasks, automate routine processes, and enhance the efficiency of Linux server management.

## Contents

**Backup scripts**: Performs backups using the rsync utility. It allows you to synchronise files and directories from a source directory to a target directory.

**Map network drive**: Map a network drive on your system using either Bash or PowerShell.

**Network scanner**: Performs a network scan using the nmap tool to discover hosts that are alive on a specified network.

**Package management**: Simplifies package installation, updates, and removal on a Linux system using the APT package manager.

**Universal update**: Automates the process of updating system packages on various Linux distributions. It detects the distribution type and uses the appropriate package manager to perform the update.

**User management**: Simplify user account management tasks, such as adding, modifying, or deleting users.

Each script is stored in a dedicated folder, containing the script itself and an associated README file providing instructions on usage and examples.

## General Usage

Store the scripts file in `/usr/local/bin/`, which is a centralised location for all administrators to access the script (ensure that this location is added to the $PATH environment variable).

Add executable permission to the scripts `chmod +x /usr/local/bin/scripts.sh`
