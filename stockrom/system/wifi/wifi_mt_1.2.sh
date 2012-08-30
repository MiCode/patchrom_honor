#!/bin/sh
mkdir /data/misc 01771 system misc
mkdir /data/misc/wifi 0770 wifi wifi
mkdir /data/misc/wifi/load 0775 system system
mkdir /data/misc/wifi/bin 0775 system system
/system/bin/wlan_detect
sleep 1
rmmod dhd
insmod /data/misc/wifi/load/dhd.ko devmode=test
ifconfig eth0 up
/data/misc/wifi/bin/wl band b
/data/misc/wifi/bin/wl mpc 0
/data/misc/wifi/bin/wl up
/data/misc/wifi/bin/wl out
/data/misc/wifi/bin/wl fqacurcy 6
/data/misc/wifi/bin/wl phy_txpwrindex 30
                                                     