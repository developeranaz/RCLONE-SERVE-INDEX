#!/bin/bash
#author https://github.com/developeranaz (don't delete this)
rclone version
rclone listremotes
#refreshing Rclone
wget $CONFIG_IN_URL -O '/.config/rclone/rclone.conf'
wget $AUTH_FILE_URL -O authfile
rclone version
rclone listremotes
rclone serve http $CLOUDNAME: --addr :$PORT --vfs-read-chunk-size 128M --htpasswd authfile
