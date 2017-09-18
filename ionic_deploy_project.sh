#!/bin/bash

echo "Current Directory: $PWD"
echo ""

echo "Building the deployable file for Android"
ionic cordova build android

echo ""
echo "About to install the built app to connected device"
adb install -r $PWD/platforms/android/build/outputs/apk/android-debug.apk
