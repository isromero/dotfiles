#!/usr/bin/env bash

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set $NAME background.color=$ITEM_BG_COLOR label.shadow.drawing=on icon.shadow.drawing=off background.border_width=2
else
  sketchybar --set $NAME background.color=$ITEM_BG_COLOR label.shadow.drawing=off icon.shadow.drawing=off background.border_width=0
fi