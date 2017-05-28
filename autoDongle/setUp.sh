#!/bin/bash
chmod u+x setUp.sh

##### This script installs the required packages to read a mouse and keyboard automation macro #####

##### Install XNEE

if [ "dpkg -l | grep xnee" != "" ]; then echo "Hello, there is nothing you need to setup, Xnee is already installed on your machine"
else
	read -p "Please make sure you have a wifi connection to install the required packages. Press [Enter] when you ready: " y
	echo "Downloading Xnee software"
	cd $PWD/setUpPackage
	sudo wget https://ftp.gnu.org/gnu/xnee/xnee-3.19.tar.gz
	tar -zxvf xnee-3.19.tar.gz
	rm -rf xnee-3.19.tar.gz
	echo "Installing required extensions"
	sudo apt-get install libxtst-dev
	echo "Installing Xnee software"
	cd xnee-3.19
	./configure
	make 
	make install
	cd ..
fi

echo "Thanks, you are ready to go, byebye"

##### Test XNEE or exit

#while true
#do
#    read -p "Do you wish to test the Xnee software? (y/n, recommended): " yn
#    case $yn in
#        [Yy]* ) echo "OK don't move, we start the test"
#		cnee --replay --file $PWD/macros/test &
#		break;;
 #       [Nn]* ) echo "OK, you are ready to go, bye"
#		exit;;
#        * ) echo "Please answer yes or no.";;
#    esac
#done

##### Setup automatic detection of Dongle

cd ..

sudo cp $PWD/setUpPackage/85-my_usb_device_rule.rules /etc/udev/rules.d/85-my_usb_device_rule.rules
sudo udevadm control --reload
