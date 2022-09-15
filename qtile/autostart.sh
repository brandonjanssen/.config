#!/bin/bash

#xdg-user-dirs-update &
#/etc/xdg/autostart/polkit-gnome-authentication-agent-1.desktop &
#lxsession &
feh --randomize --bg-fill /home/dmne/Pictures/background &
picom -f &
#blueberry-tray &
blueman-applet &
#pasystray &
nm-applet &
# syncthing &
# mpd &
volumeicon &
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
nix daemon --extra-experimental-features nix-command &

