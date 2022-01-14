#!/bin/sh
SSID="$(iw dev wlan0 info | sed -n 's/ssid//p' | sed -e 's/^[ \t]*//')"
STAT="$(cat /sys/class/net/wlan0/operstate)"
#STATi set during stat check
if [ -z "$SSID" ] #If unset
then
    SSID="^c#ff0000^Disconnected^d^"
    STATi="^c#ff0000^睊 ^d^"
fi
if [ $STAT == "up" ] #If set
then
    STATi="^c#59ff00^直 ^d^"
    SSID="$(echo "^c#59ff00^$SSID^d^")"
fi
echo -e "$STATi$SSID"
