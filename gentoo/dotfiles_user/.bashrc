#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls --color=auto -Ahls'
set -o vi
shopt -s histverify
. /usr/share/git/git-prompt.sh
BLUE="\[\033[1;34m\]"
GREEN="\[\033[1;32m\]"
CYAN="\[\033[1;36m\]"
RED="\[\033[1;31m\]"
NC="\[\033[0m\]"


#colored prompt with git
PS1="${GREEN}\\u@\\h${NC} ${BLUE}\\W${NC}${CYAN}\$(GIT_PS1_SHOWDIRTYSTATE=1 GIT_PS1_SHOWSTASHSTATE=1 GIT_PS1_SHOWUNTRACKEDFILES=1 __git_ps1 \" (%s)\")${NC} ${BLUE}\\$ ${NC}"

#colored prompt without git
#PS1="${GREEN}\\u@\\h${NC} ${BLUE}\\W \\$ ${NC}"

#git prompt without colors
#PS1="\\u@\\h \\W\$(GIT_PS1_SHOWDIRTYSTATE=1 GIT_PS1_SHOWSTASHSTATE=1 GIT_PS1_SHOWUNTRACKEDFILES=1 __git_ps1 \" (%s)\") ${BLUE}\\$ ${NC}"

#default gentoo prompt without colors
#PS1=" \\u@\\h \\W \\$ "
unset NC BLUE GREEN CYAN RED
