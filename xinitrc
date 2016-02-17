#!/bin/sh
# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

setxkbmap -layout dk
urxvtd -q -o -f &
compton -b &
feh --bg-fill --randomize ~/Pictures/wallpapers/* &
stalonetray &
volumeicon &
nm-applet &

#trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 6 --transparent true --alpha 0 --tint 0x000000 --height 16 &
# Start Window Manager
#exec i3
#exec awesome
exec xmonad
#exec bspwm-session
#exec openbox-session
#
#$DEFAULTSESSION=openbox-session
#case $1 in
#    i3              ) exec i3;;
#    Openbox         ) exec openbox-session;;
#    Awesome         ) exec awesome;;
#    Xmonad          ) exec xmonad;;
#    Bspwm           ) exec bspwm-session;;
#    *) exec $DEFAULTSESSION;;
#esac
