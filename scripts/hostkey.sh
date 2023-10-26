#!/bin/sh
cd /certs/ssh/hostkeys || mkdir -p /certs/ssh/hostkeys || exit
principal=$1
filename=$2
if [ ! -f "$filename" ]; then
    filename="$principal"
fi
ssh-keygen -s /certs/ssh/ca -I "$principal" -n "$principal" -h "$filename".pub