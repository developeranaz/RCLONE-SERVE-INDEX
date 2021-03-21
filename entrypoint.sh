#!/bin/bash
#author https://github.com/developeranaz (don't delete this)
#refreshing Rclone
rclone version
mkdir '/root/.config/rclone'
cd '/root/.config/rclone/'
aria2c $config_url
