#!/bin/sh
# Create ~/.vpnip file containing only the IP of your vpn! Or run "echo $(curl ifconfig.me) > .vpnip" and it will do it.
sleep 3
vpn=$(cat ~/.vpnip)
ip=$(curl ifconfig.me --silent)
if [[ $ip == "$vpn" ]]
then
    echo "^c#d92429^WG^d^ Up"
else
    echo "^c#717482^WG Down^d^"
fi
