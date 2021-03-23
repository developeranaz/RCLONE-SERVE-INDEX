#!/bin/bash
#author https://github.com/developeranaz (don't delete this)

#refreshing Rclone
rclone version
#serving to port 8080
screen -d -n rclone serve http 1sundaran1: -vvv
