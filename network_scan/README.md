# Network Scanner Script

This script performs a network scan using the nmap tool to discover hosts that are alive on a specified network.

## Requirements

- The script requires the nmap tool to be installed on your system. You can install it using your package manager (e.g., `apt`, `yum`, `brew`).

## Usage

1. Make sure you have permission to execute the script:

    ```bash
    chmod +x network_scanner.sh
    ```

2. Run the script with the following command:

    ```bash
    ./network_scanner.sh <network_to_scan>
    ```

Replace `<network_to_scan>` with the network you want to scan in CIDR notation (e.g., `192.168.1.0/24`).

## Output

The script will output the IP addresses of hosts that are alive on the specified network.

## Example

```bash
./network_scanner.sh 192.168.1.0/24
```

## Notes

- The script relies on the nmap tool to perform the network scan.
- Make sure to run the script with appropriate permissions, as it requires sudo privileges to execute nmap.
- The script may take some time to complete the scan, depending on the size of the network.

## Author

Created by Jade Hoang.
