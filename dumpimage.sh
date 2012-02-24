adb shell mount /dev/block/mmcblk0p1 /cust
adb pull /cust/image/boot.img $1
