#!/bin/sh

laptop="eDP1"
external="DP1"
hdmi="HDMI1"

if (xrandr | grep -e "^$external connected"); then
  xrandr --output $laptop --primary --mode 1920x1080 --rotate normal \
         --output $external --above $laptop --mode 2560x1440 --rotate normal \
         --output $hdmi --off \
         --output VIRTUAL1 --off
elif (xrandr | grep -e "^$hdmi connected"); then
  xrandr --output $laptop --primary --mode 1920x1080 --rotate normal \
         --output $hdmi --above $laptop --mode 1920x1200 --rotate normal \
         --output $external --off \
         --output VIRTUAL1 --off
else
  xrandr --output $laptop --mode 1920x1080 --rotate normal \
         --output $external --off  \
         --output $hdmi --off \
         --output VIRTUAL1 --off
fi
