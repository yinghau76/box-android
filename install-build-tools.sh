#!/bin/sh

wget https://dl-ssl.google.com/android/repository/build-tools_r${ANDROID_BUILD_TOOLS}-linux.zip
unzip build-tools_r${ANDROID_BUILD_TOOLS}-linux.zip -d $ANDROID_HOME
mkdir -p $ANDROID_HOME/build-tools/
mv $ANDROID_HOME/android-4.3 $ANDROID_HOME/build-tools/${ANDROID_BUILD_TOOLS}
