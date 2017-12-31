#!/bin/bash
BAT=`upower -i $(upower -e | grep BAT) | grep --color=never -E percentage|xargs|cut -d' ' -f2|sed s/%//`
if [ $BAT -le 15 ]; then
    notify-send --urgency critical "¡Batería baja!" "$BAT %"
fi

