#!/bin/bash

# yum install httpd -y
# service httpd start
# echo "<html><body><h1>Hello from user data in ${AWS::Region}</h1></body></html>" > /var/www/html/index.html

# Install operating system packages

echo y | dnf install httpd php php-mysqlnd php-gd php-xml mariadb-server mariadb php-mbstring php-json

echo y | dnf install httpd php php-mysqlnd php-gd php-xml php-mbstring php-json

# Start maria db

systemctl start mariadb
mysql_secure_installation

      