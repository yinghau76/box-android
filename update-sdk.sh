#!/bin/sh
# Install all available sdk tools
export ANDROID_UPDATE_FILTER="`tr '\n' ' ' <$WERCKER_SOURCE_DIR/filter.list`"
expect -f /pipeline/build/android-update.exp "$ANDROID_UPDATE_FILTER"