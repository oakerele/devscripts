#!/bin/bash

echo "Running NPM Install"
> /dev/null npm install

echo "Adding iOS and Android to app"
> /dev/null ionic platform add android
> /dev/null ionic platform add ios

echo "Building APK for Android"
> /dev/null ionic cordova build android

echo "You can run the ionic_deploy_project<deploy> script to push to a device"