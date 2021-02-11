#!/bin/bash
#
#~/.xinitrc

#####################################################################
#                  APPETIZERS                                       #
#####################################################################

~/.fehbg &          # Set wallpaper
udiskie -t &        # Start udiskie - with system tray icon
xset +fp ~/.local/share/fonts/  # Prepend custom font path to Xorg's list of known font paths

#####################################################################
#                  MAIN                                             #
#####################################################################

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

[ -f ~/.Xmodmap ] && . ~/.Xmodmap

#####################################################################
#                  COFFEE                                           #
#####################################################################

exec i3
