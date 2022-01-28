#!/bin/sh
blue="^c#2596BE^"
echo "$blue $(xbacklight | sed 's/[.].*$//' | sed 's/$/%/')^d^"
