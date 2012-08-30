#! /bin/sh
cd /system/wifi
ifconfig eth0 $1 up
wl_4330 join "$2"
sleep 3
