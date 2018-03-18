#!/bin/bash

APK_DIR=k9mail/build/outputs/apk

./gradlew clean

rm -rf build

LANG=bg
LANG="$LANG ca"
LANG="$LANG cs"
LANG="$LANG da"
LANG="$LANG de"
LANG="$LANG el"
LANG="$LANG es"
LANG="$LANG et"
LANG="$LANG eu"
LANG="$LANG fa"
LANG="$LANG fi"
LANG="$LANG fr"
LANG="$LANG gl"
LANG="$LANG gl-rES"
LANG="$LANG hr"
LANG="$LANG hu"
LANG="$LANG it"
LANG="$LANG iw"
LANG="$LANG ja"
LANG="$LANG ko"
LANG="$LANG lt"
LANG="$LANG lv"
LANG="$LANG nb"
LANG="$LANG nl"
LANG="$LANG pl"
LANG="$LANG pt-rBR"
LANG="$LANG pt-rPT"
LANG="$LANG ro"
LANG="$LANG ru"
LANG="$LANG sk"
LANG="$LANG sl"
LANG="$LANG sr"
LANG="$LANG sv"
LANG="$LANG tr"
LANG="$LANG uk"
LANG="$LANG zh-rCN"
LANG="$LANG zh-rTW"

echo $LANG

echo "brisem sve jezike osim bosanskog"

for lang in $LANG
do
   find . -name "values-$lang" -type d -exec  rm -rf {} \;
done

echo "echo iz bs setujem strings.xml"

#cp ./k9mail/src/main/res/values-bs/strings.xml  ./k9mail/src/main/res/values/strings.xml
mkdir -p $APK_DIR


if [ x$1 == xDEBUG ]
then
  ./gradlew assembleDebug
   #cp $APK_DIR/k9mail-debug.apk .

else
  ./gradlew assembleRelease
fi



#echo "uraditi 'git checkout -f' da se vrate jezici"

