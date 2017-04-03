#!/bin/bash

#./gradlew assembleRelease  2>errors.txt
#cat errors.txt  | sed -e "s/.*@string\/\(.*\)'.*/\1/" > errors2.txt

#cat errors2.txt | sort -u > errors3.txt


while read line; do
  #echo $line
  grep $line strings_0.xml >> diff.xml
done <errors3.txt




#symbol:   variable status_no_network

#cat error5.txt | sed -e "s/.*R.string.*//" -e "s/.*location: class string.*//" -e "s/.*error: cannot find symbol.*//" -e "s/symbol:.*variable \(.*\)$/\1/" | sort -u > errors6.txt

while read line; do
  #echo $line
  grep "$line" strings_0.xml >> diff2.xml
done <errors6.txt


