#!/bin/sh
cd /certs/ssh/clients || mkdir -p /certs/ssh/clients || exit
principal="$1"
filename="$2"
if [ ! -f "$filename" ]; then
    ssh-keygen -f "$filename" -t ed25519 -N ""
fi
ssh-keygen -s /certs/ssh/ca -I "$filename" -n "$principal" "$filename".pub