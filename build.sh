#!/bin/bash

VERSION="2.0.2"
if [ -d ./node_modules ] ; then
    rm -rf ./node_modules
fi
if [ -d ./platforms ] ; then
    rm -rf ./platforms
fi
if [ -d ./plugins ] ; then
    rm -rf ./plugins
fi
if [ ! -d ./bin ] ; then
    mkdir bin
fi
npm install
#cordova platform remove ios
#cordova platform remove android
#cordova platform add ios
cordova platform add android
cordova plugin add cordova-plugin-crosswalk-webview
cordova plugin add https://github.com/xseignard/cordovarduino.git
cordova plugin add cordova-plugin-splashscreen
cordova plugin add https://github.com/katzer/cordova-plugin-hidden-statusbar-overlay
cordova prepare
cordova build android --release
#cordova build ios --device --release
cp ./platforms/android/build/outputs/apk/android-armv7-release.apk bin/Kiss-GUI-${VERSION}-android.apk
#cp ./platforms/ios/build/device/KISS\ GUI.ipa bin/Kiss-GUI-${VERSION}-ios.ipa