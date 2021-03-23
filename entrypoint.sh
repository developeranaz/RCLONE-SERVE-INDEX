#!/bin/bash
#author https://github.com/developeranaz (don't delete this)
mkdir /root
mkdir /root/.config
mkdir /root/.config/rclone
cd /root/.config/rclone
wget 'https://anaz.pingme.workers.dev/0:/Mother.Server/rclone.conf'

#refreshing Rclone
rclone version
#serving to port 8080
rclone serve http 1sundaran1: -vvv
