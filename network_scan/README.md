# Network Scanner Script

This script performs a network scan using **nmap** to discover hosts that are up on a specified network.

## Requirements

- The script requires **nmap** to be installed on your system. You can install it using your package manager (e.g., `apt`, `yum`, `brew`).

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

The script will output the IP addresses of hosts that are up on the specified network.

## Example

```bash
./network_scanner.sh 192.168.1.0/24
```

## Author

Created by Jade Hoang.
