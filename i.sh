#!/usr/bin/bash

# Copy the Luna library into the APK.
cd apk
cp ../libluna/build/src/Luna/libLuna.so lib/armeabi-v7a/libLuna.so

# Build.
apktool b -o luna.apk

# Sign.
java -jar ../uber-apk-signer.jar --apks luna.apk --overwrite

# Install APK.
adb install -r luna.apk

adb logcat -c
adb logcat luna:I *:S
