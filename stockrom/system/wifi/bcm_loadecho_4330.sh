#!/bin/sh
insmod /wifi/dhd_4330.ko "firmware_path=/system/wifi/fw_4330_b2_sta.bin nvram_path=/system/wifi/nvram_4330.txt"
sleep 5
cd /system/wifi/
chmod 744 udp_server
ifconfig eth0 192.168.1.3 up
wl_4330 join "U8220WIFITESTAP"
sleep 3
./udp_server
