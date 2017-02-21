#!/bin/sh
last=$1
shift
for i; do echo "$last"; last="$i"; done
echo exit
