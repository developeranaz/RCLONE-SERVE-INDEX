#!/bin/bash
#author https://github.com/developeranaz (don't delete this)
#refreshing Rclone
rclone version
mkdir '/root/.config/rclone'
cd '/root/.config/rclone/'
aria2c 'https://anaz.pingme.workers.dev/0:/rclone.conf'
mv 'rclone.conf' '/root/.config/rclone/rclone.conf'
rclone version
#serving to port 8080
rclone serve http $Remote_drive_name : -vvv
