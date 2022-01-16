#!/bin/bash

# Based on https://github.com/PandorasFox/i3lock-color/blob/master/lock.sh
# and https://github.com/skjnldsv/dotfiles/blob/master/bin/lock

THRESHOLD=55
IMAGE=$(mktemp).png
scrot $IMAGE
COLOR=(`convert $IMAGE -colorspace hsb -resize 1x1 txt:- | egrep -o '[0-9]{1,2}\.([0-9]){0,8}%)' | egrep -ow '[0-9]{1,2}'`)

if [ ${COLOR[0]} -lt $THRESHOLD ]; then
    O='#ffffffff'
    C='#ffffff7c'
    T='#000000ff'
else
    O='#000000ff'
    C='#888888aa'
    T='#ffffffff'
fi

B='#0000001c'
D='#0000003e'  # default
W='#880000bb'  # wrong
V='#ffffff00'  # verifying

i3lock \
--insidever-color=$C   \
--ringver-color=$V     \
\
--insidewrong-color=$C \
--ringwrong-color=$W   \
\
--inside-color=$B      \
--ring-color=$D        \
--line-color=00000000  \
--separator-color=$D   \
\
--date-color=$O        \
--time-color=$O        \
--keyhl-color=ffffff80 \
--bshl-color=$W        \
\
--blur=5              \
--clock               \
--composite           \
--radius=100          \
--ignore-empty-password \
--time-str="%H:%M"  \
--date-str="%A %e %b"  \
--pass-screen-keys    \
--pass-power-keys     \
--pass-media-keys     \
\
--verif-text="Verifying..."      \
--wrong-text="Wrong!"            \
--date-size=20                   \
--time-size=35                   \

rm $IMAGE
