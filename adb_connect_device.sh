#!/bin/bash

echo "You are about to enable wireless debugging for your Android!"
echo ""

echo "Restarting service to use port 5555"
adb tcpip 5555

echo "Displaying the devices connected to computer"
adb shell ifconfig wlan0

echo "What is your IP Addr (Usually inet addr)?"
read ip_addr

echo "Connecting device to ADB..."
adb connect $ip_addr:5555

echo "Seems like it was successful, Happy Programming"
