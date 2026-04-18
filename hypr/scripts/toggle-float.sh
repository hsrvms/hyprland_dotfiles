#!/bin/bash

# Check if the currently active window is floating
is_floating=$(hyprctl activewindow -j | jq '.floating')

if [ "$is_floating" = "false" ]; then
    # It's currently tiled. Make it float, resize, and center it.
    hyprctl --batch "dispatch togglefloating; dispatch resizeactive exact 1200 800; dispatch centerwindow"
else
    # It's currently floating. Just toggle it back to tiled.
    hyprctl dispatch togglefloating
fi
