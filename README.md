# Install Fail2Ban Script

This script automates the installation of Fail2Ban on a Linux server.

## Introduction

Fail2Ban is a popular intrusion prevention framework that scans log files and takes action to ban IPs that show malicious behavior. This script simplifies the installation process of Fail2Ban on your server.

## Features

- Automated installation of Fail2Ban.
- Configurable settings for various services and bans.

## Usage

1. Download the installation script:

    ```bash
    wget https://raw.githubusercontent.com/YuxiangMa/install_fail2ban/main/install_fail2ban.sh
    ```

2. Give execute permission to the script:

    ```bash
    chmod +x install_fail2ban.sh
    ```

3. Run the script:

    ```bash
    ./install_fail2ban.sh
    ```
    
4. After installing Fail2Ban, you can configure it by editing the relevant configuration files:

    ```bash
    sudo nano /etc/fail2ban/jail.local
    ```

5. To view the Fail2Ban log, you can use the following command:
    ```bash
    sudo cat /var/log/fail2ban.log

