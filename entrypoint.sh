#!/bin/bash
#author https://github.com/developeranaz (don't delete this)
rclone listremotes
wget $CONFIG_IN_URL -O '/rclone.conf'
#curl $CONFIG_IN_URL >/rclone.conf
rclone version
rclone listremotes
rclone serve http $CLOUDNAME: --config /rclone.conf --addr :$PORT --vfs-read-chunk-size 128M
