#!/bin/bash

if [ -s /project1/checksize.txt ];then #this is  non zero
	echo "Update system command received" #true
	./update.sh
else 
	echo "There're no update command" #false
fi
