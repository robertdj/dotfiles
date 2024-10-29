# Color support; needed for vim-airline
export TERM='xterm-256color'

export EDITOR="vim"
export VIMHOME="$HOME/.vim"

export JULIA_NUM_THREADS=4

HOST_ENVVAR=~/.host_envvar.zsh
[[ -f $HOST_ENVVAR ]] && . $HOST_ENVVAR
