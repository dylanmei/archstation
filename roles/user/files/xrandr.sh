#!/bin/sh

primary="DP1"
external="eDP1"

if (xrandr | grep "$external disconnected"); then
  xrandr --output $primary --mode 2560x1440 \
         --output $external --off  \
         --output HDMI1 --off \
         --output VIRTUAL1 --off
else
  xrandr --output $primary --primary --mode 2560x1440 \
         --output $external --below $primary --mode 1920x1080 \
         --output HDMI1 --off \
         --output VIRTUAL1 --off
fi
