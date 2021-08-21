#!/bin/bash
#author https://github.com/developeranaz (don't delete this)
rc version
wget $CONFIG_IN_URL -O '/.config/rclone/rclone.conf'
rc listremotes
rc rcd --rc-serve --rc-addr=0.0.0.0:$PORT --rc-user=$INDEXusername --rc-pass=$INDEXpassword
