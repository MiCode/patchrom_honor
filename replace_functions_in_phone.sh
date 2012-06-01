#!/bin/bash

OLD_IFS=$IFS
path=$1
for f in `grep  -rn "IccCard;->" $1 | grep "invoke-virtual" | cut -d: -f1 | uniq | sort`
do
    echo "replace file:$f"
    cat /dev/null > temp
    IFS=$'\n'
    for l in `cat $f`
    do
        echo $l | grep  "IccCard;->" | grep "invoke-virtual" -q
        if [ $? -eq 0 ]
        then
           l=`echo $l | sed "s/invoke-virtual/invoke-interface/"`
        fi
        echo $l >> temp
    done
    cp temp $f
done
if [ -f temp ]
then 
    rm temp
fi
IFS=$OLD_IFS
