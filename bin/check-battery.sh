#!/bin/bash
BAT=`upower -i $(upower -e | grep BAT) | grep --color=never -E percentage|xargs|cut -d' ' -f2|sed s/%//`
CHR=`upower -i $(upower -e | grep BAT) | grep --color=never -E state|xargs|cut -d' ' -f2|sed s/%//`
if [ $BAT -le 5 ] && [ $CHR != "charging" ]; then
    notify-send --urgency critical "Hibernando..."
    /usr/bin/systemctl hibernate
elif [ $BAT -le 15 ] && [ $CHR != "charging" ]; then
    notify-send --urgency critical "¡Batería baja!" "$BAT %"
fi

