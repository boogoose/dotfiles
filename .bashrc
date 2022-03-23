#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

#########################################################################################
#                                  Options                                              #
#########################################################################################

shopt -s histappend # Enable history appending instead of overwriting
set -o vi           # Enable vi mode

#########################################################################################
#                                  Alias                                                #
#########################################################################################

alias ls='ls --color=auto'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias rm='trash-put'

#########################################################################################
#                                  EXports                                              #
#########################################################################################

export COMPUTER=desktop
#export COMPUTER=laptop
#export COMPUTER=VM
export FONTCONFIG_PATH=/etc/fonts
export QT_QPA_PLATFORMTHEME=qt5ct
export RANGER_LOAD_DEFAULT_RC=FALSE     # Prevent duplicate loading of Ranger config
export EDITOR=nvim                  
export PATH="${PATH}:usr/bin:/$HOME/.local/bin:$HOME/.local/scripts:/usr/bin"
export TERMINAL=alacritty               # Variable used by I3wm
#export MANPAGER="nvim -c 'set ft=man' -"	#stopped using - overstriking display issues
###
if [[ "$(command -v nvim)" ]]; then		# https://jdhao.github.io/2020/11/11/nifty_nvim_techniques_s8/
    export EDITOR='nvim'
    export MANPAGER='nvim +Man!'
    export MANWIDTH=999
fi
export XDG_DATA_HOME=$HOME/.local/share
#########################################################################################
#                                  Source                                               #
#########################################################################################

source /usr/share/fzf/completion.bash   # fzf completion
source /usr/share/fzf/key-bindings.bash # fzf keybindings

#########################################################################################
#                                  Archive EXtraction                                   # 
#########################################################################################

# Establish generalised extraction command - "ex"
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.xz)	   tar xf $1	;;		# TODO: this doesn't work for some reason
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

##########################################################################################
##                                  Powerline Shell                                      #
##########################################################################################
#
#function _update_ps1() {
#	PS1=$(powerline-shell $?)
#}
#
#if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
#	PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi

##########################################################################################
#                                  Starship Prompt                                       #
##########################################################################################


eval "$(starship init bash)"


