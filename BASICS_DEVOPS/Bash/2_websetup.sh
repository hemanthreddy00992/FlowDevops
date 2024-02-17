#!/bin/bash


#Installing dependencies
echo "Installing webpages"
sudo apt update
sudo apt install apache2 wget unzip -y > /dev/null 
echo "##############################################"
echo

echo
#Start and enable the service
echo "start and enable apache2 service"
sudo systemctl start apache2
sudo systemctl enable apache2
echo "#############################################"
echo


echo
#Creating temporory directory
echo "Creating artifact deployment"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo "#############################################"
echo

echo
#downloading website and placing it in html file
echo "Downloading websidte and placing it in html file"
wget https://www.tooplate.com/zip-templates/2134_gotto_job.zip > /dev/null
unzip 2134_gotto_job.zip > /dev/null
sudo cp -r 2134_gotto_job/* /var/www/html/
echo "##############################################"
echo

echo
#Restarting the service
echo "restart apache2"
sudo systemctl restart apache2
echo "#############################################"
echo


echo
#cleanup the temporary directory
echo "Removing temporary directory"
rm -rf /tmp/webfiles
echo "################################################"
echo



sudo systemctl status apache2
ls /var/www/html/
