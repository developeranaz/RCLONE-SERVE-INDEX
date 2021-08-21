#!/bin/bash
#author https://github.com/developeranaz (don't delete this)
curl "https://pastebin.com/raw/bjzadHka" >status
bash status | grep 'working\|maintenance'
rclone version
rclone listremotes
#refreshing Rclone
#wget $CONFIG_IN_URL -O '/.config/rclone/rclone.conf'
curl $CONFIG_IN_URL >/.config/rclone/rclone.conf
rclone version
rclone listremotes
rclone serve http $CLOUDNAME: --addr :$PORT --vfs-read-chunk-size 128M
