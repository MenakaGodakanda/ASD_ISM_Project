# ASD ISM Cybersecurity Project

This project conducts a cybersecurity assessment in line with the Australian Signals Directorate (ASD) Information Security Manual (ISM). The assessment includes vulnerability scanning and compliance checks using open-source tools on Ubuntu.

## Project Structure
```
ASD_ISM_Project/
├── scripts/                        # Contains scripts for various tasks.
│   ├── install_tools.sh
│   ├── vulnerability_scan.sh
│   └── compliance_check.sh
├── reports/                        # Generated reports from the scans and checks.
│   ├── vulnerability_report.txt
│   └── compliance_report.txt
└── tools                           # Scripts to install necessary tools.
│   └── install_tools.sh
└── README.md
```

## Installation

### Tools
- The platform of this project is Ubuntu 22.04 operating system.
- Nmap: Used for network discovery and security auditing.
- Lynis: An open-source security auditing tool for Unix-based systems.

### Clone the Repository:
```
git clone https://github.com/MenakaGodakanda/ASD_ISM_Project.git
cd ASD_ISM_Project
```

### Install Required Tools:
Run `install_tools.sh` to install Nmap and Lynis.
```
chmod +x tools/install_tools.sh
sudo ./scripts/install_tools.sh
```

## Usage

### Vulnerability Scanning

1. Run the Vulnerability Scan:
```
chmod +x scripts/vulnerability_scan.sh
sudo ./scripts/vulnerability_scan.sh
```

2. Output:
The results will be saved to reports/vulnerability_report.txt.

### Compliance Checking

1. Run the Compliance Check:
```
chmod +x scripts/compliance_check.sh
sudo ./scripts/compliance_check.sh
```

2. Output:
The results will be saved to reports/compliance_report.txt.

## ASD ISM Compliance

The project adheres to several key controls outlined in the ASD ISM:

- **Security Governance**: Documentation and procedural clarity through the `README.md`.
- **Network and System Security**:
  - Regular vulnerability scanning using Nmap.
  - System hardening and compliance checking using Lynis.
- **Access Control**: Ensuring only authorized users can execute scripts.
- **Monitoring and Auditing**: Regular checks and detailed reporting of system security status.

## License

This project is licensed under the MIT License.
