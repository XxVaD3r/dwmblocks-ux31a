#!/bin/sh
BAT0=$(cat /sys/class/power_supply/BAT0/capacity)
if [ $BAT0 -le 100 ] && [ $BAT0 -ge 91 ] 
then
    BAT0i="^c#59ff00^^d^"
fi
if [ $BAT0 -le 90 ] && [ $BAT0 -ge 81 ] 
then
    BAT0i="^c#59ff00^^d^"
fi
if [ $BAT0 -le 80 ] && [ $BAT0 -ge 71 ] 
then
    BAT0i="^c#59ff00^^d^"
fi
if [ $BAT0 -le 70 ] && [ $BAT0 -ge 61 ] 
then
    BAT0i="^c#59ff00^^d^"
fi
if [ $BAT0 -le 60 ] && [ $BAT0 -ge 51 ] 
then
    BAT0i="^c#ff8c00^^d^"
fi
if [ $BAT0 -le 50 ] && [ $BAT0 -ge 41 ] 
then
    BAT0i="^c#ff8c00^^d^"
fi
if [ $BAT0 -le 40 ] && [ $BAT0 -ge 31 ] 
then
    BAT0i="^c#ff8c00^^d^"
fi
if [ $BAT0 -le 30 ] && [ $BAT0 -ge 21 ] 
then
    BAT0i="^c#ff0000^^d^"
fi
if [ $BAT0 -le 20 ] && [ $BAT0 -ge 11 ] 
then
    BAT0i="^c#ff0000^^d^"
fi
if [ $BAT0 -le 10 ] && [ $BAT0 -ge 1 ] 
then
    BAT0i="^c#ff0000^^d^"
fi

# Check charge status
status=$(cat /sys/class/power_supply/BAT0/status)
if [[ $status == "Charging" ]]
then
    if [ $BAT0 -le 100 ] && [ $BAT0 -ge 81 ] 
    then
        BAT0i="^c#59ff00^ ^d^"
    fi
    if [ $BAT0 -le 80 ] && [ $BAT0 -ge 61 ] 
    then
        BAT0i="^c#59ff00^ ^d^"
    fi
    if [ $BAT0 -le 60 ] && [ $BAT0 -ge 41 ] 
    then
        BAT0i="^c#ff8c00^ ^d^"
    fi
    if [ $BAT0 -le 40 ] && [ $BAT0 -ge 21 ] 
    then
        BAT0i="^c#ff8c00^ ^d^"
    fi
    if [ $BAT0 -le 20 ] && [ $BAT0 -ge 1 ] 
    then
        BAT0i="^c#ff0000^ ^d^"
    fi
fi



BAT0="$(cat /sys/class/power_supply/BAT0/capacity | sed 's/$/%/')" # makes human
echo -e "$BAT0i $BAT0"
