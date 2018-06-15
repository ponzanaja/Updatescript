#!/bin/bash

if [ -f /project1/ArpNode3/update ];then #this is  non zero
	echo "Update system command received" #true
	pwd
	#../Updatescript/update.sh
	TEXT_RESET='\e[0m'
	TEXT_YELLOW='\e[0;33m'
	TEXT_RED_B='\e[1;31m'

	yes Y | sudo apt-get update
	echo -e $TEXT_YELLOW
	echo 'APT update finished...'
	echo -e $TEXT_RESET

	yes Y | sudo apt-get dist-upgrade
	echo -e $TEXT_YELLOW
	echo 'APT distributive upgrade finished...'
	echo -e $TEXT_RESET

	yes Y | sudo apt-get upgrade
	echo -e $TEXT_YELLOW
	echo 'APT upgrade finished...'
	echo -e $TEXT_RESET

	yes Y | sudo apt-get autoremove
	echo -e $TEXT_YELLOW
	echo 'APT auto remove finished...'
	echo -e $TEXT_RESET

if [ -f /var/run/reboot-required ]; then
    echo -e $TEXT_RED_B
    echo 'Reboot required!'
    echo -e $TEXT_RESET
    reboot
fi
else 
	echo "There're no update command" #false
fi
