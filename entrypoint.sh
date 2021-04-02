#!/bin/bash
#author https://github.com/developeranaz (don't delete this)
#refreshing Rclone
rclone version
#serving to port 8080
#rclone serve http $CLOUDNAME: --addr :$PORT
rclone serve http $CLOUDNAME: --addr :$PORT --vfs-read-chunk-size 128M
