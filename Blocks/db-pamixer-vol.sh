#!/bin/sh
VOL=$(pamixer --get-volume-human)
if [ $VOL == "muted" ]
then
    VOL="^c#717482^Muted^d^"
fi

echo "$VOL"

