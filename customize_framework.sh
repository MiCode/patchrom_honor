#!/bin/bash
#
# $1: dir for miui
# $2: dir for original
#

APKTOOL=$PORT_ROOT/tools/apktool
 
if [ $2 = "out/framework" ];then
	echo "make framework2.jar"

	mkdir -p "out/framework2/smali"
	touch "out/framework2/apktool.yml"
	echo "version: 1.4.3" >> "out/framework2/apktool.yml"
	echo "apkFileName: framework2.jar" >> "out/framework2/apktool.yml"

	mv "out/framework/smali/miui" "out/framework2/smali"
	mkdir -p "out/framework2/smali/android"
	mv "out/framework/smali/android/widget" "out/framework2/smali/android"

	$APKTOOL b  "out/framework2" "out/framework2.jar"
	mkdir -p "out/ZIP/system/framework"
	cp "out/framework2.jar" "out/ZIP/system/framework/framework2.jar"
fi
