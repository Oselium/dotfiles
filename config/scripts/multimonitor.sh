#!/bin/sh

#vertical [HDMI2]
#	  [eDP1]

xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x1080 --rotate normal --output DP1 --off --output DP2 --off --output HDMI1 --off --output HDMI2 --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off

# horizontal: [eDP1][HDMI2]
#xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x1080 --rotate normal --output DP1 --off --output DP2 --off --output HDMI1 --off --output HDMI2 --mode 1920x1080 --pos 1920x1080 --rotate normal --output VIRTUAL1 --off
