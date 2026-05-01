#!/bin/bash

# Fetch the floating status of the focused client
FLOAT_STATE=$(mmsg -g -f)

# Check if the window is already floating (handling common mmsg boolean outputs)
if [[ "$FLOAT_STATE" == "1" ]] || [[ "$FLOAT_STATE" == *"true"* ]]; then
    # The window is currently floating.
    # Just revert it to tiled. MangoWM natively remembers the tiled position.
    mmsg -d togglefloating
else
    # The window is currently tiled.
    # 1. Make it float
    mmsg -d togglefloating

    # 2. Add a microscopic delay. Wayland IPC calls can hit race conditions
    # where the resize fires before the compositor fully registers the float state.
    sleep 0.15

    # 3. Apply your custom geometry
    mmsg -d resizewin,800,600
    mmsg -d centerwin
fi
