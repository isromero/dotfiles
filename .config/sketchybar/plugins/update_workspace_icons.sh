#!/bin/bash

# Source colors
source "$HOME/.config/sketchybar/colors.sh"

# Get the focused workspace from aerospace
FOCUSED_WORKSPACE=$AEROSPACE_FOCUSED_WORKSPACE

# Update all workspaces
for monitor in $(aerospace list-monitors --format "%{monitor-appkit-nsscreen-screens-id}"); do
    for sid in $(aerospace list-workspaces --monitor "$monitor"); do
        # Get windows in this workspace
        apps=$(aerospace list-windows --workspace "$sid" | awk -F'|' '{gsub(/^ *| *$/, "", $2); print $2}')
        
        # Update workspace appearance based on focus
        if [ "$sid" = "$FOCUSED_WORKSPACE" ]; then
            sketchybar --set space.$sid \
                background.color=$ACCENT_COLOR \
                icon.color=$BAR_COLOR \
                label.color=$BAR_COLOR
        else
            sketchybar --set space.$sid \
                background.color=$ITEM_BG_COLOR \
                icon.color=$WHITE \
                label.color=$WHITE
        fi
        
        # Update application icons
        icon_strip=""
        if [ "${apps}" != "" ]; then
            while read -r app; do
                [ -n "$app" ] && icon_strip+=" $($HOME/.config/sketchybar/plugins/icon_map_fn.sh "$app")"
            done <<<"${apps}"
        fi
        sketchybar --set space.$sid label="$icon_strip"
    done
done