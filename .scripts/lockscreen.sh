#!/bin/bash
icon="$HOME/pictures/ship.png"
convert $icon -resize 50% /tmp/resized.png 
icon="/tmp/resized.png"
# create a temp file
img=$(mktemp /tmp/XXXXXXXXXX.png)
# Take a screenshot of current desktop
import -window root $img 
# Pixelate the screenshot
#convert $img -scale 10% -scale 1000% $img
# Alternatively, blur the screenshot (slow!)
convert $img -blur 0x6 $img
# Add the lock image
convert $img $icon -gravity center -composite $img
# Run i3lock with custom background
i3lock -b -u  -i $img
# Remove the tmp file
rm $img
# Turn the screen off after an hour.
sleep 60; pgrep i3lock && xset dpms force off
