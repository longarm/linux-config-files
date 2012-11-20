#-----------------------------
# autocompletion settings
#-----------------------------

# enable autocompletion
autoload -U compinit
compinit

# autocompletion with an arrow-key driven interface
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%Bmomo, no matches for: %d%b'

# autocompletion of command line switches for aliases
setopt completealiases

# command correction
setopt correctall

#-----------------------------
# history settings
#-----------------------------

export HISTSIZE=1024
export HISTFILE="$HOME/.history"

# history won't be saved without this line
export SAVEHIST=$HISTSIZE

# ignore of duplicates
setopt hist_ignore_all_dups

# prevent particular entry from being recorded
setopt hist_ignore_space

#-----------------------------
# alias
#-----------------------------
alias ls='ls --color=auto -F'
alias grep='grep --color=auto'
alias l='ls -l'
alias la='ls -a'
alias ll='ls -la'
alias lh='ls -lh'
alias ..='cd ..'
alias path='echo -e ${PATH//:/\\n}'
alias sai='sudo apt-get install'
alias aps='aptitude search'

#-----------------------------
# customize prompt
#-----------------------------

# load color aliases
autoload colors && colors
blue="%{${fg[blue]}%}"
BLUE="%{${fg_bold[blue]}%}"
red="%{${fg[red]}%}"
RED="%{${fg_bold[red]}%}"
green="%{${fg[green]}%}"
GREEN="%{${fg_bold[green]}%}"
cyan="%{${fg[cyan]}%}"
CYAN="%{${fg_bold[cyan]}%}"
magenta="%{${fg[magenta]}%}"
MAGENTA="%{${fg_bold[magenta]}%}"
yellow="%{${fg[yellow]}%}"
YELLOW="%{${fg_bold[yellow]}%}"
white="%{${fg[white]}%}"
WHITE="%{${fg_bold[white]}%}"
NO_COLOR="%{${reset_color}%}"

PROMPT="$GREEN%n@%M $BLUE%~ $GREEN$ $NO_COLOR"
RPROMPT="%?"

# vim: ts=4
