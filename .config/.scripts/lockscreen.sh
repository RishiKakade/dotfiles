#!/bin/sh -e

# Take a screenshot
scrot /tmp/XXXXXXXXXX.png

# Pixellate it 10x
mogrify -scale 10% -scale 1000% /tmp/XXXXXXXXXX.png

# Lock screen displaying this image.
i3lock -i /tmp/XXXXXXXXXX.png

# Turn the screen off after a delay.
sleep 60; pgrep i3lock && xset dpms force off
