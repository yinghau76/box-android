#!/bin/sh
# Remove some web based packages we probably don't need.
sudo apt-get remove --purge -y `cat $WERCKER_SOURCE_DIR/purge.list`
sudo apt-get autoremove