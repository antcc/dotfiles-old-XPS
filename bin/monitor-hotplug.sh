#!/bin/bash

#export DISPLAY=:0
 
function connect(){
autorandr monitor
}
 
function disconnect(){
autorandr laptop
}
 
xrandr | grep "DP1-2 connected" &> /dev/null && connect || disconnect


# Add udev rule in /etc/udev/rules.d:
# ACTION=="change", SUBSYSTEM=="drm", HOTPLUG=="1", RUN+="/usr/local/bin/monitor-hotplug.sh"
