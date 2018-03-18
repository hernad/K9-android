#!/bin/bash

set -xv

SIGNING_NAME="bring.out doo Sarajevo"
BUILD_TOOLS_VER=27.0.3
VALID_DAYS=20000

cd k9mail/build/outputs/apk

#if [ ! -f bringout-android.keystore ]
#then
#   echo generating keystore
#   keytool -genkey -v -keystore bringout-android.keystore -alias \
#            "$SIGNING_NAME" -keyalg RSA -keysize 2048 --validity $VALID_DAYS 
#
#fi

jarsigner -verbose -keystore bringout-android.keystore \
      k9mail-release-unsigned.apk "$SIGNING_NAME"


rm k9mail-signed.apk 

$ANDROID_HOME/build-tools/$BUILD_TOOLS_VER/zipalign 4 \
    k9mail-release-unsigned.apk  k9mail-signed.apk


cp k9mail-signed.apk ../../../../
 
cd ../../../../
 
ls -lh k9mail-signed.apk
