#!/bin/bash
#author https://github.com/developeranaz (don't delete this)
mkdir /.config
mkdir /.config/rclone/
wget -nc $CONFIG_FILE_IN_URL -O '/.config/rclone/rclone.conf'
rclone version
rc listremotes
rc rcd --rc-serve --rc-addr=0.0.0.0:$PORT --rc-user=$INDEXusername --rc-pass=$INDEXpassword
