#!/bin/bash

# Find hwmon device for joint core temp.
for i in /sys/class/hwmon/hwmon*/temp*_input; do 
    if [ "$(<$(dirname $i)/name): $(cat ${i%_*}_label 2>/dev/null || echo $(basename ${i%_*}))" = "coretemp: Package id 0" ]; then
        export HWMON_PATH="$i"
    fi
done

kill -9 $(pidof polybar)

if type "xrandr"; then
	monitors=$(xrandr --query | grep " connected" | cut -d" " -f1)
	primary=$(xrandr --query | grep "primary" | cut -d" " -f1)
	#len=$(echo "$monitors" | wc -w)

	for m in $monitors; do
		if [[ $m == $primary ]]; then
			export TRAY_POS="right"
		else
			export TRAY_POS=""
		fi
    	MONITOR=$m polybar -r top &
 	done
else
	polybar -r top &
fi
