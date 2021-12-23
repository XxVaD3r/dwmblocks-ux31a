#!/bin/sh
VOL=$(pamixer --get-volume-human)

if [ $VOL == "muted" ]
then
    VOL="Muted"
fi

echo $VOL

