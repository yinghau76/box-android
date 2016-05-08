#!/bin/sh

export ANDROID_SDK_VERSION="24.1.2"

# Install SDK
wget "http://dl.google.com/android/android-sdk_r${ANDROID_SDK_VERSION}-linux.tgz"
tar xzf "android-sdk_r${ANDROID_SDK_VERSION}-linux.tgz"
rm "android-sdk_r${ANDROID_SDK_VERSION}-linux.tgz"


# Set environment variables
export ANDROID_HOME=${PWD}/android-sdk-linux
export PATH="${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools"

type android || { echo "Path: $PATH"; echo 'Android not availble after installation, terminating.'; exit 1; }

export ANDROID_BUILD_TOOLS="22.0.1"
export ANDROID_VERSION="5.1"
source $WERCKER_SOURCE_DIR/install-build-tools.sh
export ANDROID_BUILD_TOOLS="21.1.2"
export ANDROID_VERSION="5.0.1"
source $WERCKER_SOURCE_DIR/install-build-tools.sh

export ANDROID_BUILD_TOOLS="21.1.2,22.0.1"


# Write environment variables setup to $profile
echo "export ANDROID_HOME=\"${ANDROID_HOME}\"" | sudo tee -a $profile
echo "export ANDROID_SDK_VERSION=\"${ANDROID_SDK_VERSION}\"" | sudo tee -a $profile
echo "export ANDROID_BUILD_TOOLS=\"${ANDROID_BUILD_TOOLS}\"" | sudo tee -a $profile
echo "export PATH=\"${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools\"" | sudo tee -a $profile

# Print $profile
echo -e "$profile updated to:\n\n$(cat $profile)"
