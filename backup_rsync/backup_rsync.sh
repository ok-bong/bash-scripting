#!/usr/bin/bash

# check to see if rsync is installed
check_rsync_installed() {
	# &> = > and 2>&1
	if ! command -v rsync &> /dev/null
	then
		echo "This script requires rsync to be installed"
		echo "Please use your distro's package manager to install rsync"
		exit 1 # different exit code than 0 (0 = success)
	fi
}

# Function to perform the backup
perform_backup() {
    local source_dir=$1
    local target_dir=$2

    # Get the current date
    local current_date=$(date +%Y-%m-%d)

    # Create the backup directory path
    local backup_dir="${target_dir}/backup-${current_date}"

    # Perform the rsync operation
    rsync -avb --delete --backup --backup-dir="${backup_dir}" --mkpath --dry-run "${source_dir}" "${target_dir}"

    # Log the operation
    echo "Backup performed on ${current_date}" >> "backup_${current_date}.log"
}

main() {
	check_rsync_installed

	# ensure the user has entered exactly 2 args
	if [ $# -ne 2 ]
	then
		echo "Usage: backup.sh <source_directory> <target_directory>"
		echo "Please try again."
		exit 2
	fi

	local source_dir=$1
    local target_dir=$2

    echo "Starting backup from ${source_dir} to ${target_dir}...\n"
    perform_backup "${source_dir}" "${target_dir}"
    echo "Backup completed."
}


# Run the main function
main "$@"