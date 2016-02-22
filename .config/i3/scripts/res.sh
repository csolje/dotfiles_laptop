#!/bin/bash
xrandr --auto --output HDMI1 --mode 1920x1080
xrandr --auto --output VGA1 --mode 1920x1080 --left-of HDMI1 --primary
xrandr --auto --output HDMI2 --mode 1920x1080 --right-of HDMI1
