#
# ~/.zshrc
#

#basic config
autoload -Uz compinit
autoload -Uz vcs_info
autoload -Uz add-zsh-hook
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zmodload zsh/complist
compinit
setopt completealiases
setopt prompt_subst
bindkey -v


# git prompt config (vcs_info)
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
zstyle ':vcs_info:*' formats ' (%b%u%c)'
zstyle ':vcs_info:*' actionformats ' (%b|%a%u%c)'
add-zsh-hook precmd vcs_info
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
zstyle ':completion:*' menu select

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

#zsh history 
HISTFILE=~/.zsh_history
HISTSIZE=8192
SAVEHIST=$HISTSIZE

#different prompts and rprompts

#PROMPT="%B%F{green}%n@%m%f%b:%B%F{blue}%~%f%F{cyan}\${vcs_info_msg_0_}%f%(!.%F{red}#%f%b.%b%%) "
#PROMPT="[%B%F{green}%n@%m%f%b %B%F{blue}%~%f%F{cyan}\${vcs_info_msg_0_}%f%b]%(!.%B%F{red}#%f%b.%%) "

#PROMPT="%B%F{green}%n@%m%f%b:%B%F{blue}%~%f%F{cyan}\${vcs_info_msg_0_}%f
#%(!.%F{red}#%f%b.%b%%) "
#PROMPT="[%B%F{green}%n@%m%f%b %B%F{blue}%~%f%F{cyan}\${vcs_info_msg_0_}%f%b]
#%(!.%B%F{red}#%f%b.%%) "

#PROMPT="%B%F{green}%n@%m%f%b:%B%F{blue}%~%f%(!.%F{red}#%f%b.%b%%) "
PROMPT="[%B%F{green}%n@%m%f%b %B%F{blue}%~%f%b]%(!.%B%F{red}#%f%b.%%) "

RPROMPT="%B%F{cyan}\${vcs_info_msg_0_}%f%b"

#without colors

#PROMPT="%n@%m:%~\${vcs_info_msg_0_}%(!.#.%%) "
#PROMPT="[%n@%m %~\${vcs_info_msg_0_}]%(!.#.%%) "

#PROMPT="%n@%m:%~\${vcs_info_msg_0_}
#%(!.#.%%) "
#PROMPT="[%n@%m %~\${vcs_info_msg_0_}]
#%(!.#.%%) "

#PROMPT="%n@%m:%~%(!.#.%%) "
#PROMPT="[%n@%m %~]%(!.#.%%) "

#RPROMPT="\${vcs_info_msg_0_}"


#aliases

function xterm_title_precmd () {
	print -Pn -- '\e]2;%n@%m:%~\${vcs_info_msg_0_}\a'
#	print -Pn -- '\e]2;%n@%m:%~\a'
	[[ "$TERM" == 'screen'* ]] && print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-}\e\\'
}

function xterm_title_preexec () {
	print -Pn -- '\e]2;%n@%m:%~\${vcs_info_msg_0_}%# ' && print -n -- "${(q)1}\a"
# print -Pn -- '\e]2;%n@%m:%~%# ' && print -n -- "${(q)1}\a"
	[[ "$TERM" == 'screen'* ]] && { print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-} %# ' && print -n -- "${(q)1}\e\\"; }
}

if [[ "$TERM" == (Eterm*|alacritty*|aterm*|foot*|gnome*|konsole*|kterm*|putty*|rxvt*|screen*|wezterm*|tmux*|xterm*) ]]; then
	add-zsh-hook -Uz precmd xterm_title_precmd
	add-zsh-hook -Uz preexec xterm_title_preexec
fi

alias ls='ls --color=auto'
alias dir='dir --color=auto -hls'
alias ll='ls -Ahls'
alias grep='grep --color=auto'
alias less='less -R'
. /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
