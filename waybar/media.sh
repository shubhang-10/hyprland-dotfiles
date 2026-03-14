#!/bin/bash

status=$(playerctl --player=spotify status 2>/dev/null)

if [ "$status" = "Playing" ]; then
    icon=""   # pause icon
else
    icon=""   # play icon
fi

artist=$(playerctl --player=spotify metadata artist 2>/dev/null)
title=$(playerctl --player=spotify metadata title 2>/dev/null)

if [ -z "$artist" ] && [ -z "$title" ]; then
    echo "$icon  Nothing playing"
else
    echo "$icon  $artist - $title"
fi