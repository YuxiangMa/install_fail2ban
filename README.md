
# Install Fail2Ban Script

This script automates the installation of Fail2Ban on a Linux server.

## Introduction

Fail2Ban is a popular intrusion prevention framework that scans log files and takes action to ban IPs that show malicious behavior. This script simplifies the installation process of Fail2Ban on your server.

## Features

- Automated installation of Fail2Ban.
- Configurable settings for various services and bans.

## Usage

1. SSH into your server
2. Download the installation script: wget https://raw.githubusercontent.com/YuxiangMa/install_fail2ban/main/install_fail2ban.sh
3. Give execute permission to the script: chmod +x install_fail2ban.sh
4. Run the script: ./install_fail2ban.sh

## Configuration
After installing Fail2Ban, you can configure it by editing the relevant configuration files (sudo nano /etc/fail2ban/jail.local).

