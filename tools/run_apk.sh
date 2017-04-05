#!/bin/bash

if [ x$1 == xDEBUG ]
then
  APK="k9mail-debug.apk"
else
  APK="k9mail-signed.apk"
fi

$ANDROID_HOME/platform-tools/adb -e install -r $APK

