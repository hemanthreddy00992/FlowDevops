#!/bin/bash

##Declaring variables
PACKAGE="apache2 wget unzip" 
SVC="apache2"
#URL='https://www.tooplate.com/zip-templates/2134_gotto_job.zip'
#ART_NAME='2134_gotto_job'
TEMPDIR="/tmp/webfiles"



#Installing dependencies
echo "Installing webpages"
sudo apt update
sudo apt install $PACKAGE -y > /dev/null 
echo "##############################################"
echo

echo
#Start and enable the service
echo "start and enable $SVC service"
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo "#############################################"
echo


echo
#Creating temporory directory
echo "Creating artifact deployment"
mkdir -p $TEMPDIR
cd $TEMPDIR
echo "#############################################"
echo

echo
#downloading website and placing it in html file
echo "Downloading websidte and placing it in html file"
wget $1 > /dev/null
unzip $2.zip > /dev/null
sudo cp -r $2/* /var/www/html/
echo "##############################################"
echo

echo
#Restarting the service
echo "restart $SVC"
sudo systemctl restart $SVC
echo "#############################################"
echo


echo
#cleanup the temporary directory
echo "Removing temporary directory"
rm -rf $TEMPDIR
echo "################################################"
echo



sudo systemctl status $SVC
ls /var/www/html/
