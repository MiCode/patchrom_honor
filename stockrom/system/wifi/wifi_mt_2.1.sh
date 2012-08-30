#!/bin/sh
mkdir /data/misc 01771 system misc
mkdir /data/misc/wifi 0770 wifi wifi
mkdir /data/misc/wifi/load 0775 system system
mkdir /data/misc/wifi/bin 0775 system system
/system/bin/wlan_detect
wlan_tool testmodeup
athtestcmd -i eth0 --tx sine --txrate 11 --txfreq 2437 --tgtpwr
