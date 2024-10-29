alias ..='cd ..'
alias ...='cd ../..'

alias venv_activate='source .venv/bin/activate'

HOST_ALIAS=~/.host_alias.zsh
[[ -f $HOST_ALIAS ]] && . $HOST_ALIAS
