#!/usr/bin/bash

cd apk
cp ../libluna/build/src/libluna.so lib/armeabi-v7a/libluna.so

apktool b -o luna.apk
java -jar ../uber-apk-signer.jar --apks luna.apk --overwrite
adb install -r luna.apk

adb logcat -c

echo "[+] Executing logcat..." 
adb logcat luna:I *:S
