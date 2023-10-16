#!/bin/bash

# Update package list and install Fail2ban
sudo apt update
sudo apt install fail2ban -y

# Backup the original configuration file
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local

# Define new configuration values
new_bantime="7200h"
new_findtime="24h"
new_maxretry="3"

# Replace existing configuration items and display new values
sudo sed -i "s/^\(bantime\s*=\s*\).*/\1$new_bantime/" /etc/fail2ban/jail.local
sudo sed -i "s/^\(findtime\s*=\s*\).*/\1$new_findtime/" /etc/fail2ban/jail.local
sudo sed -i "s/^\(maxretry\s*=\s*\).*/\1$new_maxretry/" /etc/fail2ban/jail.local

# Display the updated configuration values
echo "New configuration values:"
echo "bantime = $new_bantime"
echo "findtime = $new_findtime"
echo "maxretry = $new_maxretry"
echo

# Reload Fail2ban configuration
sudo systemctl reload fail2ban

# Enable Fail2ban to start on boot
sudo systemctl enable fail2ban

# Restart Fail2ban service
sudo systemctl restart fail2ban

# Check if Fail2ban is set to start on boot
sudo systemctl is-enabled fail2ban

echo "Fail2ban installation successful."
echo  # Empty line 1
echo  # Empty line 2
