#!/bin/sh
insmod /wifi/dhd_4330.ko "firmware_path=/system/wifi/fw_4330_b2_sta.bin nvram_path=/system/wifi/nvram_4330.txt"
sleep 5
