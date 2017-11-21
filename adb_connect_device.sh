#!/bin/bash

echo "You are about to enable wireless debugging for your Android!"
echo ""

echo "Restarting service to use port 5555"
adb tcpip 5555

echo
echo "Displaying the devices connected to computer"
adb shell ifconfig wlan0

if [ $# -eq 0 ]; then
  echo "What is your IP Addr (Usually inet addr)?"
  read ip_addr
else
  response=$(adb connect $1:5555)
fi

echo
echo "Connecting device to ADB..."

if [ $# -eq 0 ]; then
  response=$(adb connect $ip_addr:5555)
fi

echo $response
adb devices
