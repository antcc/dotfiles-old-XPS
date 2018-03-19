#!/bin/bash

read -r X Y W H < <(slop -f "%x %y %w %h")

i3-msg 'exec tilix --geometry=$Xx$Y+$W+$H -t "Floating"'
