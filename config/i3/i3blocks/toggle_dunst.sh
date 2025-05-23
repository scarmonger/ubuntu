#!/bin/bash

# Check if Dunst is running
if pgrep -x dunst > /dev/null; then
    dunstify "Mute Notification" -i /home/mc/marc/GitHub/ubuntu/config/dunst/bell-off.png
    echo "Stopping Dunst..."
    sleep 2  # Small delay for stability
    # systemctl --user stop dunst
    pkill dunst
else
    echo "Starting Dunst..."
    systemctl --user start dunst
    notify-send "Unmute Notification" -i /home/mc/marc/GitHub/ubuntu/config/dunst/bell-ring.png
    sleep 2  # Small delay for stability
fi

