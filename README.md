# Linux Administration Bash Scripts

A collection of Bash scripts for Linux system administration. 

## Contents

- **Backup scripts**: Performs backups using **rsync**. It allows you to synchronise files & directories from a source directory to a target directory.

- **Network scanner**: Performs a network scan using **nmap** to discover hosts that are up on a specified network.

- **Package management**: Simplifies package installation, updates, and removal on Debian-based distros using the APT package manager.

- **Universal update**: Automates the process of updating system packages on various Linux distros. It detects the distribution type and uses the appropriate package manager to perform the update (**apt**, **dnf**, **pacman**).

- **User management**: Simplify user account management tasks, including adding, modifying, or deleting users.

Each script is stored in a dedicated folder, containing the script itself and an associated README file providing instructions on usage and examples.

## General Usage

Store the scripts file in `/usr/local/bin/`, which is a centralised location for all administrators to access the script (ensure that this path is added to the $PATH environment variable).

Add executable permission to the scripts `chmod +x /usr/local/bin/scripts.sh`

## References

- [Bash Syntax Cheat Sheet](https://ioflood.com/blog/bash-syntax-cheat-sheet/)