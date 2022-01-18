#!/bin/sh
echo $(xbacklight | sed 's/[.].*$//' | sed 's/$/%/')
