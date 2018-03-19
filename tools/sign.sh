#!/bin/bash


cp ~/upload_key.ks .
cp ./k9mail/build/outputs/apk/release/k9mail-release-unsigned.apk .

jarsigner -verbose  -sigalg SHA1withRSA -digestalg SHA1 -keystore upload_key.ks k9mail-release-unsigned.apk "upload"
[ -f k9mail-signed ] && rm k9mail-signed.apk
$ANDROID_HOME/build-tools/27.0.3/zipalign 4 k9mail-release-unsigned.apk  k9mail-signed.apk

cp k9mail-signed.apk
