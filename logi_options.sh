#!/bin/zsh

MSG="[$(date +"%m/%d/%Y %H:%M:%S")]: Killing Logi Options."

mkdir -p ~/workspace/scripts/logi_options/.logs/
echo $MSG >> ~/workspace/scripts/logi_options/.logs/log

LOGI_PID=$(ps aux | grep 'LogiMgrDaemon' | awk 'NR==1{print $2}')

echo "Killing Logi. ($LOGI_PID)"

kill -9 $LOGI_PID