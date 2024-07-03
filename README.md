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

### 4. domain/Sublist3r/sublist3r.py

`sublist3r.py` Designed to enumerate subdomains of websites using OSINT

#### Usage

```bash
./sublist3r.py [-h] 

options:
    -h, --help                                               Show this help message and exit.
    -d DOMAIN, --domain DOMAIN                               Domain name to enumerate it's subdomains. Required=True
    -b, --bruteforce                                         Enable the subbrute bruteforce module. Default=False
    -p PORT1,PORT2, --ports PORT1,PORT2                      Scan the found subdomains against specified tcp ports
    -v, --verbose                                            Enable Verbosity and display results in realtime. Default=False
    -s, --silent                                             Disable Verbosity and run the script silently. Default=False
    -t THREADS, --threads THREADS                            Number of threads to use for subbrute bruteforce. Type=int. Default=30
    -e SEARCHENGINES, --engines SEARCHENGINES                Specify a comma-separated list of search engines
    -o OUTPUT, --output OUTPUT                               Save the results to text file
    -vt <your-apikey>, --virustotal_apikey <your-apikey>     Set Virustotal API Key.
    -n, --no-color                                           Output without color. Default=False
```

#### Example
```bash
python sublist3r.py -d google.com -b -p 80,443 -v -o subdomains.txt
```

#### Features
- **Subdomain Enumeration**: Gathers subdomains using multiple search engines and services.
- **Bruteforce Module**: Uses subbrute to perform a brute force attack for discovering more subdomains.
- **Port Scanning**: Scans discovered subdomains for open ports.
- **Real-time Results**: Displays results in real-time when verbosity is enabled.
- **Silent Mode**: Runs the script silently without output.

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
@aboul3la

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

Feel free to reach out if you have any questions or need further assistance. Happy scanning!
