#!/bin/sh
# Note the Zap installer didn't include a shebang

#
#
# Created by Zap installer
#[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
#plug "zsh-users/zsh-autosuggestions"
#plug "zap-zsh/supercharge" plug "zap-zsh/zap-prompt"
#plug "zsh-users/zsh-syntax-highlighting"

# Load and initialise completion system
#autoload -Uz compinit
#compinit

# xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
#

#!/bin/sh

# zmodload zsh/zprof

[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

export ZDOTDIR=$HOME/.config/zsh

# history
HISTFILE=$XDG_DATA_HOME/zsh/history
HISTSIZE=1000000
SAVEHIST=1000000

# source
source "$HOME/.config/shell/Shell_Aliases"
source "$HOME/.config/shell/Shell_Exports"
# source "$HOME/.config/shell/pomodoro.sh"

source /usr/share/nvm/init-nvm.sh

# The following lines were added by compinstall

# zstyle ':completion:*' completer _complete _ignored
# zstyle :compinstall filename '/home/user1/.config/zsh/.zshrc'
#
# autoload -Uz compinit
# compinit
# End of lines added by compinstall

# eval
eval "$(zoxide init zsh)"

# plugins
plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"
plug "zap-zsh/supercharge"
plug "zap-zsh/vim"
plug "zap-zsh/zap-prompt"
plug "zap-zsh/fzf"
plug "zap-zsh/exa"
plug "zsh-users/zsh-syntax-highlighting"

# compinit
# autoload -Uz compinit
# compinit

# keybinds

bindkey '^ ' autosuggest-accept

# autoload -U up-line-or-beginning-search
# autoload -U down-line-or-beginning-search
# autoload -U forward-word
# autoload -U backward-word
# zle -N up-line-or-beginning-search
# zle -N down-line-or-beginning-search
# zle -N forward-word
# zle -N vi-forward-word
# zle -N backward-word
#
# bindkey -v
#
# bindkey "^j" down-line-or-beginning-search # Down
# bindkey "^k" up-line-or-beginning-search
# bindkey "^w" forward-word
# bindkey -s "^b" backward-word

# source "$ZDOTDIR/zsh-vim-mode"

export PATH="$HOME/.local/bin":$PATH

# zprof
