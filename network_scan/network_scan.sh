#!/bin/bash

check_nmap_installed() {
	# Check if nmap is installed
	if ! command -v nmap &> /dev/null; then
	    echo "Error: nmap is not installed. Please install nmap and try again."
	    exit 1
	fi
}

# function to perform network scan 
scan_network() {
	local network=$1 # local variable # NO SPACES!

	# -sn flag for ping scan (host discovery)
	# -oG tells nmap to output the results in "grepable" format
	# awk filters the output to only include lines indicating hosts that are up, and prints the IP addresses of those hosts
	result=$(nmap -sn "$network" -oG - | awk '/Up/{print $2}')

	# check if result is empty -z
	if [ -z "$result"]; then
		echo "No hosts found in the network $network"

	else
		echo "Hosts found in the network $network:"
		echo "$result"
	fi
}

# main func
main() {
	check_nmap_installed

	# check if any args provided by user
	if [ $# -eq 0 ]; then
		echo "Usage: $0 <network_to_scan>" # $0 refers to the name of the script itself
		echo "Example: $0 192.168.100.0/24"
		exit 2
	fi
	
	network="$1"
	echo "Scanning network $network.."
	scan_network "$network"
}

# Run the main function 
main "$@" # $@ refer to every single args