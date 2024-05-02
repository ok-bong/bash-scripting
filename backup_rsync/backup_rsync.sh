#!/usr/bin/bash

# ensure the user has entered exactly 2 args
if [ $# -ne 2 ]
then
	echo "Usage: backup.sh <source_directory> <target_directory>"
	echo "Please try again."
	exit 1 # exit code of 1
fi

# check to see if rsync is installed
# &> = > and 2>&1
if ! command -v rsync &> /dev/null
then
	echo "This script requires rsync to be installed"
	echo "Please use your distro's package manager to install rsync"
	exit 2 # different exit code
fi

# capture the current date and store it in format YYYY-MM-DD
current_date=$(date +%Y-%m-%d)

rsync_options="-avb --backup-dir $2/date --delete --dry-run"

# run rsync command with options
$(which rsync) $rsync_options "$1" "$2/current" >> backup_$current_date.log
