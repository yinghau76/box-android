#!/bin/sh
# Install all available sdk tools
export ANDROID_UPDATE_FILTER="`tr '\n' ',' <$WERCKER_SOURCE_DIR/filter.list`"
echo "export ANDROID_UPDATE_FILTER=\"${ANDROID_UPDATE_FILTER\"" | sudo tee -a $profile

expect -f /pipeline/build/android-update.exp "$ANDROID_UPDATE_FILTER"
echo "export ANDROID_UPDATE_FILTER=\"${ANDROID_UPDATE_FILTER}\"" | sudo tee -a $profile
