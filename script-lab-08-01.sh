#!/bin/bash
apt update
apt install -y apache2
apt install -y wget
apt install -y unzip
apt install curl
apt install -y php libapache2-mod-php php-mysql
apt install -y curl php-cli php7.2-xml php-mbstring git unzip
curl -sS https://getcomposer.org/installer -o composer-setup.php
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
composer require aws/aws-sdk-php
apt-get install -y mysql-server
cd /var/www/html/
rm index.html
wget https://raw.githubusercontent.com/ahmadzahoory/awssaas/master/lab-08-01-code.zip
unzip lab-08-01-code.zip
systemctl restart apache2.service