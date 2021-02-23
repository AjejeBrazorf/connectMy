#!/bin/bash
# TODO: make list of devices configurable 

netMask=$(ip a | grep wlp59s0 | grep inet | tr -s ' ' | cut -d ' ' -f 3)
echo $netMask
if [ -z "$netMask" ]; then
    echo "failed to find your subnet, bye"
    exit 1
fi

tablet='Galaxy-Tab-S7-di-Giuseppe'
phone='RedmiNote9Pro-RedmiN'

if [[ $1 == *"t"* ]]; then
  target=$tablet
else
  target=$phone
fi
echo $target

targetAddress=$(nmap -sn $netMask | grep $target | tr -s ' ' | cut -d '(' -f 2 | cut -d ')' -f 1)
if [ -z "$targetAddress" ]; then
    echo "failed to find your $target, bye"
    exit 1
fi
echo $targetAddress

adb disconnect

adb connect $targetAddress:5555
scrcpy
