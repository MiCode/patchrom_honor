#!/bin/bash
#
# $1: dir for miui
# $2: dir for original
#

APKTOOL=$PORT_ROOT/tools/apktool
 
if [ $2 = "out/framework" ];then
	echo "make framework2.jar"

	mkdir -p "out/services/smali"
	#touch "out/services.jar.out/apktool.yml"
	#echo "version: 1.4.3" >> "out/services.jar.out/apktool.yml"
	#echo "apkFileName: services.jar" >> "out/services/apktool.yml"

	mv "out/framework/smali/miui" "out/services/smali"
	mkdir -p "out/services/smali/android"
	mv "out/framework/smali/android/widget" "out/services/smali/android"

	$APKTOOL b  "out/services" "out/services.jar"
	mkdir -p "out/ZIP/system/framework"
	cp "out/services.jar" "out/ZIP/system/framework/services.jar"
fi
