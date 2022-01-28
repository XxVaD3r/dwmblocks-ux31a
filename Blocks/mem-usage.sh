#!/bin/sh
blue="^c#2596BE^"
echo "$blue$(free -h | awk '/^Mem/ {print $3}' | sed s/i//g)^d^"
