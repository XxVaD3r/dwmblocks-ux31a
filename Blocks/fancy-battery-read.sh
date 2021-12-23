#!/bin/sh
BAT0=$(cat /sys/class/power_supply/BAT0/capacity)
# if battery is 100-75
if [ $BAT0 -le 100 ] 
then
    if [ $BAT0 -ge 75 ]
    then
        BAT0i=""
    fi
fi
#if battery is 74-50
if [ $BAT0 -le 74 ]
then
    if [ $BAT0 -ge 50 ]
    then
        BAT0i=""
    fi
fi
#if battery is 49-25
if [ $BAT0 -le 49 ] 
then
    if [ $BAT0 -ge 25 ]
    then
        BAT0i=""
    fi
fi
#if battery is 24-10
if [ $BAT0 -le 24 ] 
then
    if [ $BAT0 -ge 10 ]
    then
        BAT0i=""
    fi
fi
#if battery is 10-0
if [ $BAT0 -le 10 ] 
then
    if [ $BAT0 -ge 0 ]
    then
        BAT0i=""
    fi
fi
BAT0="$(cat /sys/class/power_supply/BAT0/capacity | sed 's/$/%/')" # makes human
echo -e "$BAT0i  $BAT0"
