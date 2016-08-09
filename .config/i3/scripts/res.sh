#!/bin/bash
xrandr --auto --output HDMI2 --mode 1920x1080
xrandr --auto --output VGA1 --mode 1920x1080 --left-of HDMI2 --primary
xrandr --auto --output HDMI1 --mode 1920x1080 --right-of HDMI2

## Laptop
xrandr --auto --output DP2 --mode 1920x1080 --primary
xrandr --auto --output DP1-2 --mode 1920x1080 --right-of DP2
