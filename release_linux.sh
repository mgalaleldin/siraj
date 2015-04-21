#!/bin/bash

# Cleanup the locatoin where the frozen code will reside
rm -rf release/linux/*
# Make a directory to hold the frozen application
mkdir release/linux/siraj_linux
# Freeze current code
/usr/local/bin/cxfreeze siraj.py --target-dir release/linux/siraj_linux
# Copy necessary files into the frozen folder
cp siraj.py README.md sample.log siraj_configs.json siraj_screenshot.png sj_configs.py release/linux/siraj_linux
# Compress the frozen folder
cd release/linux
tar cfz siraj_linux.tar.gz siraj_linux 
# Delete the uncompressed folder
rm -rf siraj_linux
