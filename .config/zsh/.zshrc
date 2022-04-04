#!/bin/sh

export ZDOTDIR=$HOME/.config/zsh
HISTFILE=$XDG_DATA_HOME/zsh/history
HISTSIZE=1000000
SAVEHIST=1000000

#############
##### OPTIONS
#shopt -s histappend # Enable history appending instead of overwriting
setopt APPEND_HISTORY
# set -o vi           # Enable vi mode: disable while testing new function
setopt beep extendedglob nomatch notify

#################
##### COMPLETIONS
autoload -Uz compinit
compinit
#zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' menu select
#zstyle :compinstall filename '$HOME/.zshrc' #TODO check what this was

zmodload zsh/complist
# compinit
_comp_options+=(globdots)		# Include hidden files.

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
autoload -U forward-word
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
zle -N forward-word
#zle -N vi-forward-word

# zle -N backward-word

#############
##### ALIASES
source $HOME/.config/shell/Shell_Aliases

#############
##### EXPORTS
source $HOME/.config/shell/Shell_Exports

############
##### PROMPT
eval "$(starship init zsh)"

#Prompt themes 
autoload -Uz promptinit
promptinit

#############
##### COLOURS
autoload -Uz colors && colors

###############
##### FUNCTIONS
source "$ZDOTDIR/zsh-functions"

##############
##### VIM-MODE
zsh_add_file "zsh-vim-mode"

#############
##### PLUGINS
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"

########
#### NVM
#source /usr/share/nvm/init-nvm.sh
[ -f /usr/share/nvm/init-nvm.sh ] && . /usr/share/nvm/init-nvm.sh

##########################################
##### REMEMBER RECENT DIRECTORIES
##### https://wiki.archlinux.org/title/Zsh
##########################################
#autoload -Uz add-zsh-hook
#
#DIRSTACKFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/dirs"
#if [[ -f "$DIRSTACKFILE" ]] && (( ${#dirstack} == 0 )); then
#	dirstack=("${(@f)"$(< "$DIRSTACKFILE")"}")
#	[[ -d "${dirstack[1]}" ]] && cd -- "${dirstack[1]}"
#fi
#chpwd_dirstack() {
#	print -l -- "$PWD" "${(u)dirstack[@]}" > "$DIRSTACKFILE"
#}
#add-zsh-hook -Uz chpwd chpwd_dirstack
#
#DIRSTACKSIZE='20'
#
#setopt AUTO_PUSHD PUSHD_SILENT PUSHD_TO_HOME
#
### Remove duplicate entries
#setopt PUSHD_IGNORE_DUPS
#
### This reverts the +/- operators.
#setopt PUSHD_MINUS
#
####################
####### MISC
#source /usr/share/nvm/init-nvm.sh
#
###################
###### KEY-BINDINGS
#bindkey -s '^o' 'ranger^M'
#bindkey -s '^f' 'zi^M'
#bindkey -s '^s' 'ncdu^M'
# bindkey -s '^n' 'nvim $(fzf)^M'
# bindkey -s '^v' 'nvim\n'
#bindkey -s '^z' 'zi^M'
#bindkey '^[[P' delete-char
#bindkey "^p" up-line-or-beginning-search # Up
#bindkey "^n" down-line-or-beginning-search # Down
bindkey "^k" up-line-or-beginning-search # Up
bindkey "^j" down-line-or-beginning-search # Down
#bindkey -r "^u"
##bindkey -r "^d"
bindkey -s "^w" forward-word	
#bindkey -s '^o' 'forward-word'
#bindkey -s "^b" backward-word
# bindkey ^w forward-word

##############
##### REFUGEES

###zsh new user
#bindkey -v	#suspended: expect this might conflict with vim mode
#
#### Lines copied from .bashrc
## If not running interactively, don't do anything
#[[ $- != *i* ]] && return
#
#PS1='[\u@\h \W]\$ '

