#!/bin/sh
last=$1
shift
for i; do printf "%s\n" "$last"; last="$i"; done
echo exit
