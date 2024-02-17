#!/bin/bash
sudo apt update -y
sudo apt install apache2 -y
sudo sysytemctl start apache2
sudo systemctl enable apache2
echo "Hello this is from terraform" > /var/www/html/index.html