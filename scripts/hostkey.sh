#!/bin/sh
cd /certs/ssh/ca/hostkeys || exit
ssh-keygen -s /certs/ssh/ca -I "$1" -n "$1" -h "$1".pub