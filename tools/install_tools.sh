#!/bin/bash

# Update the package list
sudo apt update

# Install Nmap
sudo apt install -y nmap

# Install Lynis
sudo apt install -y lynis

echo "Installation of tools is complete."
