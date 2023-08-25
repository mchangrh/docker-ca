#!/bin/sh
cd /certs/ssh/ca/clients || exit
ssh-keygen -s /certs/ssh/ca -I "$1" -n "$2" "$1".pub