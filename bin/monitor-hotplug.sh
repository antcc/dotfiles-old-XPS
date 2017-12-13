export DISPLAY=:0
 
function connect(){
xrandr --output DP1 --auto --output eDP1 --off
}
 
function disconnect(){
xrandr --output eDP1 --auto --output DP1 --off
}
 
xrandr | grep "DP1 connected [^p]" &> /dev/null && connect || xrandr | grep "DP1 connected p" &> /dev/null && disconnect


# Add udev rule in /etc/udev/rules.d:
# ACTION=="change", SUBSYSTEM=="drm", HOTPLUG=="1", RUN+="/usr/local/bin/monitor-hotplug.sh"
