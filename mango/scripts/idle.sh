#!/bin/bash

# Kill any existing swayidle processes to prevent overlap
killall swayidle 2>/dev/null

swayidle -w \
    timeout 240 'brightnessctl -s set 10%' resume 'brightnessctl -r' \
    timeout 300 'qs -c noctalia-shell ipc call lockScreen lock' \
    timeout 600 'systemctl suspend' \
    before-sleep 'qs -c noctalia-shell ipc call lockScreen lock' &
