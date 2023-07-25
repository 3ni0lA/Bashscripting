#!/bin/bash

#Variables
PACKAGE=" apache2 wget unzip"
SVC="apache2"
URL='https://www.tooplate.com/zip-templates/2134_gotto_job.zip'
ART_NAME='2134_gotto_job'
TEMPDIR="/tmp/website"

#INSTALL DEPENDECIES
echo "#################################"
echo "Install Packages"
echo "################################"
sudo apt install $PACKAGE -y > /dev/null
echo


#Start and Enablle Service
echo "################################"
echo "Start and Enable HTTPD Service"
echo "###############################"
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo

#Creating Temp Directory
echo "###############################"
echo "Starting Deployment"
echo "##############################"
mkdir -p $TEMPDIR
cd $TEMPDIR
echo

wget $URL > /dev/null
unzip $ART_NAME/* /var/www/html
echo
