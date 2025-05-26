[[ $- != *i* ]] && return

set -o vi
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls --color=auto -Ahls'
shopt -s histverify
