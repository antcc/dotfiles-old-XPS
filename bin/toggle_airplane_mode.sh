#!/bin/bash

radio="$(nmcli radio all | awk 'FNR == 2 {print $2}')"

if [[ "$radio" = "activado" || "$radio" = "enabled" ]]; then
    nmcli radio wifi off
else
    nmcli radio wifi on
fi

#if rfkill list bluetooth | grep -q 'yes$' ; then
#    rfkill unblock bluetooth
#else
#    rfkill block bluetooth
#fi
