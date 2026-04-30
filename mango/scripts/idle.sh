#!/bin/bash

# Kill any existing swayidle processes to prevent overlap
killall swayidle 2>/dev/null

swayidle -w \
    timeout 1800 'brightnessctl -s set 10%' resume 'brightnessctl -r' \
    timeout 1860 'qs -c noctalia-shell ipc call lockScreen lock' \
    timeout 1920 'systemctl suspend' \
    before-sleep 'qs -c noctalia-shell ipc call lockScreen lock' &
