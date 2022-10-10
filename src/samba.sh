#!/bin/bash

addgroup --gid 1001 smbarchive

adduser --home /tmp/ --uid 1026 --gid 100 --disabled-login media
adduser --home /tmp/ --uid 1027 --gid 1001 --disabled-login  smbarchive

cp /samba.service /etc/avahi/services

ionice -c 3 nmbd -F --debuglevel=1 --debug-stdout --no-process-group </dev/null &
ionice -c 3 smbd -F --debuglevel=1 --debug-stdout --no-process-group </dev/null

rm /etc/avahi/services/samba.service
