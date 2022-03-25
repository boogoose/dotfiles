#
# ~/.zprofile
#
# copied mostly from chris@machine
#

emulate sh -c 'source /etc/profile'

[[ -f ~/.zshrc ]] && . ~/.zshrc
export PATH="${PATH}:usr/bin:$HOME/.local/bin:$HOME/.local/scripts:/usr/bin:"

