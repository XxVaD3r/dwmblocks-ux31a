#!/bin/sh
stat=$(cat /sys/class/net/wlan0/operstate)
if [ $stat == "down" ]
then
    echo "" # DOWN
else 
    echo "ﯱ" # UP
fi
