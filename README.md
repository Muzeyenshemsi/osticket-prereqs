# osTicket Prerequisites and Installation
This repository contains the necessary prerequisites and installation steps for osTicket.

## Prerequisites
- A server running Ubuntu 20.04
- Apache Web Server
- MySQL
- PHP

## Installation
Run the following script to install osTicket and its dependencies.

```bash


**configure_post_install.sh**:
```bash
#!/bin/bash

# Update package lists
sudo apt update

# Install updates
sudo apt upgrade -y

# Install common utilities
sudo apt install -y vim curl git

# Configure firewall
sudo ufw allow OpenSSH
sudo ufw enable

echo "Post-installation configuration complete."
