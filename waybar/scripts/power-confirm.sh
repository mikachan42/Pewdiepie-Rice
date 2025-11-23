#!/bin/bash

choice=$(echo -e "No\nYes" | wofi --dmenu --prompt="Shutdown the system?")

if [ "$choice" == "Yes" ]; then
        systemctl poweroff
fi

