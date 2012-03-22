#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
echo "original dir: $2"
echo "target dir:$1"
if [ $1 = "MiuiSystemUI" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Mms" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi
