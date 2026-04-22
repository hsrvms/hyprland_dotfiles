#!/bin/bash
mkdir -p ~/Pictures/Screenshots
grim -g "$(slurp)" - | satty --filename - --output-filename ~/Pictures/Screenshots/satty-$(date "+%Y%m%d-%H%M%S").png
