autoload -U promptinit # initialize the prompt system 
promptinit

autoload -U compinit && compinit
autoload -Uz zcalc

export PS1="%13F%m%f%11F%~%f\$ "
# export PS1="%K{yellow}%n%k@%n:%~/>"

setopt PROMPT_SUBST # make prompt vanilla shell variable
setopt HIST_VERIFY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt NO_BEEP
setopt EXTENDED_GLOB
setopt autocd
# setopt OVERSTRIKE
# setopt SINGLELINEZLE


bindkey -e
bindkey ' ' magic-space

# alias vim='nvim'
# export EDITOR='nvim'

alias ..='cd ..'

[[ -f ~/.zsh_functions ]] && source ~/.zsh_functions
