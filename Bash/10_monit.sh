#!/bin/bash
echo
echo "#################################################"

date
### apache2 service process id is present in /var/run/apache2/apache2.pid ###
ls /var/run/apache2/apache2.pid

### Checking if the apache2 service is in sctive or not. If it is active $?=0 else $?>0 ###

if [ $? -eq 0 ]
then
	echo "apache2 process is running."
else
	echo "apache2 process is not running."
	echo "Starting apache2 process."
	
	systemctl start apache2
	
	if [ $? -eq 0 ]
	then
		echo "apache2 process started sucessfully."
	else
		echo "apache2 process starting failed. Contact the admin"
	fi

fi
echo
echo "#########################################################################"
echo
