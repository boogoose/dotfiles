#!/bin/bash
#
#~/.xinitrc

#####################################################################

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

[ -f ~/.Xmodmap ] && . ~/.Xmodmap

#####################################################################

if [ $COMPUTER == "x220" ]
		then
		createi3config
fi

exec i3
