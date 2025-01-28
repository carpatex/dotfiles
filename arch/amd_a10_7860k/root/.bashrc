[[ $- != *i* ]] && return

set -o vi
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls --color=auto -Ahls'
alias less='less -R'
shopt -s histverify
BLUE="\[\033[1;34m\]"
GREEN="\[\033[1;32m\]"
CYAN="\[\033[1;36m\]"
RED="\[\033[1;31m\]"
NC="\[\033[0m\]"

#colored prompt without git
#PS1="[${GREEN}\\u@\\h${NC} ${BLUE}\\W${NC}]${RED}\\$ ${NC}"

#default arch prompt
PS1="[\\u@\\h \\W]\\$ "
unset NC BLUE GREEN CYAN RED
