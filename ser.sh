#!/bin/bash

echo "nameserver 8.8.8.8" >> /etc/resolv.conf

apt-get install -y apache2 php-common libapache2-mod-php php-cli wget

wget https://dev.mysql.com/get/mysql-apt-config_0.8.22-1_all.deb

apt install -y ./mysql-apt-config_0.8.22-1_all.deb

apt update

apt install -y mysql-server

mv index.php /var/www/html
rm /var/www/html/index.html

