#!/bin/bash

# Update package lists
sudo apt update

# Install Apache
sudo apt install -y apache2

# Install MySQL
sudo apt install -y mysql-server

# Install PHP and required extensions
sudo apt install -y php libapache2-mod-php php-mysql php-xml php-imap php-mbstring php-ldap

# Download and set up osTicket
wget https://github.com/osTicket/osTicket/releases/download/v1.15.3.1/osTicket-v1.15.3.1.zip
unzip osTicket-v1.15.3.1.zip -d /var/www/html/osticket

# Set permissions
sudo chown -R www-data:www-data /var/www/html/osticket
sudo chmod -R 755 /var/www/html/osticket

echo "osTicket installation complete. Please complete the setup in your browser."
