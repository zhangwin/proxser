#!/bin/sh
nohup /app/proser64 > /dev/null 2>&1 &
/usr/sbin/nginx
