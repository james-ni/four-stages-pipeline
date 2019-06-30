#!/usr/bin/env bash
echo 'Starting my app'
cd '/home/ubuntu'
#!The & symbol, switches the program to run in the background.
java -jar fourstagespipeline-0.0.1-SNAPSHOT.jar >/dev/null 2>&1 & echo $! > ./pid.file &
