# ASD ISM Cybersecurity Project - Version 1

This project conducts a cybersecurity assessment in line with the Australian Signals Directorate (ASD) Information Security Manual (ISM). The assessment includes vulnerability scanning and compliance checks using open-source tools on Ubuntu 22.04.

## Features

1. **Comprehensive Vulnerability Scanning**:
The project includes a script that performs detailed vulnerability scanning of the system using `Nmap`. It identifies open ports, running services, and their versions, helping to detect potential security vulnerabilities. Generates a detailed report (vulnerability_report.txt) highlighting the discovered vulnerabilities.

2. **Automated Compliance Checking**:
The project features an automated compliance check script that uses Lynis to audit the system's security posture. It checks for compliance with various security benchmarks and provides recommendations for improvement. Produces a compliance report (compliance_report.txt) detailing the system's adherence to security standards and suggesting hardening measures.

3. **Easy Installation of Required Tools**:
An installation script (`install_tools.sh`) is provided to automatically install the necessary open-source tools (Nmap and Lynis). This ensures a quick setup and consistent environment for running the project.

4. **Structured Project Directory**:
The project directory is organized into scripts and reports folders, making it easy to navigate and understand the workflow.
    - Scripts: Contains all necessary scripts (install_tools.sh, vulnerability_scan.sh, compliance_check.sh).
    - Reports: Stores the generated output reports, ensuring that results are saved and accessible.

5. **Detailed Documentation**:
Comprehensive documentation (`README.md`) is provided to guide users through the installation, usage, and understanding of the project. It includes step-by-step instructions, explanations of each script, and how the project aligns with ASD ISM standards.

6. **ASD ISM Compliance**:
The project aligns with several key controls outlined in the ASD ISM, including security governance, network security, system hardening, and monitoring and auditing.
    - Security Governance: Documentation and procedural clarity are provided through the README.md.
    - Network Security: Achieved through regular vulnerability scanning with Nmap.
    - System Hardening: Ensured by performing compliance checks and system audits with Lynis.
    - Monitoring and Auditing: Continuous monitoring through automated checks and detailed reporting.

7. **Open Source Tools**:
Nmap and Lynis, both open-source tools, ensuring that the project is accessible and cost-effective.

8. **No Hardware Requirement**:
The project is designed to be run entirely in a software environment on Ubuntu 22.04, eliminating the need for additional hardware resources.

9. **User-Friendly Execution**:
The provided scripts simplify the execution of complex tasks, making it easy even for those with limited experience to perform comprehensive security assessments.

10. **Example Outputs**:
The project includes example outputs in the documentation, providing users with a clear expectation of the results and how to interpret them.


## Application of ASD ISM on this Project

Applying the Australian Signals Directorate (ASD) Information Security Manual (ISM) standards to the cybersecurity analyst project involves ensuring that each phase of the project aligns with specific controls and guidelines outlined in the ISM. Here’s a detailed breakdown of how the ASD ISM standards are integrated into each component of the project.

### Key ASD ISM Controls
1. Security Governance
2. Physical Security
3. Personnel Security
4. Information Security
5. Network and System Security
6. Monitoring and Auditing

### Applying ASD ISM Controls
#### 1. Security Governance
**Policies and Procedures**:
- **README.md**: The `README.md` file documents the project’s objectives, structure, and usage, aligning with ASD ISM’s requirement for clear procedures and documentation.
  - **ASD ISM Control**: Ensure that all security-related activities are documented and accessible.

**Risk Management**:
- **Scripts for Vulnerability Scanning and Compliance Checking**: These scripts help identify and manage security risks by automating the scanning and auditing processes.
  - **ASD ISM Control**: Regularly assess and manage risks to the information system.

#### 2. Physical Security
**Project Scope**:
- Since no hardware is involved in this project, physical security controls are not applicable here. However, in a real-world scenario, physical access to servers and workstations should be controlled.

#### 3. Personnel Security
**Access Control**:
- **Script Permissions**: Setting executable permissions for scripts ensures that only authorized personnel can run them.
  - **ASD ISM Control**: Restrict access to security tools and scripts to authorized personnel only.

#### 4. Information Security
**Access Control**:
- **Securing Scripts and Reports**: Ensure that only authorized users have access to the scripts and generated reports.
  - **ASD ISM Control**: Implement access controls to protect sensitive information.

**Data Protection**:
- **Secure Storage of Reports**: Store the output of scans and audits in a designated directory with appropriate access controls.
  - **ASD ISM Control**: Protect the confidentiality, integrity, and availability of sensitive data.

#### 5. Network and System Security
**Network Security**:
- **Nmap Scanning**: Using Nmap to regularly scan the system for vulnerabilities ensures compliance with network security controls.
  - **ASD ISM Control**: Regularly scan the network for vulnerabilities and take corrective actions.

**System Hardening**:
- **Lynis Auditing**: Lynis checks system configurations and applies hardening measures as recommended.
  - **ASD ISM Control**: Ensure systems are hardened according to security best practices.

**Patch Management**:
- **Install Tools Script**: Keeping tools like Nmap and Lynis updated ensures the system is protected against known vulnerabilities.
  - **ASD ISM Control**: Keep systems and applications up to date with the latest security patches.

#### 6. Monitoring and Auditing
**Monitoring**:
- **Automated Scans**: Schedule the vulnerability scans and compliance checks to run at regular intervals using cron jobs.
  - **ASD ISM Control**: Regularly monitor systems for security incidents.

**Auditing**:
- **Detailed Reports**: The Lynis compliance report provides a comprehensive audit of the system’s security status.
  - **ASD ISM Control**: Conduct regular audits to ensure compliance with security policies and standards.

### Detailed Breakdown of Each Component
#### Tool Installation (install_tools.sh):
- **ASD ISM Control**: Ensure that only approved and necessary tools are installed on the system. This script installs Nmap and Lynis, which are widely recognized and approved tools for security assessments.

#### Vulnerability Scanning (vulnerability_scan.sh):
- **ASD ISM Control**: Regularly conduct vulnerability scans to identify and mitigate security risks. This script automates the process, ensuring regular assessments.

#### Compliance Checking (compliance_check.sh):
- **ASD ISM Control**: Conduct regular compliance checks to ensure systems meet security standards. This script runs a comprehensive audit using Lynis, generating a detailed report.

### Example Outputs and ASD ISM Alignment
#### Vulnerability Report (vulnerability_report.txt):
- **ASD ISM Control**: Document and mitigate identified vulnerabilities. This report provides details on open ports and services, highlighting potential vulnerabilities.

#### Compliance Report (compliance_report.txt):
- **ASD ISM Control**: Use audit reports to verify compliance and implement corrective actions as needed. This report provides a comprehensive audit of the system, ensuring it meets security standards.


## Coding Details:

### install_tools.sh:

This script is designed to install the necessary tools (Nmap and Lynis) on your Ubuntu 22.04 system.

1. **Update the package list**: This command refreshes the list of available packages and their versions, ensuring that the latest versions of Nmap and Lynis are installed.
2. **Install Nmap**: This command installs Nmap, a network scanning tool used for discovering hosts and services on a computer network.
3. **Install Lynis**: This command installs Lynis, a security auditing tool for Unix-based systems.
4. **Completion Message**: This command prints a message indicating that the installation process is complete.

### vulnerability_scan.sh:

This script performs a vulnerability scan on the localhost using Nmap and saves the results to a file.

1. **Starting Message**: This command prints a message indicating that the vulnerability scan is started.
2. **Perform a vulnerability scan using Nmap**:
    - `nmap`: Runs Nmap to perform scans.
    - `sV`: Tells Nmap to detect the version of the services running on open ports.
    - `oN reports/vulnerability_report.txt`: Saves the output in a normal format to the specified file.
    - `localhost`: Scans the local machine.
3. **Completion Message**: This command prints a message indicating that the vulnerability scan is complete and the report is saved.


### compliance_check.sh:

This script performs a compliance check using Lynis and saves the results to a file.

1. **Starting Message**: This command prints a message indicating that the compliance check is started.
2. **Perform a compliance check using Lynis**:
    - `sudo lynis`: Runs Lynis with root privileges, allowing it to perform a thorough system audit.
    - `audit system`: The command Lynis uses to start a system audit.
    - `> reports/compliance_report.txt`: Redirects the output of the audit to the specified file.
3. **Completion Message**: This command prints a message indicating that the compliance check is complete and the report is saved.
