#!/bin/sh
#TEMP=$(cat /sys/class/hwmon/hwmon3/temp1_input | cut -c 1,2 -n | sed 's/$/°C/')
TEMP=$(cat /sys/class/hwmon/hwmon3/temp1_input | cut -c 1,2 -n)
close="^d^"
color="^c#2596BE^"
if [[ $TEMP -ge 52 ]] && [[ $TEMP -le 55 ]]
then
    color="^c#ffd000^"
fi

if [[ $TEMP -ge 56 ]] && [[ $TEMP -le 60 ]]
then
    color="^c#ff8c00^"
fi

if [[ $TEMP -ge 61 ]]
then
    color="^c#ff0000^"
fi

TEMP=$(cat /sys/class/hwmon/hwmon3/temp1_input | cut -c 1,2 -n | sed 's/$/°C/')

echo "$color$TEMP$close"
