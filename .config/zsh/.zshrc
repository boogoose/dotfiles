#!/bin/sh
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

export ZDOTDIR=$HOME/.config/zsh

# history
HISTFILE=$XDG_DATA_HOME/zsh/history
HISTSIZE=1000000
SAVEHIST=1000000

# source
source "$HOME/.config/shell/Shell_Aliases"
source "$HOME/.config/shell/Shell_Exports"

# eval
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# plugins
plug "esc/conda-zsh-completion"
plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"
plug "zap-zsh/supercharge"
plug "zap-zsh/vim"
plug "zap-zsh/zap-prompt"
plug "zap-zsh/fzf"
plug "zap-zsh/exa"
plug "zsh-users/zsh-syntax-highlighting"

# keybinds
bindkey '^ ' autosuggest-accept

# export PATH="$HOME/.local/bin":$PATH
fpath+=$HOME/.config/zsh/conda-zsh-completion/

# if command -v bat &> /dev/null; then
#   alias cat="bat -pp --theme \"Visual Studio Dark+\"" 
#   alias catt="bat --theme \"Visual Studio Dark+\"" 
# fi
