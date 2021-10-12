#!/bin/bash
#author https://github.com/developeranaz (don't delete this)
rclone version
mkdir /.config
mkdir /.config/rclone/
wget "$CONFIG_IN_URL" -O /.rclone.conf
rclone listremotes
rclone rcd --rc-serve --rc-addr=:$PORT --rc-user=$USER --rc-pass=$PASSWORD
