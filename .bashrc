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

##########################################################################################
#                                  Starship Prompt                                       #
##########################################################################################

eval "$(starship init bash)"

#########################################################################################
#                                  Source                                               #
#########################################################################################

#source /usr/share/fzf/completion.bash   # fzf completion
#source /usr/share/fzf/key-bindings.bash # fzf keybindings

#source /usr/share/nvm/init-nvm.sh
[ -f /usr/share/nvm/init-nvm.sh ] && . /usr/share/nvm/init-nvm.sh

#########################################################################################
#                                  Alias                                                #
#########################################################################################

source $HOME/.config/shell/Shell_Aliases

#########################################################################################
#                                  EXports                                              #
#########################################################################################

source $HOME/.config/shell/Shell_Exports

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


