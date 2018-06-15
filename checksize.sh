#!/bin/bash

if [ -f /project1/ArpNode3/update ];then #this is  non zero
	echo "Update system command received" #true
	../Updatescript/update.sh
else 
	echo "There're no update command" #false
fi
