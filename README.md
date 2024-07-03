# Network Utility Scripts

Welcome to the **Network Utility Scripts** repository! This collection of scripts is designed to help you efficiently scan networks and identify active hosts and open ports. Below are the details of the initial scripts provided. More scripts will be added in the future to enhance functionality.

## Scripts Included

### 1. red/hostScan.sh

`hostScan.sh` Is a powerful script that scans the current network to display active hosts and their open ports. It checks for the following ports: 21, 22, 23, 25, 80, 139, 443, 455, and 8080.

#### Usage

```bash
./hostScan.sh
```

#### Features

- **Network Scan**: Identifies all active hosts in the current network.
- **Port Scan**: Lists active ports for each detected host.

### 2. /red/portScan.sh

`portScan.sh` Focuses on a single target IP, showing you the open ports on that IP. This is especially useful for detailed port analysis of specific devices.

#### Usage

```bash
./portScan.sh [TARGET_IP]
```

#### Features

- **Targeted Scan**: Provides a list of open ports for a specified IP address.

### 3. domain/subDomainSearcher.py

`subDomainSearcher.py` Searches and lists subdomains for a target domain.

#### Usage

```bash
./subDomainSearcher.py [-h] -d DOMAIN [-o OUTPUT]

options:
    -h, --help                      Show this help message and exit.
    -d DOMAIN, --domain DOMAIN      Target domain.
    -o OUTPUT, --output OUTPUT      Output file.
```

#### Features

- **Targeted Scan**: Provides a list of open ports for a specified IP address.


## Getting Started

To get started, simply clone this repository and run the scripts as needed. Ensure you have the necessary permissions to execute these scripts.

```bash
git clone https://github.com/yourusername/network-utility-scripts.git
cd network-utility-scripts
chmod +x hostScan.sh portScan.sh
```

## Contributing

I apreciate any contributions! If you have ideas for new scripts or improvements to existing ones, feel free to fork the repository and submit a pull request.

## Acknowledgments

These scripts are created and maintained by **Shevanio**. Special thanks to: 

@s4vitar
@UnaPibaGeek

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

Feel free to reach out if you have any questions or need further assistance. Happy scanning!
