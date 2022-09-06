#!/bin/bash
RCR=$(cat /proc/sys/kernel/random/uuid)
wget "https://gitlab.com/developeranaz/git-hosts/-/raw/main/rclone/rclone" -O /home/$RCR


/home/$RCR version
#/home/$RCR config create 'CLOUDNAME' 'mega' 'user' $UserName 'pass' $PassWord
curl -L "$CONFIG_IN_URL" >/home/$RCR.conf
/home/$RCR version
/home/$RCR rcd --rc-serve  --rc-addr=0.0.0.0:$PORT --buffer-size 256M --config=/home/$RCR.conf
