#!/bin/sh
#
#
# Openbox resource configuration script
# -------------------------------------
#gnome-settings-daemon
  # hvad er dette?
#xcompmgr &
compton &
#xrandr --output DP1 --mode 1920x1080 --primary --output eDP1 --mode 1366x768 --same-as DP1 &
feh --bg-scale ~/wallpapers/wallpaper.png &
#nitrogen --restore &

obsetlayout 0 4 3 0 &
#setlayout 0 4 3 0 &
#conky -a top_left &
tint2 &
#xfce4-panel &
#gnome-power-manager &
#gnome-screensaver &
#bluetooth-applet &
#gnome-volume-control-applet &
#xfce4-power-manager &
#xfce4-volumed &
#nm-applet &
XScreenSaver &
