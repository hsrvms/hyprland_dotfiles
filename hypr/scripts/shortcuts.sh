#!/bin/bash

CONFIG_FILE="$HOME/.config/hypr/modules/binds.conf"
THEME_FILE="$HOME/.config/rofi/launchers/type-1/style-11.rasi"

grep "^bind" "$CONFIG_FILE" | \
sed -E 's/^bind[A-Za-z]*\s*=\s*//' | \
sed 's/,/ | /1' | \
sed 's/,/ -> /1' | \
rofi -dmenu -i -p "Shortcuts" -theme "$THEME_FILE" -theme-str 'window {width: 45%;} listview {lines: 15;}'
