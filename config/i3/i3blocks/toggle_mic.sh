#!/bin/bash

current=$(pactl get-source-mute @DEFAULT_SOURCE@ | awk '{print $2}')
if [ "$current" = "yes" ]; then
  dunstify -t 2000 -u low "Microphone Muted" -i /home/mc/marc/GitHub/ubuntu/config/dunst/mic-on.png
else
  #send_notification up
  dunstify -t 2000 -u low "Microphone Unmuted" -i /home/mc/marc/GitHub/ubuntu/config/dunst/mic-off.png
fi

